From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12664] viafb triggers BUG at mm/vmalloc.c:294
Date: Sat, 14 Feb 2009 23:39:03 +0100
Message-ID: <200902142339.04283.rjw@sisk.pl>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.7EE.O20jJB@chimera> <c43b2e150902090217p6efe5141q4b3a608a00c02f71@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <c43b2e150902090217p6efe5141q4b3a608a00c02f71-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: wixor <wixorpeek-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Monday 09 February 2009, wixor wrote:
> There was no support for Chrome9 framebuffer before 2.6.28, so that is
> a progress. However now that we have it, it doesn't work (at least for
> me).... The BUG appearing seemed to be an mm-issue also reported by
> others (see http://marc.info/?l=linux-kernel&m=123415925903748&w=2). I
> don't know if it was there before 2.6.28. It doesn't look like any
> solution has been merged to mainline.
> 
> It is certainly an issue, but I'm not sure if it's also a regression
> from 2.6.28.

I've dropped it from the list of recent regressions, sorry for the slow
response.

Thanks,
Rafael
