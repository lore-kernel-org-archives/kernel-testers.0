From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13475] suspend/hibernate lockdep warning
Date: Wed, 17 Jun 2009 10:03:42 -0700
Message-ID: <1245258222.4534.8632.camel@localhost.localdomain>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <20090611152329.GB28099@Krystal>
	 <20090617003925.GA3900@linux-os.sc.intel.com>
	 <200906171729.16272.trenn@suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200906171729.16272.trenn-l3A5Bk7waGM@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
Cc: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Simon Holm =?ISO-8859-1?Q?Th=F8gersen?= <odie-t5LvXY1cjzpaa/9Udqfwiw@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org" <sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org>

On Wed, 2009-06-17 at 08:29 -0700, Thomas Renninger wrote:
> On Wednesday 17 June 2009 02:39:25 Pallipadi, Venkatesh wrote:
> > On Thu, Jun 11, 2009 at 08:23:29AM -0700, Mathieu Desnoyers wrote:
> > > * Simon Holm Th=C3=B8gersen (odie-t5LvXY1cjzpaa/9Udqfwiw@public.gmane.org) wrote:
> > > > man, 08 06 2009 kl. 10:32 -0400, skrev Dave Jones:
> > > > > On Mon, Jun 08, 2009 at 08:48:45AM -0400, Mathieu Desnoyers w=
rote:
> > > > >
> > > > >  > > > >> Bug-Entry       : http://bugzilla.kernel.org/show_b=
ug.cgi?id=3D13475
> > > > >  > > > >> Subject         : suspend/hibernate lockdep warning
> > > > >  > > > >> References      : http://marc.info/?l=3Dlinux-kerne=
l&m=3D124393723321241&w=3D4
> > > > >  > > >
> > > > >  > > > I suspect the following commit, after revert this patc=
h I test 5 times
> > > > >  > > > without lockdep warnings.
> > > > >  > > >
> > > > >  > > > commit b14893a62c73af0eca414cfed505b8c09efc613c
> > > > >  > > > Author: Mathieu Desnoyers <mathieu.desnoyers@polymtl.c=
a>
> > > > >  > > > Date:   Sun May 17 10:30:45 2009 -0400
> > > > >  > > >
> > > > >  > > >  [CPUFREQ] fix timer teardown in ondemand governor
> > > > >  > >
> > > > >  > > The patch is probably not at fault here. I suspect it's =
some latent bug
> > > > >  > > that simply got exposed by the change to cancel_delayed_=
work_sync(). In
> > > > >  > > any case, Mathieu, can you take a look at this please?
> > > > >  >
> > > > >  > Yes, it's been looked at and discussed on the cpufreq ML. =
The short
> > > > >  > answer is that they plan to re-engineer cpufreq and remove=
 the policy
> > > > >  > rwlock taken around almost every operations at the cpufreq=
 level.
> > > > >  >
> > > > >  > The short-term solution, which is recognised as ugly, woul=
d be do to the
> > > > >  > following before doing the cancel_delayed_work_sync() :
> > > > >  >
> > > > >  > unlock policy rwlock write lock
> > > > >  >
> > > > >  > lock policy rwlock write lock
> > > > >  >
> > > > >  > It basically works because this rwlock is unneeded for tea=
rdown, hence
> > > > >  > the future re-work planned.
> > > > >  >
> > > > >  > I'm sorry I cannot prepare a patch current... I've got qui=
te a few pages
> > > > >  > of Ph.D. thesis due for the beginning of July.
> > > > >
> > > > > I'm kinda scared to touch this code at all for .30 due to the=
 number of
> > > > > unexpected gotchas we seem to run into every time we touch so=
mething
> > > > > locking related.  So I'm inclined to just live with the lockd=
ep warning
> > > > > for .30, and see how the real fixes look for .31, and push th=
em back
> > > > > as -stable updates if they work out.
> > > >
> > > > Unfortunately I don't think it is just theoretical, I've actual=
ly hit
> > > > the following (that haven't got anything to do with suspend/hib=
ernate)
> > > >
> > > > INFO: task cpufreqd:4676 blocked for more than 120 seconds.
> > > >  "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables th=
is message.
> > > >  cpufreqd      D eee2ac60     0  4676      1
> > > >   ee01bd68 00000086 eee2aad0 eee2ac60 00000533 eee2aad0 eee2ac6=
0 0002b16f
> > > >   00000000 eee2ac60 7fffffff 7fffffff eee2ac60 7fffffff 7ffffff=
f 00000000
> > > >   ee01bd70 c03117ee ee01bdbc c0311c0c eee2aad0 eecf6900 eee2aad=
0 eecf6900
> > > >  Call Trace:
> > > >   [<c03117ee>] schedule+0x12/0x24
> > > >   [<c0311c0c>] schedule_timeout+0x17/0x170
> > > >   [<c011a4f7>] ? __wake_up+0x2b/0x51
> > > >   [<c0311afd>] wait_for_common+0xc4/0x135
> > > >   [<c011a694>] ? default_wake_function+0x0/0xd
> > > >   [<c0311be0>] wait_for_completion+0x12/0x14
> > > >   [<c012bc6a>] __cancel_work_timer+0xfe/0x129
> > > >   [<c012b635>] ? wq_barrier_func+0x0/0xd
> > > >   [<c012bca0>] cancel_delayed_work_sync+0xb/0xd
> > > >   [<f20948f9>] cpufreq_governor_dbs+0x22e/0x291 [cpufreq_ondema=
nd]
> > > >   [<c02af857>] __cpufreq_governor+0x65/0x9d
> > > >   [<c02af960>] __cpufreq_set_policy+0xd1/0x11f
> > > >   [<c02b02ae>] store_scaling_governor+0x18a/0x1b2
> > > >   [<c02b09a5>] ? handle_update+0x0/0xd
> > > >   [<c02b0124>] ? store_scaling_governor+0x0/0x1b2
> > > >   [<c02b08c9>] store+0x48/0x61
> > > >   [<c01acbf4>] sysfs_write_file+0xb4/0xdf
> > > >   [<c01acb40>] ? sysfs_write_file+0x0/0xdf
> > > >   [<c0175535>] vfs_write+0x8a/0x104
> > > >   [<c0175648>] sys_write+0x3b/0x60
> > > >   [<c0103110>] sysenter_do_call+0x12/0x2c
> > > >  INFO: task kondemand/0:4956 blocked for more than 120 seconds.
> > > >  "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables th=
is message.
> > > >  kondemand/0   D 00000533     0  4956      2
> > > >   ee1d9efc 00000046 c011815f 00000533 071148de ee1e0080 ee1e021=
0 00000000
> > > >   c03ff478 9189e633 00000082 c03ff478 ee1e0210 c04159f4 c04159f=
0 00000000
> > > >   ee1d9f04 c03117ee ee1d9f28 c0313104 ee1d9f30 c04159f4 ee1e008=
0 c01183be
> > > >  Call Trace:
> > > >   [<c011815f>] ? update_curr+0x6c/0x14b
> > > >   [<c03117ee>] schedule+0x12/0x24
> > > >   [<c0313104>] rwsem_down_failed_common+0x150/0x16e
> > > >   [<c01183be>] ? dequeue_task_fair+0x51/0x56
> > > >   [<c031313d>] rwsem_down_write_failed+0x1b/0x23
> > > >   [<c031317e>] call_rwsem_down_write_failed+0x6/0x8
> > > >   [<c03125dd>] ? down_write+0x14/0x16
> > > >   [<c02b0460>] lock_policy_rwsem_write+0x1d/0x33
> > > >   [<f20944aa>] do_dbs_timer+0x45/0x266 [cpufreq_ondemand]
> > > >   [<c012b8f7>] worker_thread+0x165/0x212
> > > >   [<f2094465>] ? do_dbs_timer+0x0/0x266 [cpufreq_ondemand]
> > > >   [<c012e639>] ? autoremove_wake_function+0x0/0x33
> > > >   [<c012b792>] ? worker_thread+0x0/0x212
> > > >   [<c012e278>] kthread+0x42/0x67
> > > >   [<c012e236>] ? kthread+0x0/0x67
> > > >   [<c01038eb>] kernel_thread_helper+0x7/0x10
> > > >
> > > > I've only seen it once in 5 boots and CONFIG_PROVELOCKING does =
not give any
> > > > warnings about this, though it does yell when switching governo=
r as reported
> > > > by others in bug #13493.
> > > >
> > > > Let's hope Mathieu nails it, though I know he's busy with his t=
hesis.
> > > >
> > >
> > > Thanks for the lockdep reports,
> > >
> > > I'm currently looking into it, and it's not pretty. Basically we =
have :
> > >
> > > A
> > >   B
> > > (means B nested in A)
> > >
> > > work
> > >   read rwlock policy
> > >
> > > dbs_mutex
> > >   work
> > >     read rwlock policy
> > >
> > > write rwlock policy
> > >   dbs_mutex
> > >
> > > So the added dbs_mutex <- work <- rwlock policy dependency (for p=
roper
> > > teardown) is firing the reverse dependency between policy rwlock =
and
> > > dbs_mutex.
> > >
> > > The real way to fix this is to do not take the rwlock policy arou=
nd
> > > non-policy-related actions, like governor START/STOP doing worker
> > > creation/teardown.
> > >
> > > One simple short-term solution would be to take a mutex outside o=
f the
> > > policy rwlock write lock in cpufreq.c. This mutex would be the
> > > equivalent of dbs_mutex "lifted" outside of the rwlock write lock=
=2E For
> > > teardown, we only need to hold this mutex, not the rwlock write l=
ock.
> > > Then we can remove the dbs_mutex from the governors.
> > >
> > > But looking at cpufreq.c's cpufreq_add_dev() is very much like ki=
cking a
> > > wasp nest: a lot of error paths are not handled properly, and I f=
ear
> > > someone will have to go through the code, fix the currently incor=
rect
> > > code paths, and then add the lifted mutex.
> > >
> > > I currently have no time for implementation due to my thesis, but=
 I'll
> > > be happy to review a patch.
> > >
> >
> > How about below patch on top of Mathieu's patch here
> > http://marc.info/?l=3Dlinux-kernel&m=3D124448150529838&w=3D2
> >
> > [PATCH] cpufreq: Eliminate lockdep issue with dbs_mutex and policy_=
rwsem
> >
> > This removes the unneeded dependency of
> > write rwlock policy
> >   dbs_mutex
> >
> > dbs_mutex does not have anything to do with timer_init and timer_ex=
it. It
> > is just to protect dbs tunables in sysfs cpufreq/ondemand
> Why is sysfs tunables protection needed at all?
>=20
> The ondemand locking very much looks like taken over from the userspa=
ce
> governor. There you need the lock because a write to set_speed direct=
ly
> calls ->target.
>=20

I was looking at the same thing before sending the patch yesterday. I
don't think the dbs_lock is similar to userspace lock. Infact, I don't
think we need the lock in userspace case, as we will already be holding
policy rwsem in cpufreq, before calling setspeed. But thats a different
story.
=20
> What is urgently missing is a description for what the locks are
> really used, not only in which case they deadlock.
>=20
> From your comment above:
> > dbs_mutex does not have anything to do with timer_init and timer_ex=
it.
> But this is what it seems to do?
> If it's not needed to protect calling timer_init while in timer_exit
> (or the other way around) and sysfs_create_group while
> in sysfs_remove_group I think the mutex can be deleted.
> What do you think about this patch (compile tested only and not
> for .30)?
>=20
> Is someone aware of any test scenarios I could run to try without
> the mutex and run into trouble?
> Do I totally miss something here or does this make sense?
>=20

The reason I left dbs_mutex as is and just removed the init/exit timer
outside the lock was because of the non typical sysfs usage in ondemand=
=2E
We have dbs_attr_group that gets added under each cpu's cpufreq
directory, but they are controlling a single set of ondemand variables.
This mutex is just serializing the changes to those variables. I could'=
t
think of any functionality issues of not having the lock as such.

Thanks,
Venki

