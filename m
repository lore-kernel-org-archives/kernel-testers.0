From: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
Subject: Re: [Bug #12208] uml is very slow on 2.6.28 host
Date: Mon, 23 Feb 2009 15:27:55 +0100
Message-ID: <E1Lbbml-0002ww-BW@pomaz-ex.szeredi.hu>
References: <sTyoMUwdm9B.A.QCH.U40lJB@chimera> <ROx6X68CGJG.A.Y3B.t50lJB@chimera> <20090222135818.GA12782@hack.private>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <20090222135818.GA12782-2ZPHldtDychwKoX9GjgWag@public.gmane.org> (message from
	=?utf-8?Q?Am=C3=A9rico?= Wang on Sun, 22 Feb 2009 21:58:18 +0800)
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org

On Sun, 22 Feb 2009, =?utf-8?Q?Am=C3=A9rico?= Wang wrote:
> On Sat, Feb 14, 2009 at 09:50:19PM +0100, Rafael J. Wysocki wrote:
> >This message has been generated automatically as a part of a report
> >of regressions introduced between 2.6.27 and 2.6.28.
> >
> >The following bug entry is on the current list of known regressions
> >introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> >be listed and let me know (either way).
> >
> >
> >Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12208
> >Subject		: uml is very slow on 2.6.28 host
> >Submitter	: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
> >Date		: 2008-12-12 9:35 (65 days old)
> >References	: http://marc.info/?l=linux-kernel&m=122907463518593&w=4
> 
> Hello, Miklos!
> 
> I can't reproduce this on host 2.6.28.7 with uml guest of current git.
> Have you tried 2.6.28.7? Does it have the same problem?

It's still slow for me on 2.6.29-rc5.  I haven't tried 2.6.28.7 yet.

Thanks,
Miklos
