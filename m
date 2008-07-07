From: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Mon, 7 Jul 2008 15:05:03 +0200
Message-ID: <18546.5247.797478.66373@harpo.it.uu.se>
References: <20080620.162135.203810660.davem@davemloft.net>
	<a4423d670806201636n4f3d107bk290ed831eb5eefb4@mail.gmail.com>
	<a4423d670807070219s2dd43aaia29713f5076ecd0d@mail.gmail.com>
	<20080707.040126.178187777.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080707.040126.178187777.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

David Miller writes:
 > From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
 > Date: Mon, 7 Jul 2008 13:19:05 +0400
 > 
 > > Hi David
 > > 
 > > Is it possible to add some debug code to understand what is going on?
 > 
 > What do you want me to add?  The thing hangs and we have no idea
 > where since there are no messages on the console and the hang
 > happens before we have any kind of console output.
 > 
 > Why do you think I haven't been able to fix this yet?
 > 
 > Besides I'm too busy with some networking stuff to work at
 > all on this at the moment, so folks will just need to be
 > patient or do the grunt work of debugging this themselves.

My Ultra 5 (same mainboard as the Ultra 10) boots 2.6.26-rc9
just fine. So Alexander's problem is probably caused by .config
settings or his toolchain.

My working 2.6.26-rc9 .config and a boot log are available in
<http://user.it.uu.se/~mikpe/linux/ultra5/> in case someone wants
to use them as a starting point for debugging this problem.

The toolchain I used has gcc-4.3.1 and binutils-2.17.50.0.3.

/Mikael
