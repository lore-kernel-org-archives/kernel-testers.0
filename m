From: Alex Riesen <raa.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12518] BUG: using smp_processor_id() in preemptible 
	[00000000] code: dellWirelessCtl/...
Date: Wed, 4 Feb 2009 16:58:55 +0100
Message-ID: <81b0412b0902040758s43ba058ava7470213b6d74a85@mail.gmail.com>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <pWZw1SZjMCH.A.NpF.OvYiJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=p1X14+UFFFw2Dq8UHxZBz0J/o8fzrF/NqWRWqgaS5Hw=;
        b=x543qf8ieofxSd/5nPmtxTEdIaVNtUpN1rAap+NVXXlw1HBDRxVFtiykHksW0nqQtA
         LMiYVheqFm0uVt38TlVErgkjMp889EopeQ9jiLRNNJzQUa8khVALW42X45gITEMGvJ1J
         vS9ScJTe4SRGVvERl8vPvBud9FmucCtUakuUc=
In-Reply-To: <pWZw1SZjMCH.A.NpF.OvYiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Riesen <fork0-iA+eEnwkJgzk1uMJSBkQmQ@public.gmane.org>, Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>

2009/2/4 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
>

I confirm the problem fixed with the patch in the bugs discussion.

>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12518
> Subject         : BUG: using smp_processor_id() in preemptible [00000000] code:  dellWirelessCtl/...
> Submitter       : Alex Riesen <fork0-iA+eEnwkJgzk1uMJSBkQmQ@public.gmane.org>
> Date            : 2009-01-21 14:21 (15 days old)
>
