From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13780] NULL pointer dereference loading powernowk8
Date: Sun, 6 Sep 2009 14:27:29 -0700 (PDT)
Message-ID: <alpine.DEB.1.00.0909061426500.16301@chino.kir.corp.google.com>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera> <hKF51Pczj6N.A.Y9H.r3BpKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1252272455; bh=VfH8/dmlPPrws1NYMYDX11037hw=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=J1LMG5+MiOpKmA2ush8gnmmZi9Rlhlg
	7VDqOrsK6RZ4thQErsfBNDCt5tA3OOr44vdjbScBwGjm3v4pJB2xSCQ==
In-Reply-To: <hKF51Pczj6N.A.Y9H.r3BpKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kurt Roeckx <kurt-burXGKnpAKGzQB+pC5nmwQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, 6 Sep 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13780
> Subject		: NULL pointer dereference loading powernowk8
> Submitter	: Kurt Roeckx <kurt-burXGKnpAKGzQB+pC5nmwQ@public.gmane.org>
> Date		: 2009-07-15 18:00 (54 days old)
> 

This bug has been abandoned as far as I know since there has been no 
response from the reporter in three weeks to post the latest failure 
(which was then 2.6.31-rc5).
