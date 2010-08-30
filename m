From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16337] general protection fault: 0000 [#1] SMP
Date: Mon, 30 Aug 2010 19:26:35 +0200
Message-ID: <201008301926.35443.rjw@sisk.pl>
References: <c1_O4wHrlB.A.63.mbueMB@chimera> <4C7AF2C4.9040507@gmail.com> <AANLkTinzVmtWhhvuRNcKF1xKs+L=Lw0DT2osDxcbA6ze@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <AANLkTinzVmtWhhvuRNcKF1xKs+L=Lw0DT2osDxcbA6ze-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pauli Nieminen <suokkos-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Monday, August 30, 2010, Pauli Nieminen wrote:
> On Mon, Aug 30, 2010 at 2:52 AM, Justin P. Mattock
> <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > On 08/29/2010 04:13 PM, Rafael J. Wysocki wrote:
> >>
> >> This message has been generated automatically as a part of a report
> >> of regressions introduced between 2.6.34 and 2.6.35.
> >>
> >> The following bug entry is on the current list of known regressions
> >> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> >> be listed and let the tracking team know (either way).
> >>
> >>
> >> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=16337
> >> Subject         : general protection fault: 0000 [#1] SMP
> >> Submitter       : Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> Date            : 2010-07-03 22:59 (58 days old)
> >> Message-ID      :<<4C2FC0E3.6050101-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>>
> >> References      : http://marc.info/?l=linux-kernel&m=127819798215589&w=2
> >>
> >>
> >>
> >
> >
> > only have seen this once..on the other hand (If im correct)maciej or pauli
> > where able to reproduce this.. I say leave open then go from there.
> >
> > Justin P. Mattock
> >
> 
> I was able to reproduce this with about 50% chance in boot. But that
> happened in a few rc (rc2-rc4 iirc) versions only. After that never
> again.

OK, I'm closing it now, please reopen if you see it again.

Rafael
