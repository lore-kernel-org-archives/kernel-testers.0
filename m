From: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Subject: Re: [Bug #14062] Failure to boot as xen guest
Date: Tue, 01 Sep 2009 12:47:16 -0700
Message-ID: <4A9D7A44.2000800@goop.org>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <_yaHeGjHEzG.A.qRG.usGlKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <_yaHeGjHEzG.A.qRG.usGlKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arnd Hannemann <hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>

On 08/25/09 13:34, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
>   

I think this is fixed by d560bc61.

    J

>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14062
> Subject		: Failure to boot as xen guest
> Submitter	: Arnd Hannemann <hannemann-JasiFyN5vQG662+jY7v6MhvVK+yQ3ZXh@public.gmane.org>
> Date		: 2009-08-25 15:48 (1 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=83b519e8b9572c319c8e0c615ee5dd7272856090
> References	: http://marc.info/?l=linux-kernel&m=125121534229538&w=4
> Handled-By	: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/43799/
>
>
>   
