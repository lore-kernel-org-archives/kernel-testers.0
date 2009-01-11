From: Maxim Levitsky <maximlevitsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12399] USB wakeup problem on Toshiba Portege R500
Date: Sun, 11 Jan 2009 23:14:07 +0200
Message-ID: <1231708447.22672.1.camel@maxim-laptop>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
	 <oWTznAnH9BI.A.9V.bHfaJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:cc
         :in-reply-to:references:content-type:date:message-id:mime-version
         :x-mailer:content-transfer-encoding;
        bh=72XADqOJmeZlQDtDoCXa+cP9oVuOKVW1Za7uVBdNVHk=;
        b=F7+T7idWsDbl/fi7H69sRs4a4k59znoKnPu9FL6B0pi7VjdOpDgg7KRZNS5DFuFTwj
         aJLC62Ek03X8fyKL9CfLILsTqlgWeLLwsQYJU3gVSp0OJ+VkloS34/hitQmxViNvYELy
         OiYzMX+or7J6bfOra9qoGaSPaBBUv+jvK/fyw=
In-Reply-To: <oWTznAnH9BI.A.9V.bHfaJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>

On Sun, 2009-01-11 at 12:12 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12399
> Subject		: USB wakeup problem on Toshiba Portege R500
> Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> Date		: 2009-01-08 7:35 (4 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=6fd9086a518d4f14213a32fe6c9ac17fabebbc1e
> References	: http://marc.info/?l=linux-kernel&m=123140019117968&w=4
> 

Happens here on aspire 5720G, and yes unloading ehci_hcd makes
suspend/resume work, otherwise system resumes immediately.

best regards,
	Maxim Levitsky
