From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #42669] 3.3-rc1: compiling problems nvme , l2cap_sock ,
 mc13892-regulator , and snd-pcsp don't work
Date: Thu, 23 Feb 2012 18:19:04 -0500 (EST)
Message-ID: <20120223.181904.501214130038312055.davem@davemloft.net>
References: <y44pDJ8xoDC.A.08E.h8rRPB@chimera>
	<qCQH7HfZS8E.A.FVG.M9rRPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <qCQH7HfZS8E.A.FVG.M9rRPB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org, w.landgraf-ow1r9FSYgO0@public.gmane.org

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Date: Thu, 23 Feb 2012 23:51:25 +0100 (CET)

> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 3.2.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=42669
> Subject		: 3.3-rc1: compiling problems  nvme , l2cap_sock , mc13892-regulator , and snd-pcsp don't work
> Submitter	: werner <w.landgraf-ow1r9FSYgO0@public.gmane.org>
> Date		: 2012-01-20 18:52 (35 days old)
> Message-ID	: <web-682421181-zcyLqNHFQq3Ee+7He9zlJw@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=132708923719565&w=2

The l2cap_sock problem is fixed in the net GIT tree by commit:

--------------------
commit 4aa832c27edf902130f8bace1d42cf22468823fa
Author: Johan Hedberg <johan.hedberg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date:   Sun Jan 8 22:51:16 2012 +0200

    Bluetooth: Remove bogus inline declaration from l2cap_chan_connect
    
    As reported by Dan Carpenter this function causes a Sparse warning and
    shouldn't be declared inline:
    
    include/net/bluetooth/l2cap.h:837:30 error: marked inline, but without a
    definition"
    
    Reported-by: Dan Carpenter <dan.carpenter-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
    Signed-off-by: Johan Hedberg <johan.hedberg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
    Acked-by: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>

diff --git a/include/net/bluetooth/l2cap.h b/include/net/bluetooth/l2cap.h
index 68f5891..124f7cf 100644
--- a/include/net/bluetooth/l2cap.h
+++ b/include/net/bluetooth/l2cap.h
@@ -834,7 +834,7 @@ int l2cap_add_scid(struct l2cap_chan *chan,  __u16 scid);
 struct l2cap_chan *l2cap_chan_create(struct sock *sk);
 void l2cap_chan_close(struct l2cap_chan *chan, int reason);
 void l2cap_chan_destroy(struct l2cap_chan *chan);
-inline int l2cap_chan_connect(struct l2cap_chan *chan, __le16 psm, u16 cid,
+int l2cap_chan_connect(struct l2cap_chan *chan, __le16 psm, u16 cid,
 								bdaddr_t *dst);
 int l2cap_chan_send(struct l2cap_chan *chan, struct msghdr *msg, size_t len,
 								u32 priority);
diff --git a/net/bluetooth/l2cap_core.c b/net/bluetooth/l2cap_core.c
index faf0b11..980abdb 100644
--- a/net/bluetooth/l2cap_core.c
+++ b/net/bluetooth/l2cap_core.c
@@ -1120,7 +1120,7 @@ static struct l2cap_chan *l2cap_global_chan_by_psm(int state, __le16 psm, bdaddr
 	return c1;
 }
 
-inline int l2cap_chan_connect(struct l2cap_chan *chan, __le16 psm, u16 cid, bdaddr_t *dst)
+int l2cap_chan_connect(struct l2cap_chan *chan, __le16 psm, u16 cid, bdaddr_t *dst)
 {
 	struct sock *sk = chan->sk;
 	bdaddr_t *src = &bt_sk(sk)->src;
