From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13780] NULL pointer dereference loading powernowk8
Date: Mon, 10 Aug 2009 03:28:07 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0908100323370.17129@chino.kir.corp.google.com>
References: <YCu3FOC0QrC.A.MaE.RD2fKB@chimera> <pRuaDVjxFBG.A.tyE.pD2fKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1249900096; bh=UsUjQuUVaTbN7lQOSE+/NTG+Up4=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=jnr2kDLBb6ekUn9G2wDASKdCvXiWFJ7
	nkySK4/+WlHARZZ3jdVTg0snZBizy7gjfyN7lkz3pBVEcca3ub9Yyhw==
In-Reply-To: <pRuaDVjxFBG.A.tyE.pD2fKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kurt Roeckx <kurt-burXGKnpAKGzQB+pC5nmwQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, 9 Aug 2009, Rafael J. Wysocki wrote:

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
> Date		: 2009-07-15 18:00 (26 days old)
> 

Kurt, could you post the stack trace and your .config from the 2.6.31-rc5 
try?
