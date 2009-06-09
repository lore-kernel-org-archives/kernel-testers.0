From: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13116] Can't boot with nosmp
Date: Mon, 8 Jun 2009 17:04:37 -0700
Message-ID: <20090608170437.1c2386a5@nehalam>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	<D9VoutSOyXP.A.xm.Vb7KKB@chimera>
	<20090608091544.53a94235@nehalam>
	<e9c3a7c20906080929l1a4ec739t7585f6bba54bf684@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <e9c3a7c20906080929l1a4ec739t7585f6bba54bf684-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

I did some more debugging, and the problem appears to be that
booting with nosmp still leaves all the CPU's present in the cpu
possible mask. So code like dma engine (or loopback device), that
use alloc_percpu get broken.

Not sure why all the cpu's are still showing up in the possible mask.
Rusty? do you have an answer.
