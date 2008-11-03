From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11845] Suspend regression on Lenovo x60
Date: Mon, 3 Nov 2008 10:09:26 +0100
Message-ID: <20081103090926.GJ11730@elte.hu>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera> <wOAXuecskPD.A.3LH.0keDJB@chimera> <20081102220758.GA14374@localhost.aei.mpg.de> <200811030055.22645.rjw@sisk.pl> <1ba2fa240811030104w3ebc3acfs2e1a135457a1bade@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1ba2fa240811030104w3ebc3acfs2e1a135457a1bade-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tomas Winkler <tomasw-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>


* Tomas Winkler <tomasw-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> On Mon, Nov 3, 2008 at 1:55 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > On Sunday, 2 of November 2008, Carlos R. Mafra wrote:
> >> On Sun  2.Nov'08 at 17:07:01 +0100, Rafael J. Wysocki wrote:
> >> > This message has been generated automatically as a part of a report
> >> > of recent regressions.
> >> >
> >> > The following bug entry is on the current list of known regressions
> >> > from 2.6.27.  Please verify if it still should be listed and let me know
> >> > (either way).
> >> >
> >> >
> >> > Bug-Entry   : http://bugzilla.kernel.org/show_bug.cgi?id=11845
> >> > Subject             : Suspend regression on Lenovo x60
> >> > Submitter   : Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> >> > Date                : 2008-10-24 18:02 (10 days old)
> >> > References  : http://marc.info/?l=linux-next&m=122487159829507&w=4
> >> >               http://marc.info/?l=linux-kernel&m=122512449714310&w=4
> >> > Handled-By  : Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> >> >               Tomas Winkler <tomasw-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> > Patch               : http://marc.info/?l=linux-kernel&m=122513311900482&w=4
> >> >               http://marc.info/?l=linux-wireless&m=122518625308673&w=4
> >>
> >> It is fixed by commit 10d0bd56966571d0324dfd9bbb8aa913a60bef5f which
> >> is now in Linus' tree.
> >
> > Thanks, closed.
> 
> Is this queued  also for 2.6.27 stable ? My email was bounced back
> I've used linux-stable-4mT8j8lBKmdzeIdxy0IIJw@public.gmane.org

three typos caused thebounce. It's stable-DgEjT+Ai2yi4UlQgPVntAg@public.gmane.org

	Ingo
