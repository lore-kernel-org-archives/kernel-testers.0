From: Bob Copeland <me-aXfl/3sk2vNUbtYUoyoikg@public.gmane.org>
Subject: Re: [Bug #12490] ath5k related kernel panic in 2.6.29-rc1
Date: Tue, 7 Apr 2009 20:46:44 -0400
Message-ID: <20090408004644.GB28096@hash.localnet>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera> <AsKNxFx2juN.A.GaD.UJn2JB@chimera> <20090407024021.GA26739@hash.localnet> <1239098625.22453.6.camel@johannes.local>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1239098625.22453.6.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Sergey S. Kostyliov" <rathamahata-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Felix Fietkau <nbd-p3rKhJxN3npAfugRpC6u6w@public.gmane.org>

On Tue, Apr 07, 2009 at 12:03:45PM +0200, Johannes Berg wrote:
> 
> > Anyway here's a patch to buy some time.  Johannes, would this be
> > an acceptable band-aid for now?
> 
> This is going to make it print two warnings for one occurrence of the
> problem though. I'd much prefer to put something into minstrel.c to
> catch when _it_ returns bogus values and in that case return 0, that way
> at least the bandaid is restricted to the code it patches up.

Ok, then maybe something like this?

I think this covers most of the bases: if the driver is returning crap or
the ->cb gets corrupted, it'll get caught in tx_status.  If minstrel
stuffs a -1 in the first slot for any other reason we'll get a warning
before get_tx_rate and a hopefully valid index gets substituted.

diff --git a/net/mac80211/rc80211_minstrel.c b/net/mac80211/rc80211_minstrel.c
index 3824990..1cf7152 100644
--- a/net/mac80211/rc80211_minstrel.c
+++ b/net/mac80211/rc80211_minstrel.c
@@ -181,6 +181,11 @@ minstrel_tx_status(void *priv, struct ieee80211_supported_band *sband,
 		if (ar[i].idx < 0)
 			break;
 
+		if (WARN(ar[i].idx >= mi->n_rates,
+		    "minstrel: invalid rate report %d (n=%d)\n",
+		    ar[i].idx, mi->n_rates))
+			break;
+
 		ndx = rix_to_ndx(mi, ar[i].idx);
 		mi->r[ndx].attempts += ar[i].count;
 
@@ -328,7 +333,7 @@ minstrel_get_rate(void *priv, struct ieee80211_sta *sta,
 			ar[0].count = mp->max_retry;
 		ar[1].idx = mi->lowest_rix;
 		ar[1].count = mp->max_retry;
-		return;
+		goto done;
 	}
 
 	/* MRR setup */
@@ -346,6 +351,10 @@ minstrel_get_rate(void *priv, struct ieee80211_sta *sta,
 		ar[i].idx = mi->r[mrr_ndx[i - 1]].rix;
 		ar[i].count = mi->r[mrr_ndx[i - 1]].adjusted_retry_count;
 	}
+
+done:
+	if (WARN_ON(ar[0].idx < 0))
+		ar[0].idx = rate_lowest_index(sband, sta);
 }
 
 

-- 
Bob Copeland %% www.bobcopeland.com
