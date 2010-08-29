From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16173] After uncompressing the kernel, at boot time, the server hangs.
Date: Mon, 30 Aug 2010 01:28:34 +0200
Message-ID: <201008300128.34970.rjw@sisk.pl>
References: <c1_O4wHrlB.A.63.mbueMB@chimera> <ByD_7B96czP.A.vDE.diueMB@chimera> <m11v9hc8a1.fsf@fess.ebiederm.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <m11v9hc8a1.fsf-+imSwln9KH6u2/kzUuoCbdi2O/JbrIOy@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Eric W. Biederman" <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Hill <hilld-HTiBYHdybX7UkGsOFmftXw@public.gmane.org>, "H. Peter Anvin" <hpa-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>

On Monday, August 30, 2010, Eric W. Biederman wrote:
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.34 and 2.6.35.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> >
> 
> Looks like it's fixed.

Good.  What mainlne commit is that?

Rafael


> "David Hill" <hilld-HTiBYHdybX7UkGsOFmftXw@public.gmane.org> writes:
> > Date: Thu, 12 Aug 2010 23:09:52 -0700
> > 
> > Eureka!
> > 
> >    This seems to solve my problem!  My Dual P3-500MHZ is now booting with that
> > patch.
> > 
> > Good work guys!!!!
> > 
> > Thank you very much,
> 
> 
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16173
> > Subject		: After uncompressing the kernel, at boot time, the server hangs.
> > Submitter	: David Hill <hilld-HTiBYHdybX7UkGsOFmftXw@public.gmane.org>
> > Date		: 2010-06-09 23:25 (82 days old)
> > First-Bad-Commit: http://git.kernel.org/linus/cf7500c0ea133d66f8449d86392d83f840102632
> > Handled-By	: Eric W. Biederman <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
> 
> 
