From: Jos van der Ende <seraph-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #12947] r128: system hangs when X is started with DRI
 enabled
Date: Sun, 17 May 2009 18:08:48 +0200
Message-ID: <20090517180848.9f20a768.seraph@xs4all.nl>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera>
	<pQ9WADCjgyE.A.XPH.6A0DKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <pQ9WADCjgyE.A.XPH.6A0DKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, Jos van der Ende <seraph-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, "venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sat, 16 May 2009 22:05:58 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).

The bug is still present in 2.6.29.3, but we've found the likely cause and a potential fix. As soon as I have access to the system again, I will test this patch. Unfortunately I won't be anywhere near the system this week. I'll get back to it on Monday 25th.


-- 
Jos van der Ende <seraph-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
