From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #36952] [2.6.39] CIFS write failures where 2.6.38 works
Date: Sun, 10 Jul 2011 22:23:56 +0200
Message-ID: <201107102223.56834.rjw@sisk.pl>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera> <CAOJsxLHNKTh_ATo4_mQfjUfqtddheE-+bF14SPCNYBu+fjW9Tw@mail.gmail.com> <20110710143458.531f226d@tlielax.poochiereds.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20110710143458.531f226d-9yPaYZwiELC+kQycOl6kW4xkIHaj4LzF@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Helge Hafting <helge.hafting-CND4fxrytsY@public.gmane.org>

On Sunday, July 10, 2011, Jeff Layton wrote:
> On Sun, 10 Jul 2011 14:58:54 +0300
> Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
> 
> > On Sun, Jul 10, 2011 at 1:58 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.38 and 2.6.39.
> > >
> > > The following bug entry is on the current list of known regressions
> > > introduced between 2.6.38 and 2.6.39.  Please verify if it still should
> > > be listed and let the tracking team know (either way).
> > >
> > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=36952
> > > Subject         : [2.6.39] CIFS write failures where 2.6.38 works
> > > Submitter       : Helge Hafting <helge.hafting-CND4fxrytsY@public.gmane.org>
> > > Date            : 2011-06-01 10:11 (40 days old)
> > > Message-ID      : <4DE6103E.6010100-CND4fxrytsY@public.gmane.org>
> > > References      : http://marc.info/?l=linux-kernel&m=130692387613423&w=2
> > 
> > The last comment in Bugzilla states that Jeff was working on a patch.
> > Was it ever submitted to mainline and stable?
> > 
> >                                 Pekka
> 
> Yes, see commit 1190f6a067b in mainline. I also backported it for
> 2.6.39-stable and sent it to stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, but I haven't heard
> anything back on it yet (I'll resend if I don't hear anything in the
> next day or two).

Thanks, I've closed the bug.

Rafael
