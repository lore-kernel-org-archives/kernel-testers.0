From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16337] general protection fault: 0000 [#1] SMP
Date: Sun, 01 Aug 2010 18:01:14 -0700
Message-ID: <4C5618DA.1020407@gmail.com>
References: <2dWFdr9kTFM.A.P0D.spXVMB@chimera> <Aan7wZ97YaE.A.TCF.1qXVMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=YoyHLLTNkibcTmA3vvgTCCc9y9gsZE2BF6lzLyKiI+0=;
        b=HBqj51q3flUExJwc9boOOuLwF7vlUf7LSCvmhjEU2rSIMgSCQ2Tx12sTZEIWGsFszS
         mCjP3xa5it0Ry9eOuWaC+Nqpuj08febRcgZvr9lqY23F4UpXxATSEWkmXNZ3A6p722Vb
         ZejmWcGhpFfeN56LV8z+F8Kx/X7LQ8fudJE3Y=
In-Reply-To: <Aan7wZ97YaE.A.TCF.1qXVMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pauli Nieminen <suokkos-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 08/01/2010 06:52 AM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16337
> Subject		: general protection fault: 0000 [#1] SMP
> Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-07-03 22:59 (30 days old)
> Message-ID	:<4C2FC0E3.6050101-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127819798215589&w=2
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
>

Ive played around with the machine that originally hit this. but still 
cant seem to reproduce or trigger this.

Justin P. Mattock
