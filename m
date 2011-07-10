From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #38132] [Warning] 2.6.39.x latencytop
Date: Sun, 10 Jul 2011 14:35:11 +0200
Message-ID: <201107101435.12161.rjw@sisk.pl>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera> <gK_efVqs2fP.A.Y3H.jlYGOB@chimera> <CAOJsxLEGqpcQP3S+TLBjpRsM=UTk=zyuHBoswXkVwbHsLaDqqg@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAOJsxLEGqpcQP3S+TLBjpRsM=UTk=zyuHBoswXkVwbHsLaDqqg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Andrew Watts <akwatts-DaQTI0RpDDMAvxtiuMwx3w@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sunday, July 10, 2011, Pekka Enberg wrote:
> On Sun, Jul 10, 2011 at 1:58 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.38 and 2.6.39.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.38 and 2.6.39.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=38132
> > Subject         : [Warning] 2.6.39.x latencytop
> > Submitter       : Andrew Watts <akwatts-DaQTI0RpDDMAvxtiuMwx3w@public.gmane.org>
> > Date            : 2011-06-14 17:07 (27 days old)
> > Message-ID      : <80098.5633.qm-tGSp4LqzbTn6X00i2u5GFvu2YVrzzGjVVpNB7YpNyf8@public.gmane.org>
> > References      : http://marc.info/?l=linux-kernel&m=130807128506490&w=2
> 
> This is a WARN_ON added in commit 6752ab4a ("tracing: Deprecate
> tracing_enabled for tracing_on") that lets the user know about
> deprecated ABI. It's somewhat unfortunate that there's no mention in
> the changelog if everyone agreed on the deprecation or not...
> 
> That said, assuming the deprecation is OK (hi Steven, Frederic, Ingo!)
> I think this issue can be closed.

OK

Rafael
