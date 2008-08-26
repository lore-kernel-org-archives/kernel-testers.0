From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Tue, 26 Aug 2008 01:36:05 -0700
Message-ID: <86802c440808260136t3a33a9c8if53b6f70ab9df9e2@mail.gmail.com>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808251401590.3363@nehalem.linux-foundation.org>
	 <20080826072220.GB31876@elte.hu>
	 <20080826.004607.253712060.davem@davemloft.net>
	 <20080826075355.GA7596@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=UTQd/sdy8+nV8oysKiZP6pLoRL6EzgB/1LrSvBmGsFY=;
        b=HruTMTLwZdeGuW8xhwW0mv0senjgg5DekTGj507ES6saf4rpbhdFugralUG/t51GHy
         TclWT4bqdyzYBo2tgD6w3m/Mj7bt8aD0WG+A/agCBqsL3CiPhWK6HuZ9LHrkGSQb+DAQ
         AOTkJvbRvaIf6FJO/DNVyshzMfCQVFJynS0V4=
In-Reply-To: <20080826075355.GA7596-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, travis-sJ/iWh9BUns@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org

On Tue, Aug 26, 2008 at 12:53 AM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>
> * David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
>
>> From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
>> Date: Tue, 26 Aug 2008 09:22:20 +0200
>>
>> > And i guess the next generation of 4K CPUs support should just get away
>> > from cpumask_t-on-kernel-stack model altogether, as the current model is
>> > not maintainable. We tried the on-kernel-stack variant, and it really
>> > does not work reliably. We can fix this in v2.6.28.
>>
>> I recenetly did some work on sparc64 to use cpumask pointers as much
>> as possible.
>>
>> The only case that didn't work was due to a limitation in arch
>> interfaces for the new generic smp_call_function() code. It passes a
>> cpumask_t instead of a pointer to one via
>> arch_send_call_function_ipi().
>>
>> But other than that, the whole sparc64 SMP stuff uses cpumask_t
>> pointers only.

wonder if could use "unsigned long *" directly.
so could dyn_array directly like

int cpumask_size;

unsigned long *online_cpu_map;
DEFINE_DYN_ARRAY(online_cpu_map, sizeof(unsigned long), cpumask_size,
PAGE_SIZE, NULL);

and after nr_cpu_ids is assigned, have
cpumask_size = (nr_cpu_ids + sizeof(unsigned long) - 1)/sizeof(unsigned long);

then we could NR_CPUS=4096 kernel to small system. ...

YH
