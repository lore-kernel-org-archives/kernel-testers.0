From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11407] suspend: unable to handle kernel paging request
Date: Fri, 12 Sep 2008 22:50:42 +0200
Message-ID: <19f34abd0809121350m480ee4aak9786b8eb4064d50c@mail.gmail.com>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik>
	 <SpS7rta8n4.A.0sH.PdsyIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=kMySQeJFtoHrediNG4N0u3HW5dUS7J0hvLvO9XttWH8=;
        b=u8tH0CJ/vEWVclqTd4f2s5pzkZw/AR17lPu2dUjR25wkYPa7iQQaICC8ti6fZ/0vS3
         rssdtN3LbWlNvMP56kF83xi9BSFHFWcXaQDkjlafF6TIsCTcYJV9YLMGLSR262ZVstQE
         83dMzDDQD47JEUc7/113kFsyo3y92NeHr+YFo=
In-Reply-To: <SpS7rta8n4.A.0sH.PdsyIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>

On Fri, Sep 12, 2008 at 9:06 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11407
> Subject         : suspend: unable to handle kernel paging request
> Submitter       : Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-08-21 17:28 (23 days old)
> References      : http://marc.info/?l=linux-kernel&m=121933974928881&w=4
> Handled-By      : Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
>                  Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
>                  Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>

I'm sorry for not replying sooner. This is current status: Problem was
never resolved. I tried to bisect, but I only ran into other problems
with either config not being supported for my machine prior to certain
date while trying to find a good bisection point. It's been a while
now, so I don't remember everything exactly, but I may try to
reproduce it tomorrow on the latest -git and see what comes up.

Will report back as soon as I have more info. Thanks,


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
