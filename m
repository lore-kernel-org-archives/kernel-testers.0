From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #34942] [Bug] Kdump does not work when panic triggered due to MCE
Date: Sun, 10 Jul 2011 14:25:38 +0200
Message-ID: <201107101425.39218.rjw@sisk.pl>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera> <gK_efVqs2fP.A.k7.hnYGOB@chimera> <CAOJsxLE9UBoMocTaWAt7DSoFFwGP5oD901XyeK6jGHEzUuSjDg@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAOJsxLE9UBoMocTaWAt7DSoFFwGP5oD901XyeK6jGHEzUuSjDg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, "K.Prasad" <prasad-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, borislav.petkov-5C7GfCeVMHo@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Sunday, July 10, 2011, Pekka Enberg wrote:
> On Sun, Jul 10, 2011 at 1:58 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.38 and 2.6.39.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.38 and 2.6.39.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=34942
> > Subject         : [Bug] Kdump does not work when panic triggered due to MCE
> > Submitter       : K.Prasad <prasad-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> > Date            : 2011-05-06 16:54 (66 days old)
> > Message-ID      : <20110506165412.GB2719-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>
> > References      : http://marc.info/?l=linux-kernel&m=130470087226270&w=2
> 
> There's actually no mention that kdump worked with MCE in 2.6.38
> either. So is this really a regression?

Well, for us it's easier to assume a regression and drop it from the list
when it turns out not to be one.  I guess that's happend this time, so
the submitter is kindly asked to speak. :-)

Thanks,
Rafael
