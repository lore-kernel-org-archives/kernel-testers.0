From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14256] kernel BUG at fs/ext3/super.c:435
Date: Sat, 10 Oct 2009 00:03:24 +0200
Message-ID: <200910100003.25026.rjw@sisk.pl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <19145.10741.402938.867088@pilspetsen.it.uu.se> <19151.26501.727411.584056@pilspetsen.it.uu.se>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19151.26501.727411.584056-tgku4HJDRZih8lFjZTKsyTAV6s6igYVG@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Friday 09 October 2009, Mikael Pettersson wrote:
> Mikael Pettersson writes:
>  > Rafael J. Wysocki writes:
>  >  > On Sunday 04 October 2009, Mikael Pettersson wrote:
>  >  > > Rafael J. Wysocki wrote:
>  >  > > > The following bug entry is on the current list of known regressions
>  >  > > > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
>  >  > > > be listed and let me know (either way).
>  >  > > > 
>  >  > > > 
>  >  > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14256
>  >  > > > Subject		: kernel BUG at fs/ext3/super.c:435
>  >  > > > Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
>  >  > > > Date		: 2009-09-21 7:29 (11 days old)
>  >  > > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125351816109264&w=3D4
>  >  > > 
>  >  > > The exact same bug (same cause, same symptom) just hit me again in 2.6.32-rc1.
>  >  > 
>  >  > Thanks for the update.
>  >  > 
>  >  > Could you check the current Linus' tree, please?  There are some known
>  >  > regression fixes in there.
>  > 
>  > I tried simplified versions of the bug trigger on two machines
>  > running 2.6.32-rc1-git6, and neither triggered the kernel bug.
>  > 
>  > The original recipe involved doing a glibc rebuild, run its test
>  > suite, install it, and reboot. Today however machine 1 was already
>  > doing a rebuild so after the rebuild it did a reboot into the new
>  > kernel before the install. The second machine booted the new kernel
>  > directly to install the binary packages from the first machine.
>  > 
>  > I'll re-run the full bug trigger recipe on a third machine later next
>  > week (it must rebuild glibc itself anyway due to arch differences).
> 
> Not fixed in 2.6.32-rc3. A glibc rebuild + install triggered the
> exact same bug on the third machine.

Thanks for the update.

Rafael
