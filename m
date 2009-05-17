From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13172] Spontaneous reboots since 2.6.29-rc*
Date: Sun, 17 May 2009 12:23:59 +0200
Message-ID: <200905171224.00249.rjw@sisk.pl>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.QrG.PA0DKB@chimera> <8db1092f0905170053k5ccd8903k7b6d203dd349daeb@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <8db1092f0905170053k5ccd8903k7b6d203dd349daeb-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sunday 17 May 2009, Maciej Rutecki wrote:
> 2009/5/16 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.28 and 2.6.29.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13172
> > Subject         : Spontaneous reboots since 2.6.29-rc*
> > Submitter       : Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2009-04-17 17:03 (30 days old)
> > References      : http://marc.info/?l=linux-kernel&m=123998788921733&w=4
> >
> >
> 
> I try:
> CONFIG_MTRR_SANITIZER=y
> CONFIG_MTRR_SANITIZER_ENABLE_DEFAULT=1
> CONFIG_MTRR_SANITIZER_SPARE_REG_NR_DEFAULT=1
> 
> from:
> http://marc.info/?l=linux-kernel&m=124022460715035&w=4
> 
> Spontaneous reboots occur less often than in previous .config. From
> last report it occur once or twice. I think, it's hardware/bios/mtrr
> issue.
> 
> Because of this I think we should remove this regression from list,
> until I find out, why it happen, or more people report this. What do
> You think?

I've closed the bug.  Pleaes reopen it once you've found the root cause.

Thanks,
Rafael
