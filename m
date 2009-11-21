From: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Subject: Re: [Bug #14256] kernel BUG at fs/ext3/super.c:435
Date: Sat, 21 Nov 2009 13:37:25 +0100
Message-ID: <19207.57093.690723.147782@pilspetsen.it.uu.se>
References: <ipicVA1QUFF.A.zWB.1mdALB@chimera>
	<OWmO9uyC1hM.A.HyC.IodALB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <OWmO9uyC1hM.A.HyC.IodALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>

Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14256
> Subject		: kernel BUG at fs/ext3/super.c:435
> Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> Date		: 2009-09-21 7:29 (57 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D125351816109264&w=3D4

Still occurs with kernel 2.6.32-rc8.

This time I only rebuilt the glibc src rpm, which also runs its
test suite, but I did not install the new glibc binaries before
the shutdown -r.
