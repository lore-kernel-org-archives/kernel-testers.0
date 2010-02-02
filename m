From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14949] drm_vm.c:drm_mmap: possible circular locking dependency detected
Date: Tue, 2 Feb 2010 21:46:45 +0100
Message-ID: <201002022146.45078.rjw@sisk.pl>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera> <d3IDKWHT5gE.A.DLD.q8hZLB@chimera> <9ea470501002011001s7734a20ft4dd5d181baf714c3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <9ea470501002011001s7734a20ft4dd5d181baf714c3-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, "Eric W. Biederman" <ebiederm-BGArkANP9klv6pq1l3V1OdBPR1lH4CV8@public.gmane.org>

On Monday 01 February 2010, Borislav Petkov wrote:
> On Mon, Feb 1, 2010 at 1:22 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=14949
> > Subject         : drm_vm.c:drm_mmap: possible circular locking dependency detected
> > Submitter       : Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> > Date            : 2009-12-26 9:45 (37 days old)
> > References      : http://marc.info/?l=linux-kernel&m=126182073616279&w=4
> > Handled-By      : Eric W. Biederman <ebiederm-BGArkANP9klv6pq1l3V1OdBPR1lH4CV8@public.gmane.org>
> > Patch           : http://patchwork.kernel.org/patch/70461/
> 
> Yes, this is fixed.

Do you mean "fixed" as "the fix is in the Linus' tree" or "fixed" as "the
patch fixed it for me"?

Rafael
