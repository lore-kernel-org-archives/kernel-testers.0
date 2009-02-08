From: Andrea Righi <righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12606] fb_mmap: circular locking dependency on hibernation
Date: Sun, 08 Feb 2009 23:00:17 +0100
Message-ID: <498F55F1.3000405@gmail.com>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.bKG.120jJB@chimera>
Reply-To: righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:reply-to
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :x-enigmail-version:content-type:content-transfer-encoding;
        bh=eiprfXTP2zc+IwwWZZuqQcSEMLvSatngCLsgkBxA3Qo=;
        b=yAlpKaSKBYjLviFxmbYsSSuuBXn8+snqJoKgXQouJCxXB2bdZMU0dFLvJ/jUH+eRUI
         p9wDE/ugWwJG1o4rclUamTHPaz5F5nrXm4sGBzavzXC/JiSfY2rKzblGjMGbC7GYn7gm
         E4Cz1se4+j0yWAMRJBdSCvZ2tYdGdpDxh9/CU=
In-Reply-To: <sWhNs83kKPE.A.bKG.120jJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>

On 2009-02-08 20:21, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12606
> Subject		: fb_mmap: circular locking dependency on hibernation
> Submitter	: Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
> Date		: 2009-01-27 18:37 (13 days old)
> References	: http://marc.info/?l=linux-kernel&m=123308162731408&w=4
> Handled-By	: Andrea Righi <righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=123365581406194&w=2

This is fixed by:

commit 1f5e31d7e55ac7fbd4ec5e5b20c8868b0e4564c9
Author: Andrea Righi <righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date:   Wed Feb 4 15:12:03 2009 -0800

    fbmem: don't call copy_from/to_user() with mutex held

    Avoid calling copy_from/to_user() with fb_info->lock mutex held in fbmem
    ioctl().

    fb_mmap() is called under mm->mmap_sem (A) held, that also acquires
    fb_info->lock (B); fb_ioctl() takes fb_info->lock (B) and does
    copy_from/to_user() that might acquire mm->mmap_sem (A), causing a
    deadlock.

    NOTE: it doesn't push down the fb_info->lock in each own driver's
    fb_ioctl(), so there are still potential deadlocks elsewhere.

    Signed-off-by: Andrea Righi <righi.andrea-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
    Cc: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
    Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
    Cc: Johannes Weiner <hannes-BfM5BwqdGSkPyMaTEpOvjQ@public.gmane.org>
    Cc: Krzysztof Helt <krzysztof.h1-5tc4TXWwyLM@public.gmane.org>
    Cc: Harvey Harrison <harvey.harrison-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
    Cc: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
    Signed-off-by: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
    Signed-off-by: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
