From: Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>
Subject: Re: [Bug #16971] qla4xxx compile failure on 32-bit PowerPC: missing
 readq and writeq
Date: Wed, 22 Sep 2010 11:50:03 +0300 (EEST)
Message-ID: <alpine.SOC.1.00.1009221148550.14750@math.ut.ee>
References: <1fwtoy8sG5H.A.veG.9D7lMB@chimera> <Wn2eLj_6KZG.A.SpH.KF7lMB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Wn2eLj_6KZG.A.SpH.KF7lMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16971
> Subject		: qla4xxx compile failure on 32-bit PowerPC: missing readq and writeq
> Submitter	: Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>
> Date		: 2010-08-19 21:03 (33 days old)
> Message-ID	: <alpine.SOC.1.00.1008192359310.19654-ptEonEWSGqKptlylMvRsHA@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=128225184900892&w=2

Still present. The maintainer of the driver has a patch that I have 
tested, and for quite some time now, but it still does not appear in 
mainline.

-- 
Meelis Roos (mroos-Y27EyoLml9s@public.gmane.org)
