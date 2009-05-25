From: Lennert Buytenhek <buytenh-OLH4Qvv75CYX/NnBR394Jw@public.gmane.org>
Subject: Re: [Bug #13293] Kernel BUG under network load with gianfar
Date: Mon, 25 May 2009 03:42:53 +0200
Message-ID: <20090525014253.GA14371@mail.wantstofly.org>
References: <ZPPBiNHr1LC.A.9ZH.K9bGKB@chimera> <uSztiUhmDDC.A.Y_.99bGKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <uSztiUhmDDC.A.Y_.99bGKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andy Fleming <afleming-KZfg59tc24xl57MIdRCFDg@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Michael Guntsche <mike-Z92qn3yYq0hWk0Htik3J/w@public.gmane.org>

On Sun, May 24, 2009 at 09:11:52PM +0200, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13293
> Subject		: Kernel BUG under network load with gianfar
> Submitter	: Michael Guntsche <mike-Z92qn3yYq0hWk0Htik3J/w@public.gmane.org>
> Date		: 2009-05-03 13:36 (22 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=0fd56bb5be6455d0d42241e65aed057244665e5e
> References	: http://marc.info/?l=linux-kernel&m=124135824600924&w=4
> Handled-By	: Lennert Buytenhek <buytenh-OLH4Qvv75CYX/NnBR394Jw@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/25518/

The proposed patch has yet to be ACKed by the maintainer/merged, so
yes, this regression should still be listed.
