From: wixor <wixorpeek-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12664] viafb triggers BUG at mm/vmalloc.c:294
Date: Mon, 9 Feb 2009 11:17:55 +0100
Message-ID: <c43b2e150902090217p6efe5141q4b3a608a00c02f71@mail.gmail.com>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	 <sWhNs83kKPE.A.7EE.O20jJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=m5WHTQAxPguAye4mAgfAykggC4OOVKgjpiAhUJgMu5A=;
        b=N1Ii1b5lbsAGzOrKSWODX6SZJOtuzFkvHz4HtqadKr0AnciBx/McD1CmZjyLkyYX46
         UBcRAIfNUE8yjwQpFVAkP8bI3Bj48KEINWyARxOHX4dZJUa6Gx3DKWL0Gp8Yw3xHKwuC
         xS5YbzTx3EkeOZWY3v5CQstwJ7PqC1U7tGe2A=
In-Reply-To: <sWhNs83kKPE.A.7EE.O20jJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

There was no support for Chrome9 framebuffer before 2.6.28, so that is
a progress. However now that we have it, it doesn't work (at least for
me).... The BUG appearing seemed to be an mm-issue also reported by
others (see http://marc.info/?l=linux-kernel&m=123415925903748&w=2). I
don't know if it was there before 2.6.28. It doesn't look like any
solution has been merged to mainline.

It is certainly an issue, but I'm not sure if it's also a regression
from 2.6.28.

--
wixor
