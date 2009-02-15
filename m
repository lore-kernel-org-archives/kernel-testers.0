From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12617] unable to compile e100 firmware into kernel
Date: Sun, 15 Feb 2009 22:09:24 +0100
Message-ID: <200902152209.25361.rjw@sisk.pl>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <1234719496.4738.19.camel@macbook.infradead.org> <200902152259.00244.arvidjaar@mail.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902152259.00244.arvidjaar-JGs/UdohzUI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
Cc: David Woodhouse <dwmw2-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Brandeburg <jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sunday 15 February 2009, Andrey Borzenkov wrote:
> On 15 of February 2009 20:38:15 David Woodhouse wrote:
> > On Sat, 2009-02-14 at 21:38 +0100, Rafael J. Wysocki wrote:
> > >  This message has been generated automatically as a part of a
> > > report of recent regressions.
> > >
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.28.  Please verify if it still should be listed and let me
> > > know (either way).
> > >
> > >
> > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12617
> > > Subject         : unable to compile e100 firmware into kernel
> > > Submitter       : Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
> > > Date            : 2009-01-31 15:59 (15 days old)
> > > References      :
> > > http://marc.info/?l=linux-kernel&m=123341764915181&w=4
> >
> > I thought this was resolved?
> 
> I guess it has to be closed. This was caused by config options mismatch 
> and I do not see how we can programmatically express "this device could 
> be required before any (even early) user space is available, so make 
> sure everything that this device needs is built in".
> 
> One possibility is following:
> 
> --- drivers/base/Kconfig.orig 2009-01-17 14:46:28.000000000 +0300
> +++ drivers/base/Kconfig        2009-02-15 22:57:02.000000000 +0300
> @@ -37,7 +37,7 @@ config FW_LOADER
> 
>  config FIRMWARE_IN_KERNEL
>         bool "Include in-kernel firmware blobs in kernel binary"
> -       depends on FW_LOADER
> +       depends on FW_LOADER = y
>         default y
>         help
>           The kernel source tree includes a number of firmware 'blobs'
> 
> On assumption that compiling firmware in kernel makes no sense as long 
> as kernel does not even have facility to actually access it.
> 
> Does it make sense?

Guess so.

I've closed the bug.

Thanks,
Rafael
