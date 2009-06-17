From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13475] suspend/hibernate lockdep warning
Date: Tue, 16 Jun 2009 17:39:25 -0700
Message-ID: <20090617003925.GA3900@linux-os.sc.intel.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.7vF.2Y7KKB@chimera> <84144f020906070621r1f480eaeief026d23662df380@mail.gmail.com> <a8e1da0906080035j9f8b38drb46132de5a515915@mail.gmail.com> <1244447366.13471.4.camel@penberg-laptop> <20090608124844.GA17588@Krystal> <20090608143220.GC2516@redhat.com> <1244727561.5350.32.camel@odie.local> <20090611152329.GB28099@Krystal>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090611152329.GB28099@Krystal>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Cc: Simon Holm =?iso-8859-1?Q?Th=F8gersen?= <odie-t5LvXY1cjzpaa/9Udqfwiw@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "trenn-l3A5Bk7waGM@public.gmane.org" <trenn-l3A5Bk7waGM@public.gmane.org>, "sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org" <sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org>, "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Thu, Jun 11, 2009 at 08:23:29AM -0700, Mathieu Desnoyers wrote:
> * Simon Holm Th=F8gersen (odie-t5LvXY1cjzpaa/9Udqfwiw@public.gmane.org) wrote:
> > man, 08 06 2009 kl. 10:32 -0400, skrev Dave Jones:=20
> > > On Mon, Jun 08, 2009 at 08:48:45AM -0400, Mathieu Desnoyers wrote=
:
> > > =20
> > >  > > > >> Bug-Entry       : http://bugzilla.kernel.org/show_bug.c=
gi?id=3D13475
> > >  > > > >> Subject         : suspend/hibernate lockdep warning
> > >  > > > >> References      : http://marc.info/?l=3Dlinux-kernel&m=3D=
124393723321241&w=3D4
> > >  > > >=20
> > >  > > > I suspect the following commit, after revert this patch I =
test 5 times
> > >  > > > without lockdep warnings.
> > >  > > >=20
> > >  > > > commit b14893a62c73af0eca414cfed505b8c09efc613c
> > >  > > > Author: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
> > >  > > > Date:   Sun May 17 10:30:45 2009 -0400
> > >  > > >=20
> > >  > > > 	[CPUFREQ] fix timer teardown in ondemand governor
> > >  > >=20
> > >  > > The patch is probably not at fault here. I suspect it's some=
 latent bug
> > >  > > that simply got exposed by the change to cancel_delayed_work=
_sync(). In
> > >  > > any case, Mathieu, can you take a look at this please?
> > >  >=20
> > >  > Yes, it's been looked at and discussed on the cpufreq ML. The =
short
> > >  > answer is that they plan to re-engineer cpufreq and remove the=
 policy
> > >  > rwlock taken around almost every operations at the cpufreq lev=
el.
> > >  >=20
> > >  > The short-term solution, which is recognised as ugly, would be=
 do to the
> > >  > following before doing the cancel_delayed_work_sync() :
> > >  >=20
> > >  > unlock policy rwlock write lock
> > >  >=20
> > >  > lock policy rwlock write lock
> > >  >=20
> > >  > It basically works because this rwlock is unneeded for teardow=
n, hence
> > >  > the future re-work planned.
> > >  >=20
> > >  > I'm sorry I cannot prepare a patch current... I've got quite a=
 few pages
> > >  > of Ph.D. thesis due for the beginning of July.
> > > =20
> > > I'm kinda scared to touch this code at all for .30 due to the num=
ber of
> > > unexpected gotchas we seem to run into every time we touch someth=
ing
> > > locking related.  So I'm inclined to just live with the lockdep w=
arning
> > > for .30, and see how the real fixes look for .31, and push them b=
ack
> > > as -stable updates if they work out.
> >=20
> > Unfortunately I don't think it is just theoretical, I've actually h=
it
> > the following (that haven't got anything to do with suspend/hiberna=
te)
> >=20
> > INFO: task cpufreqd:4676 blocked for more than 120 seconds.
> >  "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this m=
essage.
> >  cpufreqd      D eee2ac60     0  4676      1
> >   ee01bd68 00000086 eee2aad0 eee2ac60 00000533 eee2aad0 eee2ac60 00=
02b16f
> >   00000000 eee2ac60 7fffffff 7fffffff eee2ac60 7fffffff 7fffffff 00=
000000
> >   ee01bd70 c03117ee ee01bdbc c0311c0c eee2aad0 eecf6900 eee2aad0 ee=
cf6900
> >  Call Trace:
> >   [<c03117ee>] schedule+0x12/0x24
> >   [<c0311c0c>] schedule_timeout+0x17/0x170
> >   [<c011a4f7>] ? __wake_up+0x2b/0x51
> >   [<c0311afd>] wait_for_common+0xc4/0x135
> >   [<c011a694>] ? default_wake_function+0x0/0xd
> >   [<c0311be0>] wait_for_completion+0x12/0x14
> >   [<c012bc6a>] __cancel_work_timer+0xfe/0x129
> >   [<c012b635>] ? wq_barrier_func+0x0/0xd
> >   [<c012bca0>] cancel_delayed_work_sync+0xb/0xd
> >   [<f20948f9>] cpufreq_governor_dbs+0x22e/0x291 [cpufreq_ondemand]
> >   [<c02af857>] __cpufreq_governor+0x65/0x9d
> >   [<c02af960>] __cpufreq_set_policy+0xd1/0x11f
> >   [<c02b02ae>] store_scaling_governor+0x18a/0x1b2
> >   [<c02b09a5>] ? handle_update+0x0/0xd
> >   [<c02b0124>] ? store_scaling_governor+0x0/0x1b2
> >   [<c02b08c9>] store+0x48/0x61
> >   [<c01acbf4>] sysfs_write_file+0xb4/0xdf
> >   [<c01acb40>] ? sysfs_write_file+0x0/0xdf
> >   [<c0175535>] vfs_write+0x8a/0x104
> >   [<c0175648>] sys_write+0x3b/0x60
> >   [<c0103110>] sysenter_do_call+0x12/0x2c
> >  INFO: task kondemand/0:4956 blocked for more than 120 seconds.
> >  "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this m=
essage.
> >  kondemand/0   D 00000533     0  4956      2
> >   ee1d9efc 00000046 c011815f 00000533 071148de ee1e0080 ee1e0210 00=
000000
> >   c03ff478 9189e633 00000082 c03ff478 ee1e0210 c04159f4 c04159f0 00=
000000
> >   ee1d9f04 c03117ee ee1d9f28 c0313104 ee1d9f30 c04159f4 ee1e0080 c0=
1183be
> >  Call Trace:
> >   [<c011815f>] ? update_curr+0x6c/0x14b
> >   [<c03117ee>] schedule+0x12/0x24
> >   [<c0313104>] rwsem_down_failed_common+0x150/0x16e
> >   [<c01183be>] ? dequeue_task_fair+0x51/0x56
> >   [<c031313d>] rwsem_down_write_failed+0x1b/0x23
> >   [<c031317e>] call_rwsem_down_write_failed+0x6/0x8
> >   [<c03125dd>] ? down_write+0x14/0x16
> >   [<c02b0460>] lock_policy_rwsem_write+0x1d/0x33
> >   [<f20944aa>] do_dbs_timer+0x45/0x266 [cpufreq_ondemand]
> >   [<c012b8f7>] worker_thread+0x165/0x212
> >   [<f2094465>] ? do_dbs_timer+0x0/0x266 [cpufreq_ondemand]
> >   [<c012e639>] ? autoremove_wake_function+0x0/0x33
> >   [<c012b792>] ? worker_thread+0x0/0x212
> >   [<c012e278>] kthread+0x42/0x67
> >   [<c012e236>] ? kthread+0x0/0x67
> >   [<c01038eb>] kernel_thread_helper+0x7/0x10
> >=20
> > I've only seen it once in 5 boots and CONFIG_PROVELOCKING does not =
give any
> > warnings about this, though it does yell when switching governor as=
 reported
> > by others in bug #13493.
> >=20
> > Let's hope Mathieu nails it, though I know he's busy with his thesi=
s.
> >=20
>=20
> Thanks for the lockdep reports,
>=20
> I'm currently looking into it, and it's not pretty. Basically we have=
 :
>=20
> A
>   B
> (means B nested in A)
>=20
> work
>   read rwlock policy
>=20
> dbs_mutex
>   work
>     read rwlock policy
>=20
> write rwlock policy
>   dbs_mutex
>=20
> So the added dbs_mutex <- work <- rwlock policy dependency (for prope=
r
> teardown) is firing the reverse dependency between policy rwlock and
> dbs_mutex.
>=20
> The real way to fix this is to do not take the rwlock policy around
> non-policy-related actions, like governor START/STOP doing worker
> creation/teardown.
>=20
> One simple short-term solution would be to take a mutex outside of th=
e
> policy rwlock write lock in cpufreq.c. This mutex would be the
> equivalent of dbs_mutex "lifted" outside of the rwlock write lock. Fo=
r
> teardown, we only need to hold this mutex, not the rwlock write lock.
> Then we can remove the dbs_mutex from the governors.
>=20
> But looking at cpufreq.c's cpufreq_add_dev() is very much like kickin=
g a
> wasp nest: a lot of error paths are not handled properly, and I fear
> someone will have to go through the code, fix the currently incorrect
> code paths, and then add the lifted mutex.
>=20
> I currently have no time for implementation due to my thesis, but I'l=
l
> be happy to review a patch.
>=20

How about below patch on top of Mathieu's patch here
http://marc.info/?l=3Dlinux-kernel&m=3D124448150529838&w=3D2

[PATCH] cpufreq: Eliminate lockdep issue with dbs_mutex and policy_rwse=
m

This removes the unneeded dependency of=20
write rwlock policy
  dbs_mutex

dbs_mutex does not have anything to do with timer_init and timer_exit. =
It
is just to protect dbs tunables in sysfs cpufreq/ondemand and is not
needed to be held during timer init, exit as well as during governor li=
mit
changes.

Signed-off-by: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
---
 drivers/cpufreq/cpufreq_ondemand.c |    8 +++-----
 1 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/cpufreq/cpufreq_ondemand.c b/drivers/cpufreq/cpufr=
eq_ondemand.c
index e741c33..1c94ff5 100644
--- a/drivers/cpufreq/cpufreq_ondemand.c
+++ b/drivers/cpufreq/cpufreq_ondemand.c
@@ -352,8 +352,8 @@ static ssize_t store_powersave_bias(struct cpufreq_=
policy *unused,
=20
 	mutex_lock(&dbs_mutex);
 	dbs_tuners_ins.powersave_bias =3D input;
-	ondemand_powersave_bias_init();
 	mutex_unlock(&dbs_mutex);
+	ondemand_powersave_bias_init();
=20
 	return count;
 }
@@ -626,14 +626,14 @@ static int cpufreq_governor_dbs(struct cpufreq_po=
licy *policy,
=20
 			dbs_tuners_ins.sampling_rate =3D def_sampling_rate;
 		}
+		mutex_unlock(&dbs_mutex);
 		dbs_timer_init(this_dbs_info);
=20
-		mutex_unlock(&dbs_mutex);
 		break;
=20
 	case CPUFREQ_GOV_STOP:
-		mutex_lock(&dbs_mutex);
 		dbs_timer_exit(this_dbs_info);
+		mutex_lock(&dbs_mutex);
 		sysfs_remove_group(&policy->kobj, &dbs_attr_group);
 		dbs_enable--;
 		mutex_unlock(&dbs_mutex);
@@ -641,14 +641,12 @@ static int cpufreq_governor_dbs(struct cpufreq_po=
licy *policy,
 		break;
=20
 	case CPUFREQ_GOV_LIMITS:
-		mutex_lock(&dbs_mutex);
 		if (policy->max < this_dbs_info->cur_policy->cur)
 			__cpufreq_driver_target(this_dbs_info->cur_policy,
 				policy->max, CPUFREQ_RELATION_H);
 		else if (policy->min > this_dbs_info->cur_policy->cur)
 			__cpufreq_driver_target(this_dbs_info->cur_policy,
 				policy->min, CPUFREQ_RELATION_L);
-		mutex_unlock(&dbs_mutex);
 		break;
 	}
 	return 0;
--=20
1.6.0.6
