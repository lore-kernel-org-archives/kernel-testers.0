From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Fri, 08 Aug 2008 04:18:14 -0700 (PDT)
Message-ID: <20080808.041814.41687650.davem@davemloft.net>
References: <a4423d670808080314weed9178o9f9ef52803a68501@mail.gmail.com>
	<20080808.033811.129671951.davem@davemloft.net>
	<a4423d670808080356r6573102am8a1eb9dcc83910c8@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670808080356r6573102am8a1eb9dcc83910c8-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: mikpe-1zs4UD6AkMk@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Fri, 8 Aug 2008 14:56:35 +0400

> 2008/8/8 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
> >> Yes, I applied it manually on top of 2.6.27-rc2-0166
> >
> > And then the problem goes away right?
> >
> No, It hangs in the same way, right after
> console handover: boot [earlyprom0] -> real [tty0]

Please edit arch/sparc64/kernel/setup.c, where it says:

static struct console prom_early_console = {
	.name =		"earlyprom",
	.write =	prom_console_write,
	.flags =	CON_PRINTBUFFER | CON_BOOT | CON_ANYTIME,
	.index =	-1,
};

and remove "CON_BOOT |".

This will allow you to see the crash message.

Please also double check that you patched the kernel with my
fix correctly.  I used your exact config, on the exact same
kind of system, reproducing the exact same hang, and it goes
away with my fix.
