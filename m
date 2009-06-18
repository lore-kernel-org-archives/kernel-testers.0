From: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13475] suspend/hibernate lockdep warning
Date: Thu, 18 Jun 2009 13:46:33 +0800
Message-ID: <a8e1da0906172246n5553a698x82d8ec1707bed56f@mail.gmail.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.7vF.2Y7KKB@chimera>
	 <84144f020906070621r1f480eaeief026d23662df380@mail.gmail.com>
	 <a8e1da0906080035j9f8b38drb46132de5a515915@mail.gmail.com>
	 <1244447366.13471.4.camel@penberg-laptop>
	 <20090608124844.GA17588@Krystal> <20090608143220.GC2516@redhat.com>
	 <1244727561.5350.32.camel@odie.local> <20090611152329.GB28099@Krystal>
	 <20090617003925.GA3900@linux-os.sc.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=1sS2Ek+Fc0g61Wnz4es8havv6jCg3usMxcFVfpTle/M=;
        b=VXY8+BnWzgkoQJEOXPjrIvdZNJmSvLe8zCmT/PMrASRGFJLIRirgMiO8UV7L0gf25S
         7LFvL5sP8k2LvIwAKpsqDkut/iKjEwAdk4xeoJO9ft3WFrYeATqv8gyhgY0bF/eezC0h
         W6+t3VkXCkGiXrbeaP2oglaDjCnMJl3VMvQ2k=
In-Reply-To: <20090617003925.GA3900-UEgXbdCqpo40dzWUSSna/BL4W9x8LtSr@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, =?UTF-8?Q?Simon_Holm_Th=C3=B8gersen?= <odie-t5LvXY1cjzpaa/9Udqfwiw@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "trenn-l3A5Bk7waGM@public.gmane.org" <trenn-l3A5Bk7waGM@public.gmane.org>, "sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org" <sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org>

On Wed, Jun 17, 2009 at 8:39 AM, Pallipadi,
Venkatesh<venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org> wrote:
> On Thu, Jun 11, 2009 at 08:23:29AM -0700, Mathieu Desnoyers wrote:
>> * Simon Holm Th=C3=B8gersen (odie-t5LvXY1cjzpaa/9Udqfwiw@public.gmane.org) wrote:
>> > man, 08 06 2009 kl. 10:32 -0400, skrev Dave Jones:
>> > > On Mon, Jun 08, 2009 at 08:48:45AM -0400, Mathieu Desnoyers wrot=
e:
>> > >
>> > > =C2=A0> > > >> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.=
kernel.org/show_bug.cgi?id=3D13475
>> > > =C2=A0> > > >> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : suspend/hib=
ernate lockdep warning
>> > > =C2=A0> > > >> References =C2=A0 =C2=A0 =C2=A0: http://marc.info=
/?l=3Dlinux-kernel&m=3D124393723321241&w=3D4
>> > > =C2=A0> > >
>> > > =C2=A0> > > I suspect the following commit, after revert this pa=
tch I test 5 times
>> > > =C2=A0> > > without lockdep warnings.
>> > > =C2=A0> > >
>> > > =C2=A0> > > commit b14893a62c73af0eca414cfed505b8c09efc613c
>> > > =C2=A0> > > Author: Mathieu Desnoyers <mathieu.desnoyers@polymtl=
=2Eca>
>> > > =C2=A0> > > Date: =C2=A0 Sun May 17 10:30:45 2009 -0400
>> > > =C2=A0> > >
>> > > =C2=A0> > > =C2=A0 =C2=A0[CPUFREQ] fix timer teardown in ondeman=
d governor
>> > > =C2=A0> >
>> > > =C2=A0> > The patch is probably not at fault here. I suspect it'=
s some latent bug
>> > > =C2=A0> > that simply got exposed by the change to cancel_delaye=
d_work_sync(). In
>> > > =C2=A0> > any case, Mathieu, can you take a look at this please?
>> > > =C2=A0>
>> > > =C2=A0> Yes, it's been looked at and discussed on the cpufreq ML=
=2E The short
>> > > =C2=A0> answer is that they plan to re-engineer cpufreq and remo=
ve the policy
>> > > =C2=A0> rwlock taken around almost every operations at the cpufr=
eq level.
>> > > =C2=A0>
>> > > =C2=A0> The short-term solution, which is recognised as ugly, wo=
uld be do to the
>> > > =C2=A0> following before doing the cancel_delayed_work_sync() :
>> > > =C2=A0>
>> > > =C2=A0> unlock policy rwlock write lock
>> > > =C2=A0>
>> > > =C2=A0> lock policy rwlock write lock
>> > > =C2=A0>
>> > > =C2=A0> It basically works because this rwlock is unneeded for t=
eardown, hence
>> > > =C2=A0> the future re-work planned.
>> > > =C2=A0>
>> > > =C2=A0> I'm sorry I cannot prepare a patch current... I've got q=
uite a few pages
>> > > =C2=A0> of Ph.D. thesis due for the beginning of July.
>> > >
>> > > I'm kinda scared to touch this code at all for .30 due to the nu=
mber of
>> > > unexpected gotchas we seem to run into every time we touch somet=
hing
>> > > locking related. =C2=A0So I'm inclined to just live with the loc=
kdep warning
>> > > for .30, and see how the real fixes look for .31, and push them =
back
>> > > as -stable updates if they work out.
>> >
>> > Unfortunately I don't think it is just theoretical, I've actually =
hit
>> > the following (that haven't got anything to do with suspend/hibern=
ate)
>> >
>> > INFO: task cpufreqd:4676 blocked for more than 120 seconds.
>> > =C2=A0"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables =
this message.
>> > =C2=A0cpufreqd =C2=A0 =C2=A0 =C2=A0D eee2ac60 =C2=A0 =C2=A0 0 =C2=A0=
4676 =C2=A0 =C2=A0 =C2=A01
>> > =C2=A0 ee01bd68 00000086 eee2aad0 eee2ac60 00000533 eee2aad0 eee2a=
c60 0002b16f
>> > =C2=A0 00000000 eee2ac60 7fffffff 7fffffff eee2ac60 7fffffff 7ffff=
fff 00000000
>> > =C2=A0 ee01bd70 c03117ee ee01bdbc c0311c0c eee2aad0 eecf6900 eee2a=
ad0 eecf6900
>> > =C2=A0Call Trace:
>> > =C2=A0 [<c03117ee>] schedule+0x12/0x24
>> > =C2=A0 [<c0311c0c>] schedule_timeout+0x17/0x170
>> > =C2=A0 [<c011a4f7>] ? __wake_up+0x2b/0x51
>> > =C2=A0 [<c0311afd>] wait_for_common+0xc4/0x135
>> > =C2=A0 [<c011a694>] ? default_wake_function+0x0/0xd
>> > =C2=A0 [<c0311be0>] wait_for_completion+0x12/0x14
>> > =C2=A0 [<c012bc6a>] __cancel_work_timer+0xfe/0x129
>> > =C2=A0 [<c012b635>] ? wq_barrier_func+0x0/0xd
>> > =C2=A0 [<c012bca0>] cancel_delayed_work_sync+0xb/0xd
>> > =C2=A0 [<f20948f9>] cpufreq_governor_dbs+0x22e/0x291 [cpufreq_onde=
mand]
>> > =C2=A0 [<c02af857>] __cpufreq_governor+0x65/0x9d
>> > =C2=A0 [<c02af960>] __cpufreq_set_policy+0xd1/0x11f
>> > =C2=A0 [<c02b02ae>] store_scaling_governor+0x18a/0x1b2
>> > =C2=A0 [<c02b09a5>] ? handle_update+0x0/0xd
>> > =C2=A0 [<c02b0124>] ? store_scaling_governor+0x0/0x1b2
>> > =C2=A0 [<c02b08c9>] store+0x48/0x61
>> > =C2=A0 [<c01acbf4>] sysfs_write_file+0xb4/0xdf
>> > =C2=A0 [<c01acb40>] ? sysfs_write_file+0x0/0xdf
>> > =C2=A0 [<c0175535>] vfs_write+0x8a/0x104
>> > =C2=A0 [<c0175648>] sys_write+0x3b/0x60
>> > =C2=A0 [<c0103110>] sysenter_do_call+0x12/0x2c
>> > =C2=A0INFO: task kondemand/0:4956 blocked for more than 120 second=
s.
>> > =C2=A0"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables =
this message.
>> > =C2=A0kondemand/0 =C2=A0 D 00000533 =C2=A0 =C2=A0 0 =C2=A04956 =C2=
=A0 =C2=A0 =C2=A02
>> > =C2=A0 ee1d9efc 00000046 c011815f 00000533 071148de ee1e0080 ee1e0=
210 00000000
>> > =C2=A0 c03ff478 9189e633 00000082 c03ff478 ee1e0210 c04159f4 c0415=
9f0 00000000
>> > =C2=A0 ee1d9f04 c03117ee ee1d9f28 c0313104 ee1d9f30 c04159f4 ee1e0=
080 c01183be
>> > =C2=A0Call Trace:
>> > =C2=A0 [<c011815f>] ? update_curr+0x6c/0x14b
>> > =C2=A0 [<c03117ee>] schedule+0x12/0x24
>> > =C2=A0 [<c0313104>] rwsem_down_failed_common+0x150/0x16e
>> > =C2=A0 [<c01183be>] ? dequeue_task_fair+0x51/0x56
>> > =C2=A0 [<c031313d>] rwsem_down_write_failed+0x1b/0x23
>> > =C2=A0 [<c031317e>] call_rwsem_down_write_failed+0x6/0x8
>> > =C2=A0 [<c03125dd>] ? down_write+0x14/0x16
>> > =C2=A0 [<c02b0460>] lock_policy_rwsem_write+0x1d/0x33
>> > =C2=A0 [<f20944aa>] do_dbs_timer+0x45/0x266 [cpufreq_ondemand]
>> > =C2=A0 [<c012b8f7>] worker_thread+0x165/0x212
>> > =C2=A0 [<f2094465>] ? do_dbs_timer+0x0/0x266 [cpufreq_ondemand]
>> > =C2=A0 [<c012e639>] ? autoremove_wake_function+0x0/0x33
>> > =C2=A0 [<c012b792>] ? worker_thread+0x0/0x212
>> > =C2=A0 [<c012e278>] kthread+0x42/0x67
>> > =C2=A0 [<c012e236>] ? kthread+0x0/0x67
>> > =C2=A0 [<c01038eb>] kernel_thread_helper+0x7/0x10
>> >
>> > I've only seen it once in 5 boots and CONFIG_PROVELOCKING does not=
 give any
>> > warnings about this, though it does yell when switching governor a=
s reported
>> > by others in bug #13493.
>> >
>> > Let's hope Mathieu nails it, though I know he's busy with his thes=
is.
>> >
>>
>> Thanks for the lockdep reports,
>>
>> I'm currently looking into it, and it's not pretty. Basically we hav=
e :
>>
>> A
>> =C2=A0 B
>> (means B nested in A)
>>
>> work
>> =C2=A0 read rwlock policy
>>
>> dbs_mutex
>> =C2=A0 work
>> =C2=A0 =C2=A0 read rwlock policy
>>
>> write rwlock policy
>> =C2=A0 dbs_mutex
>>
>> So the added dbs_mutex <- work <- rwlock policy dependency (for prop=
er
>> teardown) is firing the reverse dependency between policy rwlock and
>> dbs_mutex.
>>
>> The real way to fix this is to do not take the rwlock policy around
>> non-policy-related actions, like governor START/STOP doing worker
>> creation/teardown.
>>
>> One simple short-term solution would be to take a mutex outside of t=
he
>> policy rwlock write lock in cpufreq.c. This mutex would be the
>> equivalent of dbs_mutex "lifted" outside of the rwlock write lock. F=
or
>> teardown, we only need to hold this mutex, not the rwlock write lock=
=2E
>> Then we can remove the dbs_mutex from the governors.
>>
>> But looking at cpufreq.c's cpufreq_add_dev() is very much like kicki=
ng a
>> wasp nest: a lot of error paths are not handled properly, and I fear
>> someone will have to go through the code, fix the currently incorrec=
t
>> code paths, and then add the lifted mutex.
>>
>> I currently have no time for implementation due to my thesis, but I'=
ll
>> be happy to review a patch.
>>
>
> How about below patch on top of Mathieu's patch here
> http://marc.info/?l=3Dlinux-kernel&m=3D124448150529838&w=3D2
>
> [PATCH] cpufreq: Eliminate lockdep issue with dbs_mutex and policy_rw=
sem
>
> This removes the unneeded dependency of
> write rwlock policy
> =C2=A0dbs_mutex
>
> dbs_mutex does not have anything to do with timer_init and timer_exit=
=2E It
> is just to protect dbs tunables in sysfs cpufreq/ondemand and is not
> needed to be held during timer init, exit as well as during governor =
limit
> changes.
>
> Signed-off-by: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> ---
> =C2=A0drivers/cpufreq/cpufreq_ondemand.c | =C2=A0 =C2=A08 +++-----
> =C2=A01 files changed, 3 insertions(+), 5 deletions(-)

latest linux-2.6 git + this patch, hibernate test result:

[  221.956815]
[  221.956817] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[  221.957017] [ INFO: possible circular locking dependency detected ]
[  221.957173] 2.6.30-06692-g3fe0344-dirty #77
[  221.957276] -------------------------------------------------------
[  221.957431] 94cpufreq/1914 is trying to acquire lock:
[  221.957561]  (&(&dbs_info->work)->work){+.+...}, at: [<c1037f46>]
__cancel_work_timer+0x8c/0x18c
[  221.958034]
[  221.958036] but task is already holding lock:
[  221.958336]  (&per_cpu(cpu_policy_rwsem, cpu)){+++++.}, at:
[<c1284528>] lock_policy_rwsem_write+0x33/0x5b
[  221.958850]
[  221.958852] which lock already depends on the new lock.
[  221.958855]
[  221.959258]
[  221.959260] the existing dependency chain (in reverse order) is:
[  221.959625]
[  221.959627] -> #1 (&per_cpu(cpu_policy_rwsem, cpu)){+++++.}:
[  221.959994]        [<c1049d0f>] __lock_acquire+0x91e/0xaa9
[  221.959994]        [<c1049f35>] lock_acquire+0x9b/0xbe
[  221.959994]        [<c1335fed>] down_write+0x2f/0x4b
[  221.959994]        [<c1284528>] lock_policy_rwsem_write+0x33/0x5b
[  221.959994]        [<c1286097>] do_dbs_timer+0x45/0x23b
[  221.959994]        [<c103851e>] worker_thread+0x170/0x23c
[  221.959994]        [<c103ad8b>] kthread+0x45/0x6e
[  221.959994]        [<c1003dc7>] kernel_thread_helper+0x7/0x10
[  221.959994]        [<ffffffff>] 0xffffffff
[  221.959994]
[  221.959994] -> #0 (&(&dbs_info->work)->work){+.+...}:
[  221.959994]        [<c1049c1f>] __lock_acquire+0x82e/0xaa9
[  221.959994]        [<c1049f35>] lock_acquire+0x9b/0xbe
[  221.959994]        [<c1037f71>] __cancel_work_timer+0xb7/0x18c
[  221.959994]        [<c1038051>] cancel_delayed_work_sync+0xb/0xd
[  221.959994]        [<c1286484>] cpufreq_governor_dbs+0x1f7/0x263
[  221.959994]        [<c1283b13>] __cpufreq_governor+0x66/0x9d
[  221.959994]        [<c1283c89>] __cpufreq_set_policy+0x13f/0x1c3
[  221.959994]        [<c1284151>] store_scaling_governor+0x159/0x188
[  221.959994]        [<c1284d12>] store+0x42/0x5b
[  221.959994]        [<c10d783d>] sysfs_write_file+0xb8/0xe3
[  221.959994]        [<c109937e>] vfs_write+0x82/0xdc
[  221.959994]        [<c109946d>] sys_write+0x3b/0x5d
[  221.959994]        [<c100331d>] syscall_call+0x7/0xb
[  221.959994]        [<ffffffff>] 0xffffffff
[  221.959994]
[  221.959994] other info that might help us debug this:
[  221.959994]
[  221.959994] 2 locks held by 94cpufreq/1914:
[  221.959994]  #0:  (&buffer->mutex){+.+.+.}, at: [<c10d77aa>]
sysfs_write_file+0x25/0xe3
[  221.959994]  #1:  (&per_cpu(cpu_policy_rwsem, cpu)){+++++.}, at:
[<c1284528>] lock_policy_rwsem_write+0x33/0x5b
[  221.959994]
[  221.959994] stack backtrace:
[  221.959994] Pid: 1914, comm: 94cpufreq Not tainted
2.6.30-06692-g3fe0344-dirty #77
[  221.959994] Call Trace:
[  221.959994]  [<c1048895>] print_circular_bug_tail+0x5d/0x68
[  221.959994]  [<c1049c1f>] __lock_acquire+0x82e/0xaa9
[  221.959994]  [<c1048415>] ? mark_lock+0x1e/0x1c7
[  221.959994]  [<c1049f35>] lock_acquire+0x9b/0xbe
[  221.959994]  [<c1037f46>] ? __cancel_work_timer+0x8c/0x18c
[  221.959994]  [<c1037f71>] __cancel_work_timer+0xb7/0x18c
[  221.959994]  [<c1037f46>] ? __cancel_work_timer+0x8c/0x18c
[  221.959994]  [<c1048601>] ? mark_held_locks+0x43/0x5b
[  221.959994]  [<c1335972>] ? __mutex_unlock_slowpath+0xf1/0x101
[  221.959994]  [<c104876a>] ? trace_hardirqs_on+0xb/0xd
[  221.959994]  [<c1038051>] cancel_delayed_work_sync+0xb/0xd
[  221.959994]  [<c1286484>] cpufreq_governor_dbs+0x1f7/0x263
[  221.959994]  [<c103e02b>] ? up_read+0x16/0x29
[  221.959994]  [<c1283b13>] __cpufreq_governor+0x66/0x9d
[  221.959994]  [<c1283c89>] __cpufreq_set_policy+0x13f/0x1c3
[  221.959994]  [<c1283ff8>] ? store_scaling_governor+0x0/0x188
[  221.959994]  [<c1284151>] store_scaling_governor+0x159/0x188
[  221.959994]  [<c1284659>] ? handle_update+0x0/0x28
[  221.959994]  [<c1284528>] ? lock_policy_rwsem_write+0x33/0x5b
[  221.959994]  [<c1283ff8>] ? store_scaling_governor+0x0/0x188
[  221.959994]  [<c1284d12>] store+0x42/0x5b
[  221.959994]  [<c10d783d>] sysfs_write_file+0xb8/0xe3
[  221.959994]  [<c109937e>] vfs_write+0x82/0xdc
[  221.959994]  [<c10d7785>] ? sysfs_write_file+0x0/0xe3
[  221.959994]  [<c109946d>] sys_write+0x3b/0x5d
[  221.959994]  [<c100331d>] syscall_call+0x7/0xb
[  222.336101] PM: Marking nosave pages: 000000000009f000 - 00000000001=
00000
[  222.340205] PM: Basic memory bitmaps created
[  222.344226] PM: Syncing filesystems ... done.
>
> diff --git a/drivers/cpufreq/cpufreq_ondemand.c b/drivers/cpufreq/cpu=
freq_ondemand.c
> index e741c33..1c94ff5 100644
> --- a/drivers/cpufreq/cpufreq_ondemand.c
> +++ b/drivers/cpufreq/cpufreq_ondemand.c
> @@ -352,8 +352,8 @@ static ssize_t store_powersave_bias(struct cpufre=
q_policy *unused,
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_lock(&dbs_mutex);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0dbs_tuners_ins.powersave_bias =3D input;
> - =C2=A0 =C2=A0 =C2=A0 ondemand_powersave_bias_init();
> =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&dbs_mutex);
> + =C2=A0 =C2=A0 =C2=A0 ondemand_powersave_bias_init();
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0return count;
> =C2=A0}
> @@ -626,14 +626,14 @@ static int cpufreq_governor_dbs(struct cpufreq_=
policy *policy,
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0dbs_tuners_ins.sampling_rate =3D def_sampling_rate;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&dbs_=
mutex);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dbs_timer_init=
(this_dbs_info);
>
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&dbs_=
mutex);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0case CPUFREQ_GOV_STOP:
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_lock(&dbs_mu=
tex);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dbs_timer_exit=
(this_dbs_info);
> + =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_lock(&dbs_mu=
tex);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sysfs_remove_g=
roup(&policy->kobj, &dbs_attr_group);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dbs_enable--;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mutex_unlock(&=
dbs_mutex);
> @@ -641,14 +641,12 @@ static int cpufreq_governor_dbs(struct cpufreq_=
policy *policy,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0case CPUFREQ_GOV_LIMITS:
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_lock(&dbs_mu=
tex);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (policy->ma=
x < this_dbs_info->cur_policy->cur)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0__cpufreq_driver_target(this_dbs_info->cur_policy,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0policy->max, CPUFREQ_RELATION=
_H);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else if (polic=
y->min > this_dbs_info->cur_policy->cur)
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0__cpufreq_driver_target(this_dbs_info->cur_policy,
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0policy->min, CPUFREQ_RELATION=
_L);
> - =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&dbs_=
mutex);
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;
> =C2=A0 =C2=A0 =C2=A0 =C2=A0}
> =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0;
> --
> 1.6.0.6
>
>



--=20
Regards
dave
