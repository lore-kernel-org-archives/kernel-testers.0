From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: RE: [regression] x86-64, mem: Convert memmove() to assembly file
 and fix return value bug
Date: Fri, 25 Mar 2011 09:43:20 +0100
Message-ID: <1301042600.5608.1.camel@zwerg>
References: <1301041142.18891.3.camel@zwerg>
	 <493994B35A117E4F832F97C4719C4C04EC4068A8@orsmsx505.amr.corp.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <493994B35A117E4F832F97C4719C4C04EC4068A8-osO9UTpF0URqS6EAlXoojrfspsVTdybXVpNB7YpNyf8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Yu, Fenghua" <fenghua.yu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "H. Peter Anvin" <hpa-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>

Am Freitag, den 25.03.2011, 01:29 -0700 schrieb Yu, Fenghua:
> > -----Original Message-----
> > From: Alexey Fisher [mailto:bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org]
> > Sent: Friday, March 25, 2011 1:19 AM
> > To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> > Cc: Yu, Fenghua; H. Peter Anvin
> > Subject: [regression] x86-64, mem: Convert memmove() to assembly file
> > and fix return value bug
> > 
> > Hallo,
> > 
> > kernel fails to compile with this message:
> > linux-2.6/arch/x86/lib/memmove_64.c: No such file or directory
> > 
> > regression introduced by patch:
> > commit 9599ec0471deae24044241e2173090d2cbc0e899
> > Author: Fenghua Yu <fenghua.yu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> > Date:   Mon Jan 17 17:39:15 2011 -0800
> > x86-64, mem: Convert memmove() to assembly file and fix return value
> > bug
> 
> You need "make mrproper" to clean up dependency before you build a new kernel. Make is confused by previous memmove_64.S file.
> 
> There is a tip patch in fixdep.c to remove this kind of dependency. Seems that patch is not in upstream yet.
> 
> Thanks.

Thank you,
make mrproper, fixed it.

-- 
Regards,
        Alexey
