From: Johannes Weiner <hannes-druUgvl0LCNAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #12501] build bug in eeepc-laptop.c
Date: Sun, 8 Mar 2009 04:58:40 +0100
Message-ID: <20090308035840.GA5802@cmpxchg.org>
References: <KiHv0irKPzE.A.l3.hUarJB@chimera> <SLCXkuHtxAO.A.nSG.-WarJB@chimera> <84144f020903040102o1ddc6ee7l31bf4cf928092773@mail.gmail.com> <200903072231.30667.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200903072231.30667.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On Sat, Mar 07, 2009 at 10:31:30PM +0100, Rafael J. Wysocki wrote:
> On Wednesday 04 March 2009, Pekka Enberg wrote:
> > On Tue, Mar 3, 2009 at 9:25 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > >
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.28.  Please verify if it still should be listed and let me know
> > > (either way).
> > >
> > >
> > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12501
> > > Subject         : build bug in eeepc-laptop.c
> > > Submitter       : Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> > > Date            : 2009-01-14 17:25 (49 days old)
> > > References      : http://lkml.org/lkml/2009/1/14/315
> > 
> > There's seems to be a patch for the bug here:
> > 
> > http://bugzilla.kernel.org/attachment.cgi?id=20341&action=view
> 
> Thanks, updated.

This fix is upstream: 3a5093ee6728c8cbe9c039e685fc1fca8f965048
