From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Tue, 26 Aug 2008 10:08:22 -0700
Message-ID: <86802c440808261008t1b66d6bpe93974be5988acab@mail.gmail.com>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808251401590.3363@nehalem.linux-foundation.org>
	 <20080826072220.GB31876@elte.hu>
	 <20080826.004607.253712060.davem@davemloft.net>
	 <20080826075355.GA7596@elte.hu>
	 <86802c440808260136t3a33a9c8if53b6f70ab9df9e2@mail.gmail.com>
	 <alpine.LFD.1.10.0808260939070.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=SFVJVUlH2uf/QH8wZIxl1kW0qxNfDHvjvoo2t+f7N5I=;
        b=RFiQId3NItBP4tom5+5buEQqRR7S9ptaAI1AZDoKp1yrho2I1CRqUXIVpJwdGagaUc
         gtUdIkfvGsqgxaPenowvGDm79KOvfHhg8rb6UTDBk2T15zfw9BseTJeZKbXN8JW1cIgN
         BYXakT/Z5swSimvDJui0TRVd8YdIBGSiRGmcw=
In-Reply-To: <alpine.LFD.1.10.0808260939070.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, travis-sJ/iWh9BUns@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org

On Tue, Aug 26, 2008 at 9:51 AM, Linus Torvalds
<torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>
>
> On Tue, 26 Aug 2008, Yinghai Lu wrote:
>>
>> wonder if could use "unsigned long *" directly.
>
> I would actually suggest something like this:
>
>  - we continue to have a magic "cpumask_t".
>
>  - we do different cases for big and small NR_CPUS:
>
>        #if NR_CPUS <= BITS_PER_LONG
>
>        /*
>         * Make it an array - that way passing it as an argument will
>         * always pass it as a pointer!
>         */
>        typedef unsigned long cpumask_t[1];
>
>        static inline void create_cpumask(cpumask_t *p)
>        {
>                *p = 0;
>        }
>        static inline void free_cpumask(cpumask_t *p)
>        {
>        }
>
>        #else
>
>        typedef unsigned long *cpumask_t;
>
>        static inline void create_cpumask(cpumask_t *p)
>        {
>                *p = kcalloc(..);
>        }
>
>        static inline void free_cpumask(cpumask_t *p)
>        {
>                kfree(*p);
>        }
>
>        #endif
>
> and now after you do this, you can just do something like
>
>        cpumask_t mycpu;
>
>        create_cpumask(&mycpu);
>        ..
>        free_cpumask(&mycpu);
>
> and in between, you can use 'cpumask' as a pointer, because even when it
> is an array directly allocated on the stack, the array can always
> degenerate into a pointer by C type rules!
>

that is good for local variables.

for global variables, need to allocate them in some point. may need one
int cpumask_size;

cpumask_t online_cpu_map;
DEFINE_DYN_ARRAY(online_cpu_map, sizeof(unsigned long), cpumask_size,
PAGE_SIZE, NULL);

or something like that.

YH
