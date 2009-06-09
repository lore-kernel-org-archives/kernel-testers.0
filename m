From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13116] Can't boot with nosmp
Date: Wed, 10 Jun 2009 01:19:36 +0200
Message-ID: <200906100119.37479.rjw@sisk.pl>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <4A2EAD2F.5010505@redhat.com> <20090609135846.43260595@nehalam>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090609135846.43260595@nehalam>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday 09 June 2009, Stephen Hemminger wrote:
> On Tue, 09 Jun 2009 21:42:55 +0300
> Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:
> 
> > Stephen Hemminger wrote:
> > 
> >   
> > 
> > >> This only affects reboots.  But yes, the cpumask code has bugs.  Does 
> > >> the .config involved select MAXSMP?
> > >>
> > >>     
> > >
> > > Patch does not fix the problem. Not sure if it is KVM only problem.
> > > Look like possible cpumask always equals what ACPI / SMP tables report.
> > > So currently looking into alloc_percpu which may not handle the possible
> > > but never used cpus.
> > >
> > >   
> > 
> > Right, it shouldn't have.
> > 
> > > It is x86-64 config and does not have MAXSMP set. It does have NR_CPUS set.
> > >   
> > 
> > So it's not cpumask.  Dare I suggest a bisect?
> > 
> 
> I did some testing of different versions.
> 
> * Problem does not exist with 2.6.30-rc8 (so regression should be closed).

Done.

Thanks,
Rafael
