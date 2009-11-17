From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14483] Interrupts enabled after irqrouter_resume - iMac9,1
Date: Mon, 16 Nov 2009 16:21:41 -0800
Message-ID: <4B01EC95.7070109@gmail.com>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.-yG.OTdALB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=OCu2OaelOhRN71CsjiV5rNS/yjI2clLIWdXS6GKY2sw=;
        b=nD0AEDvvCpKOPt993iuTxvWzUNV6AjCFXvWGwfjIWUXZ5bqXfzTElhWV0F/pq/oiSJ
         MHb6W8NrLdyPyI/32ROmNVnshS+/4ySImYHR+SunVT/nhpwdtMKHhvgK51Y5Nxot30E6
         0FETNcJRZpOOd4+aMlq1CCV87LNLK+cBYS4Y8=
In-Reply-To: <xXQGFmujPl.A.-yG.OTdALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Martin Schwidefsky <schwidefsky-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14483
> Subject		: Interrupts enabled after irqrouter_resume - iMac9,1
> Submitter	: Justin Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-10-25 19:58 (23 days old)
> References	: http://marc.info/?l=linux-kernel&m=125650070420168&w=4
>
>
>
>    
I have to say that doing a bisect on this
was more than I had anticipated.
(still need to go through and revert commits,
to see if I can find exactly where).

So yes this should still be open.

Justin P. Mattock
