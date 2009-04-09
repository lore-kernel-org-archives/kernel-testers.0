From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc1 cannot boot: scsi/async
Date: Thu, 9 Apr 2009 17:00:57 +0400
Message-ID: <a4423d670904090600w7286ec0elda3c608b740281ea@mail.gmail.com>
References: <a4423d670904081012j30ad104etefeee0c8c682aca9@mail.gmail.com>
	 <19f34abd0904081015r5549da00w97593be16373bb8c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=o47+a65+YsuznCAxRzatWa3TkTkbKaI2hp6Bz3AGAD8=;
        b=Fcjg2yXxn6FkxewUGD+yo8dgGRG1Fze/DeR4o13pA7b2ADLmA1x9VbE5XDM/boQFX4
         JOy2lKqv0f3chADn5ip7OkRPMnhTKdfHaYY8oMuGFExdbgmC9Lj9DMXV0ZYDjtgP+B3k
         ESwKZisajQYpg70Nyw6IR90U/knIarW33eDlI=
In-Reply-To: <19f34abd0904081015r5549da00w97593be16373bb8c-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-scsi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2009/4/8 Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> 2009/4/8 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
>> Hi
>>
>> It is 2*2 SMP system, x86_64.
>>
>> INFO: task async/0:1073 blocked for more than 120 seconds.
>
>
> Hi,
>
> I just proposed a patch to fix this:
>
> http://marc.info/?l=linux-kernel&m=123920746830420&w=2
>
> Don't know if it's correct or whether it actually fixes the problem,
> but you are welcome to try it :-)

It works for me as well. Thanks.
