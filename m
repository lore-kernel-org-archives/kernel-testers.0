From: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.29-rc8: Reported regressions from 2.6.28
Date: Wed, 18 Mar 2009 01:27:41 +0800
Message-ID: <b6a2187b0903171027w328f1dfds781910c0571b2424@mail.gmail.com>
References: <1237143683.24621.7.camel@johannes.local>
	 <b6a2187b0903160624gb9d207dv301506e589d93ed4@mail.gmail.com>
	 <alpine.LFD.2.00.0903161250080.3082@localhost.localdomain>
	 <b6a2187b0903161655q15437156qc926c8db37d8ba4b@mail.gmail.com>
	 <20090317144802.GF3549@tuxdriver.com>
	 <20090317152801.GA6737@tuxdriver.com> <20090317153924.GA21061@elte.hu>
	 <20090317160527.GB6737@tuxdriver.com>
	 <b6a2187b0903170924u72723220x4c0a717e3cfebf8d@mail.gmail.com>
	 <20090317171047.GF6737@tuxdriver.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=aUaXvqY5xNQzN3KlpENMIA+ntklLS2WM2H36DSIyRDc=;
        b=J3fWeG4mB7Xh/aU/d9gQ1fR/88xWK0540IuusvHcscfQAdilakjqPALWZ3Gewqb1XY
         MWZu45/U9ogOGkbmwRNjx24+75uzOxVqpgxZ0DkrZ/NW0qs3eXVAfelgr9JQFenGIQjZ
         2gNZSlzj/N9FQ8dIf73m9rXB6VLBA/7YdeX2Y=
In-Reply-To: <20090317171047.GF6737-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Network Development <netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, Mar 18, 2009 at 1:10 AM, John W. Linville
> Works for me...I even re-downloaded the patch from bugzilla.
> commit 18439c39e826191c0ef08c3a3271ce7ece46a860
> Merge: 9e8912e... b35f8ca...
> Author: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> Date: =A0 Tue Mar 17 08:59:33 2009 -0700

Same.

> [linville-t400.local]:> patch -p1 < revert-remove-ssid-knowledge-from=
-driver-series.patch
> patching file drivers/net/wireless/adm8211.c
> patching file drivers/net/wireless/adm8211.h
> patching file drivers/net/wireless/b43/main.c
> patching file drivers/net/wireless/b43legacy/main.c
> patching file drivers/net/wireless/iwlwifi/iwl-3945.h
> patching file drivers/net/wireless/iwlwifi/iwl-agn.c
> patching file drivers/net/wireless/iwlwifi/iwl-dev.h
> patching file drivers/net/wireless/iwlwifi/iwl-scan.c
> patching file drivers/net/wireless/iwlwifi/iwl3945-base.c
> patching file include/net/mac80211.h
> patching file net/mac80211/ieee80211_i.h
> patching file net/mac80211/main.c
> patching file net/mac80211/mlme.c
> patching file net/mac80211/wext.c
>
> Perhaps you have a dirty tree?
>        git checkout -f

May be. Checking now.

> Does that help?

Definitely. Even with the failing chunks, and I copied back the old
wext.c from 2.6.28-rc3, and now my wireless is associating to the
hidden AP on 2.6.29-rc8. I tried just a few times, and it's ok so far.
I'll have to pit against the WAG200G that seems to have a worse
behavior tomorrow. ... anyway, this is all good. With the patch, it's
_impossible_ to "auto" associate to the AP.  Definitely on the right
track!

Thanks,
Jeff.
