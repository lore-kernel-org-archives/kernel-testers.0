From: Harvey Harrison <harvey.harrison-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12806] i915 broken STR
Date: Sat, 14 Mar 2009 20:35:54 -0700
Message-ID: <1237088154.4064.0.camel@brick>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera>
	 <GCLaknAim2M.A.LaD.u4BvJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:cc
         :in-reply-to:references:content-type:date:message-id:mime-version
         :x-mailer:content-transfer-encoding;
        bh=j8eA0yAMjhteMHpEJHiKOhmqK5NAfZ0JHgXij6WEnAw=;
        b=erZk7i/O0VjoeB3tMHHJQJpaY6ejHUAuaUQTJVMAfgZXXTri09DnyUrq7Ei7IrxwFb
         RPUvzswBwTeIFaHVtXZp/Ik/zQZQrpt7Sv7/WhokUkFuGtz2u4LpLnuTcNgsiYpYIbZP
         s1P+iQTDx51WukSUJN0EOO1b4ODqPkzgpJi3Q=
In-Reply-To: <GCLaknAim2M.A.LaD.u4BvJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On Sat, 2009-03-14 at 20:05 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12806
> Subject		: i915 broken STR
> Submitter	: Harvey Harrison <harvey.harrison-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-02-28 4:20 (15 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=5669fcacc58bf3a7386057addffd280d75380858
> References	: http://marc.info/?l=linux-kernel&m=123579487801064&w=4
> 
> 

You can close this, turns out KMS got enabled in my config and userspace
was too old to cope.

Harvey
