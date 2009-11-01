From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [PATCH 2/3] page allocator: Do not allow interrupts to use 
	ALLOC_HARDER
Date: Sun, 1 Nov 2009 21:37:35 +0900
Message-ID: <2f11576a0911010437l45b64f64webffa649763406b1@mail.gmail.com>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie>
	 <20091027130924.fa903f5a.akpm@linux-foundation.org>
	 <alpine.DEB.2.00.0910271411530.9183@chino.kir.corp.google.com>
	 <20091031184054.GB1475@ucw.cz>
	 <alpine.DEB.2.00.0910311248490.13829@chino.kir.corp.google.com>
	 <20091031201158.GB29536@elf.ucw.cz>
	 <alpine.DEB.2.00.0910311413160.25524@chino.kir.corp.google.com>
	 <20091031222905.GA32720@elf.ucw.cz> <4AECC04B.9060808@redhat.com>
	 <20091101073527.GB32720@elf.ucw.cz>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type;
        bh=s3LUx/GIGEwdmKGT2d5Hjv6Ci67jc6d2aZKlTQbjV1E=;
        b=EAsMmbVDif57TecHDJ1tMZGV3nXzfyqv3Ed2Rqv+I70QQZA/PNn0Any3PD8IselVj5
         9PuW14g+Oe7nt22Q04wyoTnkuZ3QczGLYvaILlQuMdnHT63TghxJuhSSQtbQty599tCi
         e3kESCXv2yXGBOwTQw1fSky5ibzJ6w8u3zi50=
In-Reply-To: <20091101073527.GB32720-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Cc: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2009/11/1 Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>:
>> > I believe it would be better to simply remove it.
>>
>> You are against trying to give the realtime tasks a best effort
>> advantage at memory allocation?
>
> Yes. Those memory reserves were for kernel, GPF_ATOMIC and stuff. Now
> realtime tasks are allowed to eat into them. That feels wrong.
>
> "realtime" tasks are not automatically "more important".
>
>> Realtime apps often *have* to allocate memory on the kernel side,
>> because they use network system calls, etc...
>
> So what? As soon as they do that, they lose any guarantees, anyway.

Then, your proposal makes regression to rt workload. any improve idea
is welcome.
but we don't hope to see any regression.
