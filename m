From: Niel Lambrechts <niel.lambrechts-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13733] 2.6.31-rc2: irq 16: nobody cared
Date: Mon, 27 Jul 2009 19:54:28 +0200
Message-ID: <4A6DE9D4.406@gmail.com>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.ZsD.yHObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=wP1pu3X96ODPmmGxQBKXmst1p3FEyqkzplIN6GkjUmI=;
        b=p3v5J1GaKso5tHotiH8HreMnQURAcZZjlDetQ//I9mhTmnmxmfDNJ2sVJQq/oKK71q
         NrJJLboBY7Arv1t9rywIw9+rlPzSbAmABh71jc7cQsIU6MTz7/+CRYWc6wOTxGMKoxOI
         uux5W6TSoqoPR7EqPgyvVDI+4fnJjccw955dQ=
In-Reply-To: <3zAHs5O6maO.A.ZsD.yHObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 07/26/2009 10:28 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13733
> Subject		: 2.6.31-rc2: irq 16: nobody cared
> Submitter	: Niel Lambrechts<niel.lambrechts-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-07-06 18:32 (21 days old)
> References	: http://marc.info/?l=linux-kernel&m=124690524027166&w=4
>    
Hi,

Bug is still evident on kernels up to 2.6.31-rc4.

Regards,
Niel
