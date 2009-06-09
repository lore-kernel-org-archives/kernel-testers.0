From: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13116] Can't boot with nosmp
Date: Tue, 9 Jun 2009 13:58:46 -0700
Message-ID: <20090609135846.43260595@nehalam>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	<D9VoutSOyXP.A.xm.Vb7KKB@chimera>
	<20090608091544.53a94235@nehalam>
	<e9c3a7c20906080929l1a4ec739t7585f6bba54bf684@mail.gmail.com>
	<20090608170437.1c2386a5@nehalam>
	<e9c3a7c20906091020m19abf3b5wbbb7f5364b2d4905@mail.gmail.com>
	<4A2EAA53.7060006@redhat.com>
	<20090609113656.46ed6335@nehalam>
	<4A2EAD2F.5010505@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A2EAD2F.5010505-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, 09 Jun 2009 21:42:55 +0300
Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:

> Stephen Hemminger wrote:
> 
>   
> 
> >> This only affects reboots.  But yes, the cpumask code has bugs.  Does 
> >> the .config involved select MAXSMP?
> >>
> >>     
> >
> > Patch does not fix the problem. Not sure if it is KVM only problem.
> > Look like possible cpumask always equals what ACPI / SMP tables report.
> > So currently looking into alloc_percpu which may not handle the possible
> > but never used cpus.
> >
> >   
> 
> Right, it shouldn't have.
> 
> > It is x86-64 config and does not have MAXSMP set. It does have NR_CPUS set.
> >   
> 
> So it's not cpumask.  Dare I suggest a bisect?
> 

I did some testing of different versions.

* Problem does not exist with 2.6.30-rc8 (so regression should be closed).

* Problem does exist with 2.6.29.4

* Happens with both nosmp and maxcpus=1


Given that it is fixed in 2.6.30, at this point there really is no urgency
to spend more time investigating the issue. There are certainly bigger problems
to deal with.

-- 
