From: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Subject: Re: Intel BIOS - Corrupted low memory at ffff880000004200
Date: Fri, 10 Jul 2009 07:59:01 -0700
Message-ID: <4A575735.9050208@zytor.com>
References: <4A5210A2.2080301@fisher-privat.net> <4A52254F.8080103@fisher-privat.net> <20090708113949.GA8960@srcf.ucam.org> <20090710115238.GA8812@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090710115238.GA8812-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Richard A. Holden III" <aciddeath-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Ingo Molnar wrote:
> 
> So i'd really like to know what is happening there, instead of just 
> zapping support for 64K of RAM on the majority of Linux systems.
> 
> We might end up doing the same thing in the end (i.e. disable that 
> 64k of RAM) - but it should be an informed decision, not a wild stab 
> in the dark.
> 

Speaking as a boot loader author, I can let you know that these kinds of
problems are in no wise limited to suspend/resume.

Pretty much any time you're executing BIOS code you're going to have
*some* platform which has severe memory corruption somewhere.  This is
particularly painful for boot loaders, obviously, because the BIOS
corrupts the boot loader as it is running.  In most cases, there simply
isn't any way to prevent the corruption, and it's simply dumb luck that
you will boot most of the time.

And no, I don't think EFI is going to magically solve anything.  EFI
will just spread the same class of corruption problems over the entire
memory map.  It will reduce the density of such bugs -- in particular it
will eliminiate the "right offset, wrong segment" as well as "idiot
coding assembly" class of problems -- but it will not confine the ones
that can and will happen; it's still fundamentally a super-privileged
flat memory space.

The root cause seems to be a lack of verification practices in the BIOS
industry in the post-DOS era.  Back when DOS was still a commercially
significant system, the BIOS didn't just support the running OS, it also
directly supported running applications.  That put a relatively high bar
on how broken your BIOS could be and still have a viable platform.
These days, it doesn't look like neither the BIOS vendors nor the OEMs
necessarily even know how to QA, and since the BIOS industry is
relatively small and highly consolidated, if there isn't sufficient OEM
pressure it simply won't happen since there is no money in it.

The HDMI case is a good example -- that probably involved SMI being
triggered and the SMI code then clobbering a wild pointer.

	-hpa

-- 
H. Peter Anvin, Intel Open Source Technology Center
I work for Intel.  I don't speak on their behalf.
