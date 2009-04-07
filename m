From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13015] pppoe over ethernet
Date: Tue, 7 Apr 2009 07:31:36 +0400
Message-ID: <aa79d98a0904062031x321bd160rd89b19a6a49fe760@mail.gmail.com>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
	 <AsKNxFx2juN.A.gjH.4Fn2JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=1QMfVeq/8e2VJ9YN4Xpfnn2Ozhv8TBwoh1Tqbf/ink8=;
        b=M68YWLZsqKdoccrvvhV5tWTyK1laDOA8VFMMhPH9OgIsVWGIJYa58j6K9K9pKyFBJV
         B+DDaZs+FAjUQEct2Ch6bO/MJYqF8MywnvMnb8MdemKywmD978i3CFkOyZ8qcMTturMq
         DBQLyL/y2qsEx4s/qqrNKTK8PAMYExzeqT8y8=
In-Reply-To: <AsKNxFx2juN.A.gjH.4Fn2JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Detlef Tschirschky <detlef.tschirschky-Mmb7MZpHnFY@public.gmane.org>

On 4/6/09, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13015
> Subject		: pppoe over ethernet
> Submitter	: Detlef Tschirschky <detlef.tschirschky-Mmb7MZpHnFY@public.gmane.org>
> Date		: 2009-03-25 21:28 (13 days old)
> References	: http://marc.info/?l=linux-kernel&m=123801663105671&w=4
>
>
>
I expect the issue is inspered by network problem found in plain
2.6.29. Detlef could you confirm the problem is still active in
2.6.29.1 or in current -git mainline?
