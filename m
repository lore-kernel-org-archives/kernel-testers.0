From: Adrian McMenamin <lkmladrian-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12502] pipe_read oops on sh
Date: Sun, 15 Feb 2009 00:23:17 +0000
Message-ID: <8b67d60902141623k449dc769n9fd6bf180d3267d3@mail.gmail.com>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera>
	 <rjPbZ5GRJPO.A.E3F.xs0lJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=sSQVnNR4G5BDogw42RmarA6FdqSj1DYHcPz33iRi1Jc=;
        b=tIEhNq0x6N4iHnyAJvCPTek+02tKStJEouT9V7Lj39J7j40PUPGhhojEOia5DOa+A8
         fQ0VMvr8t0ALNuCvdI5+kKy8/BSMeFzVDnWuofv7Ke3yXsszofkU4H49XQH0g0PLAhrV
         buhQtqT/ujupXopTMLbFYQAi8uEWoCMkXyqsw=
In-Reply-To: <rjPbZ5GRJPO.A.E3F.xs0lJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/2/14 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12502
> Subject         : pipe_read oops on sh
> Submitter       : Adrian McMenamin <lkmladrian-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2009-01-15 9:48 (31 days old)
> References      : http://marc.info/?l=linux-kernel&m=123201298005600&w=4
>
>
>

No, it was caused by a race condition that has now been fixed.
