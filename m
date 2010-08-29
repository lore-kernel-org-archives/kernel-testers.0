From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16337] general protection fault: 0000 [#1] SMP
Date: Sun, 29 Aug 2010 16:52:36 -0700
Message-ID: <4C7AF2C4.9040507@gmail.com>
References: <c1_O4wHrlB.A.63.mbueMB@chimera> <ByD_7B96czP.A.3DD.5fueMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=a7Lb/la0mcgiSuqI3l1UH3FJgsdGSTGEWyVI6GOQGjQ=;
        b=Yg14n2Tx7XTJYn7UTW/XrADVRJdEONBnBHxTOPRxUKg/pFD2NITzuklGPj3ihcZRcB
         J8oU2tVQZjwoxr7CaMcd4yJcXWdVKY+LfJq/Ej0F1z464i48sOoFQ/WsKzkiXsARNv8Y
         f9wZ5f/AQYu1SifLWsoKmKZEiKzVqQrmt9yMk=
In-Reply-To: <ByD_7B96czP.A.3DD.5fueMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pauli Nieminen <suokkos-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 08/29/2010 04:13 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16337
> Subject		: general protection fault: 0000 [#1] SMP
> Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-07-03 22:59 (58 days old)
> Message-ID	:<<4C2FC0E3.6050101-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>>
> References	: http://marc.info/?l=linux-kernel&m=127819798215589&w=2
>
>
>


only have seen this once..on the other hand (If im correct)maciej or 
pauli where able to reproduce this.. I say leave open then go from there.

Justin P. Mattock
