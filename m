From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: next-20090318: sunhme does not transmit packets
Date: Tue, 24 Mar 2009 14:32:32 +0300
Message-ID: <a4423d670903240432m1a4e8e08x9c97a0947d89800a@mail.gmail.com>
References: <a4423d670903180958j4847717eh99a41534633dd314@mail.gmail.com>
	 <20090318.234451.38898787.davem@davemloft.net>
	 <a4423d670903190116p157b2ebfl69d270e0576c6d9a@mail.gmail.com>
	 <20090322.215110.261185328.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=HIH3+csaoWLApmJFe+G5z+7IstLUU4g4IKOWDm1ZoF0=;
        b=P2GDZbfYTwZORyDPp7VvcWq402kS1aOztnZkw1G+Fq9RzOsuHsatc0b9Jd0sTYwhsN
         bvzULMx9Snc3uIDs9MFChVHf28/rQYgKUR90gRtVuJVtApFH9/9DrQHIE2KpLjHYVNx7
         A+Q+4SnSwUO5hHgJi1YsigCkSVf0f6WDifYcg=
In-Reply-To: <20090322.215110.261185328.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-next-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

>> 2009/3/19 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
>> > Does the current vanilla kernel work fine?
>>
>> Yes. The problem happens only with -next tree.
>
> I have one of my ultra10s up and will try to reproduce and diagnose
> this locally.

Hi David

2.6.29 also does not work.

The guilty patch should be between 2.6.29-rc8 and final 2.6.29

even more narrow - 59fcbdd..v2.6.29

I can try to bisect.
