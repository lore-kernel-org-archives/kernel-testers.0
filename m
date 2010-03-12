From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Boot failure 2.6.33 - 2.6.33-git12 inclusive
Date: Fri, 12 Mar 2010 11:01:55 +0800
Message-ID: <2375c9f91003111901s77c4851emee33d9efe1f5bb14@mail.gmail.com>
References: <4B99736D.2070801@blueyonder.co.uk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=SwBKVFg/D+96gW9U8dVmHWXRXedpVz6fNWa75x7Pq2s=;
        b=BuP9NQn7r3RjeFvCpFfj3fmxPx5VQZtemct2uI4mKLO1/Qa7t/0bEuFqd6IfzA9jGW
         atIDp4rismSqvDKbi1C7ge/PNG06WMQc6aGGIYeWP4xCLlGg1YMKwpGF0/d4EHTeCJOH
         eFMoma4kP35/if2FoBDvFuhVW07ki0ZbKP0Lo=
In-Reply-To: <4B99736D.2070801-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: sboyce-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Fri, Mar 12, 2010 at 6:49 AM, Sid Boyce <sboyce-QgLWrMLu8clzjhtm8Ag3mw@public.gmane.org> wrote:
> Same problem up to 2.6.33-git15 and 2.6.34-rc1. No response since posted
> to LKML last week.
> --------------------------------------------------


You need to Cc x86 people. Added.


>
> Asus Crosshair II motherboard, 4xCPU 8Gig storage fails, the M2N32-SLI
> 2x CPU, 4 Gig and laptop 2x CPU, 2 Gig have no problems running
> 2.6.33-git11 - all AMD CPU's.
> Lockup requiring a hard reset.
>
> TCP cubic registered
> registered taskstats version 1
> Kmemleak: kernel memory leak detector initialized
> Kmemleak: Automatic memory scanning thread started
> No TPM chip found, activating TPM-bypass!
> Freeing unused kernel memory: 688K freed
> Write Protecting kernel memory read-only data: 6144K
> Testing CPA: undo ffffffff81000000 - ffffffff81600000
> Testing CPA: again
> Freeing unused kernel memory: 964K freed
> Freeing unused kernel memory: 212K freed
> init[1] segfault at ffffffff8100eea8 ip ffffffff8100eea8 sp
> 00007fff62e804b8 error 15
> kernel panic - not syncing: Attempted to kill init!
> Pid: 1,comm: init not tainted 2.6.33-git12-smp #2
> Call Trace:
> [<ffffffff81300876>] panic+0x73/0xfa
> [<ffffffff8104b45c>] do_exit+0x6d/0x713
> [<ffffffff8104bd85>] do_group_exit+0x72/0x9b
> [<ffffffff8105917e>] get_signal_to_deliver+0x356/0x375
> [<ffffffff8130310b>] ? _raw_spin_unlock_irqrestore+0x2f/0x34
> [<ffffffff81007fc3>] do_signal+0x6d/0x660
> [<ffffffff81300939>] ? printk+0x3c/0x43
> [<ffffffff8100eea8>] ? rdtsc_barrier+0x0/0xc
> [<ffffffff81300939>] ? printk+0x3c/0x43
> [<ffffffff8102b78c>] ? __bad_area_nosemaphore+0x183/0x1ad
> [<ffffffff8100eea8>] ? rdtsc_barrier+0x0/0xc
> [<ffffffff810085fc>] do_notify_resume+0x27/0x69
> [<ffffffff8130351c>] retint_signal+0x48/0x8c
> [<ffffffff8100eea8>] ? rdtsc_barrier+0x0/0xc
>
> Regards
> Sid.
> --
> Sid Boyce ... Hamradio License G3VBV, Licensed Private Pilot
> Emeritus IBM/Amdahl Mainframes and Sun/Fujitsu Servers Tech Support
> Specialist, Cricket Coach
> Microsoft Windows Free Zone - Linux used for all Computing Tasks
>
>
>
