From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13648] nfsd: page allocation failure
Date: Sun, 19 Jul 2009 14:36:28 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907191433360.14636@chino.kir.corp.google.com>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera> <bXZeuxPQAWE.A.BkG.-_oUKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1248039396; bh=J5U0g5tz3ROPz8735fuq87Q8pSs=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=Z2nd/hKECnTU9eVq30HV3pyUxvp/+Us
	v4Wm/7ai++IKX5FAC6lWeVJMYDs6bHeXYrifrlNyjU9cXrUN7gGrIxg==
In-Reply-To: <bXZeuxPQAWE.A.BkG.-_oUKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>, Stephan von Krawcynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>

On Tue, 7 Jul 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13648
> Subject		: nfsd: page allocation failure
> Submitter	: Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>
> Date		: 2009-06-22 12:08 (15 days old)
> References	: http://lkml.org/lkml/2009/6/22/309
> 

Stephan von Krawczynski has this problem with e1000e (but not e1000 or 
tg3) at least as far back as 2.6.28, so this doesn't appear to be a 
regression introduced in 2.6.30.
