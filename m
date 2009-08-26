From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Wed, 26 Aug 2009 22:53:47 +0200
Message-ID: <200908262253.47651.rjw@sisk.pl>
References: <JuOd1ZASH0B.A.YGB.0zGlKB@chimera> <Cg6cQYLdUxG.A.K-C.U2GlKB@chimera> <84144f020908252325p88178f2yb0a76e033352b78d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <84144f020908252325p88178f2yb0a76e033352b78d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>

On Wednesday 26 August 2009, Pekka Enberg wrote:
> Hi Rafael,
> 
> On Wed, Aug 26, 2009 at 12:05 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.29 and 2.6.30.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13319
> > Subject         : Page allocation failures with b43 and p54usb
> > Submitter       : Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> > Date            : 2009-04-29 21:01 (119 days old)
> > References      : http://marc.info/?l=linux-kernel&m=124103897101088&w=4
> >                  http://lkml.org/lkml/2009/6/7/136
> >                  http://lkml.org/lkml/2009/7/26/213
> > Handled-By      : Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> >                  David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> > Patch           : http://patchwork.kernel.org/patch/37655/
> 
> FYI, the fix (a new slub debugging option) is queued for 2.6.32 and we
> don't have plans to backport it to -stable because it depends on SLUB
> out-of-memory diagnostic patches and the problem doesn't affect
> production configs.

Thanks for the info, I've closed the bug as "will fix later".

Rafael
