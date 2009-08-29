From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [Bug #13646] warn_on tty_io.c, broken bluetooth
Date: Sat, 29 Aug 2009 11:36:57 +0200
Message-ID: <20090829093657.GC1634@ucw.cz>
References: <JuOd1ZASH0B.A.YGB.0zGlKB@chimera> <Cg6cQYLdUxG.A.f2B.l0GlKB@chimera> <84144f020908252314l364588bfi16e2d426cece2c5a@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <84144f020908252314l364588bfi16e2d426cece2c5a-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Wed 2009-08-26 09:14:02, Pekka Enberg wrote:
> On Wed, Aug 26, 2009 at 12:05 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.29 and 2.6.30.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.29 and 2.6.30. ?Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry ? ? ? : http://bugzilla.kernel.org/show_bug.cgi?id=13646
> > Subject ? ? ? ? : warn_on tty_io.c, broken bluetooth
> > Submitter ? ? ? : Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
> > Date ? ? ? ? ? ?: 2009-06-19 17:05 (68 days old)
> > References ? ? ?: http://lkml.org/lkml/2009/6/19/187
> 
> Pavel, is this still an open issue? Plenty tty fixes went into 2.6.31
> so maybe we need to backport some of them to -stable?

It seems to be interminent, and depends on timing/usage patterns. (Try
to start bluetooth when it is already starting). It
is possible that it was there before. Perhaps it can be just closed as
'bug but not regression'.

								Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
