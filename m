From: okias <d.okias-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15076] System panic under load with clockevents_program_event
Date: Mon, 1 Feb 2010 08:15:54 +0100
Message-ID: <c2673ca61001312315s3e50611fm81171ddca6d19477@mail.gmail.com>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
	 <d3IDKWHT5gE.A.CjC.57hZLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=MqLDsaH7MwPV4Uzzjmhx8oGV9xIbm/bWfIBRwHllxFc=;
        b=rSNkI/oEFu37AP0IzWyO0xhirX2s434ZoQxcUIyj5WSTbxosCIp8UyoierNntJwH1P
         RQeadTK4UnsS1CQbIbZa9pX8dtZ7aHFzU2FYsYS3vFPQ0pEsVdvtxBQEljWwNpCJGeEf
         1qYXFLzd+uiuIgt5crHP9pJHid5WmKasiVD0w=
In-Reply-To: <d3IDKWHT5gE.A.CjC.57hZLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Still valid. But reproduction without HIGHMEM is minimal, but still annoying.

2010/2/1, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15076
> Subject		: System panic under load with clockevents_program_event
> Submitter	: okias <d.okias-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-01-17 13:03 (15 days old)
>
>
>


-- 
Jabber/XMPP: okias-O1n184kmSCviB9QmIjCX8w@public.gmane.org
SIP VoIP: sip:17474537254-rne+wJe3e/u3Jhga2bR/9VaTQe2KTcn/@public.gmane.org
