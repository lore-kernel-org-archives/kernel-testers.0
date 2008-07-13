From: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #10724] ACPI: EC: GPE storm detected, disabling EC GPE
Date: Sun, 13 Jul 2008 21:27:10 +0100 (BST)
Message-ID: <Pine.LNX.4.64.0807132122001.16625@blonde.site>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>  <c6ZRbn0adb.A.LgB.aKleIB@albercik>
  <dd18b0c30807131234n5edf3e1dt93022a45d427b1fd@mail.gmail.com>
 <19f34abd0807131252k5499e6e2sc93f8cd70f488b7e@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19f34abd0807131252k5499e6e2sc93f8cd70f488b7e-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexey Starikovskiy <astarikovskiy-l3A5Bk7waGM@public.gmane.org>

On Sun, 13 Jul 2008, Vegard Nossum wrote:
> On Sun, Jul 13, 2008 at 9:34 PM, Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > On Sun, Jul 13, 2008 at 6:00 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> >> This message has been generated automatically as a part of a report
> >> of recent regressions.
> >>
> >> The following bug entry is on the current list of known regressions
> >> from 2.6.25.  Please verify if it still should be listed.
> >>
> >>
> >> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=10724
> >> Subject         : ACPI: EC: GPE storm detected, disabling EC GPE
> >> Submitter       : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> Date            : 2008-05-16 6:17 (59 days old)
> >> References      : http://marc.info/?l=linux-kernel&m=121091875711824&w=4
> >>                  http://lkml.org/lkml/2008/5/18/168
> >>                  http://lkml.org/lkml/2008/5/25/195
> >> Patch           : http://bugzilla.kernel.org/attachment.cgi?id=16364&action=view
> >>                  http://bugzilla.kernel.org/attachment.cgi?id=16365&action=view
> 
> I didn't follow the discussion, but I may contribute the following information:
> 
> This message first appears in my logs on May 16. That was with kernel
> version 2.6.24.5-85.fc8. The kernel I used before that was
> 2.6.24.4-64.fc8 (May 3). My logs go back to November 8
> (2.6.23.1-42.fc8). So we can hardly consider this a regression since
> 2.6.25, but rather one since 2.6.24?
> 
> (I'll also note that this message appears quite infrequently here.
> Only 42 times in 219 boot-ups. So it would be hard to bisect, but I'm
> guessing the error was introduced somewhere between 2.6.24.4 and
> 2.6.24.5.)

You're comparing against Fedora kernels, which often contain
patches which haven't got into mainline yet.  As in this case.
Unless it used to be assembled from separate pieces, there was
no "GPE storm detected" message in 2.6.24.N or 2.6.25.N: it was
added in 2.6.26-rc1.

I sometimes see it too, on a Fujitsu-Siemens laptop.

Hugh
