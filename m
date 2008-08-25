From: Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Mon, 25 Aug 2008 13:45:26 -0700
Message-ID: <48B319E6.3080508@linux.intel.com>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <VSpL6AnBTS.A.q9H.6aGsIB@albercik> <alpine.LFD.1.10.0808231257310.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808231313170.3363@nehalem.linux-foundation.org> <48B29F7B.6080405@hp.com> <48B2A421.7080705@hp.com> <alpine.LFD.1.10.0808251019380.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251106270.3363@nehalem.linux-foundation.org> <48B313E0.1000501@hp.com> <alpine.LFD.1.10.0808251326500.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808251326500.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>

Linus Torvalds wrote:
> On Mon, 25 Aug 2008, Alan D. Brunelle wrote:
>> Mine has:
>>
>> Dump of assembler code for function sys_init_module:
>> 0xffffffff802688c4 <sys_init_module+4>:	sub    $0x1c0,%rsp
>>
>> so 448 bytes.
> 
> Yeah, your build seems to have consistently bigger stack usage, and that 
> may be due to some config option, but most likely it's a compiler version 
> issue.
> 

I wonder if we ought to have a light version of "make checkstack" always run,
but in such a way that we make a file with "limits" on the stack usage for key
functions (and we can grow this list over time when we learn about critical ones)..
and either warn very loudly or even fail the build if we're way over what could work.
