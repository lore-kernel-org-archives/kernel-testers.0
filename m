From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #20172] 2.6.36-rc7 boot stalls unless nolapic_timer - Lenovo S12
Date: Fri, 19 Nov 2010 21:22:05 +0100
Message-ID: <201011192122.05570.rjw@sisk.pl>
References: <tTUH_XeInOH.A.dMF.c3b5MB@chimera> <t78YtCSuOqN.A.L-G.r4b5MB@chimera> <20101119150632.23e4b4af@boulder.homenet>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20101119150632.23e4b4af-PlFwYbz7hoIyinQH9hAyzg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Chris Vine <chris-TF6qbakwsgc2epGFuHBODCp2UmYkHbXO@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Friday, November 19, 2010, Chris Vine wrote:
> On Fri, 19 Nov 2010 00:53:35 +0100 (CET)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.35 and 2.6.36.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.35 and 2.6.36.  Please verify if it still
> > should be listed and let the tracking team know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20172
> > Subject		: 2.6.36-rc7 boot stalls unless nolapic_timer
> > - Lenovo S12 Submitter	: Chris Vine
> > <chris-TF6qbakwsgc2epGFuHBODCp2UmYkHbXO@public.gmane.org> Date		: 2010-10-10 12:59
> > (40 days old) Message-ID	:
> > <<20101010135912.76eb61b7-PlFwYbz7hoIyinQH9hAyzg@public.gmane.org>> References	:
> > http://marc.info/?l=linux-kernel&m=128671620721712&w=2
> 
> This bug is still present in 2.6.37-rc2, but (as the original reporter)
> I now doubt it should be classified as a regression.  It looked as if
> it was a regression because in the 2.6.35 kernel (the first kernel to
> include intel idle), intel idle was available as a kernel module and
> that module never in fact loaded on my hardware and so never caused a
> hang. In 2.6.36 onwards, intel idle is only available directly compiled
> into the kernel and that is when the hang became apparent: subsequent
> testing shows that the hang also occurs with 2.6.35 if intel idle is
> compiled in rather than as a module.
> 
> So it is a bug, which is still present, but not necessarily a
> regression.

OK, dropped from the list of recent regressions.

Thanks,
Rafael
