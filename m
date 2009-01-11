From: "Dmitry Adamushko" <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [patch] Re: [Bug #12100] resume (S2R) broken by Intel microcode module, on A110L
Date: Sun, 11 Jan 2009 20:58:28 +0100
Message-ID: <b647ffbd0901111158r467f3358wa50f6a6e92d8129f@mail.gmail.com>
References: <1229728524.5122.13.camel@earth> <20081219233006.GA17984@elte.hu>
	 <20090111145615.GA26173@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=YcF5+AiKcq0fzHmPWdvtLyvekWqTSHuTrLWLFqKpjlI=;
        b=rNX9csNEoBvz7AjZWfForUvBM6Z92w8DraoFSVpdqD+jRDCyouFf/7MmCwoKSrZIn8
         veUcv3SU3ah+a87H/DJB3SHiqhEWMHvmNwrXn5iFyQnOqTk6ELK7h399VExxQeKofpDV
         WbzCkZKDDWJGKa7ksgMWupCUgY86oz4CsOWe0=
In-Reply-To: <20090111145615.GA26173-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: andeas.herrmann3-5C7GfCeVMHo@public.gmane.org, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/1/11 Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>:
>
> * Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>
>> * Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>>
>> > Hi,
>> >
>> >
>> > This is in response to the following bug report:
>> >
>> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12100
>> > Subject         : resume (S2R) broken by Intel microcode module, on A110L
>> > Submitter       : Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>
>> > Date            : 2008-11-25 08:48 (19 days old)
>> > Handled-By      : Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>
>> applied to tip/x86/microcode, thanks Dmitry!
>>
>> The fix looks right but somewhat intrusive in scope, so i'm a bit
>> reluctant to push it towards .28 straight away - without having feedback
>> in the bugzilla. If feedback is positive (the bug reported there goes
>> away completely) we can cherry-pick it over into x86/urgent, ok? And in
>> any case i've marked it as a -stable backport for .28.1.
>
> hm, -tip testing just found this microcode locking lockdep splat:
>
> [   48.004158] SMP alternatives: switching to UP code
> [   48.342853] CPU0 attaching NULL sched-domain.
> [   48.344288] CPU1 attaching NULL sched-domain.
> [   48.354696] CPU0 attaching NULL sched-domain.
> [   48.361215] device: 'cpu1': device_unregister
> [   48.364231] device: 'cpu1': device_create_release
> [   48.368138]
> [   48.368139] =======================================================
> [   48.372039] [ INFO: possible circular locking dependency detected ]
> [   48.372039] 2.6.29-rc1-tip-00901-g9699183-dirty #15577
> [   48.372039] -------------------------------------------------------
> [   48.372039] S99local/3496 is trying to acquire lock:
> [   48.372039]  (microcode_mutex){--..}, at: [<c0118489>] microcode_fini_cpu+0x17/0x2b
> [   48.372039]
> [   48.372039] but task is already holding lock:
> [   48.372039]  (&cpu_hotplug.lock){--..}, at: [<c012f508>] cpu_hotplug_begin+0x1f/0x47
> [   48.372039]
> [   48.372039] which lock already depends on the new lock.
> [   48.372039]
> [   48.372039]
> [   48.372039] the existing dependency chain (in reverse order) is:
> [   48.372039]
> [   48.372039] -> #1 (&cpu_hotplug.lock){--..}:
> [   48.372039]        [<c014d3f1>] validate_chain+0x8e9/0xb94
> [   48.372039]        [<c014dd03>] __lock_acquire+0x667/0x6e1
> [   48.372039]        [<c014ddda>] lock_acquire+0x5d/0x7a
> [   48.372039]        [<c0a6fac3>] mutex_lock_nested+0xdc/0x170
> [   48.372039]        [<c012f552>] get_online_cpus+0x22/0x34
> [   48.372039]        [<c013ce08>] work_on_cpu+0x50/0x8a
> [   48.372039]        [<c0118465>] microcode_init_cpu+0x25/0x32
> [   48.372039]        [<c0118699>] mc_sysdev_add+0x91/0x9b
> [   48.372039]        [<c04cbd09>] sysdev_driver_register+0x9b/0xea

I'll check more carefully... At the first glance, the presence of
work_on_cpu() looks strange.

My first idea was that it's used somewhere by request_firmware() but
even assuming some functions might have been inlined (and a call via a
function pointer is not shown either), I don't immediately see how we
might end up with microcode_init_cpu() -> ... -> work_on_cpu().

I've locked up all the use cases of work_on_cpu() in the current -tip
(about 20), and none of them seem to explain its appearance in the
trace. weird...


>
>        Ingo
>

-- 
Best regards,
Dmitry Adamushko
