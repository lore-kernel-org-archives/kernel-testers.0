From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13424] possible deadlock when doing governor switching
Date: Mon, 29 Jun 2009 11:37:45 -0700
Message-ID: <1246300665.4534.26170.camel@localhost.localdomain>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <5Hhc7UkUKEO.A.IOG.9jASKB@chimera>  <20090629012558.GA22666@Krystal>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090629012558.GA22666@Krystal>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Li, Shaohua" <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org

On Sun, 2009-06-28 at 18:25 -0700, Mathieu Desnoyers wrote:
> * Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.29 and 2.6.30.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> 
> Yep, it still exists. Venkatesh Pallipadi from Intel is working on it.
> We need to figure out a proper way to fix policy rwlock vs dbs_mutex vs
> timer mutex dependency.
> 

Yes. Still working on it. I thought I had a fix for this. But, over the
weekend test run resulted in a WARN_ON with sysfs_remove_group as below.
Looks like I need a day or two more to work through the web of locks
here..

Thanks,
Venki

[10412.466195] ------------[ cut here ]------------
[10412.466201] WARNING:
at /home/venkip/src/linus/linux-2.6/fs/sysfs/group.c:138
sysfs_remove_group+0x3e/0xa3()
[10412.466204] Hardware name: Santa Rosa platform
[10412.466206] sysfs group c16df3b0 not found for kobject 'cpufreq'
[10412.466207] Modules linked in:
[10412.466210] Pid: 20609, comm: write_syscpufre Not tainted 2.6.31-rc1
#195
[10412.466212] Call Trace:
[10412.466217]  [<c102a0a4>] warn_slowpath_common+0x60/0x90
[10412.466220]  [<c102a108>] warn_slowpath_fmt+0x24/0x27
[10412.466223]  [<c10e0422>] sysfs_remove_group+0x3e/0xa3
[10412.466227]  [<c131b7fc>] cpufreq_governor_dbs+0x1f7/0x25b
[10412.466231]  [<c1319469>] __cpufreq_governor+0x7c/0xb3
[10412.466234]  [<c1319608>] __cpufreq_set_policy+0x13f/0x1c3
[10412.466238]  [<c1319e74>] store_scaling_governor+0x18a/0x1b2
[10412.466241]  [<c131aa50>] ? handle_update+0x0/0x28
[10412.466244]  [<c131a2a5>] ? lock_policy_rwsem_write+0x33/0x5b
[10412.466247]  [<c1319cea>] ? store_scaling_governor+0x0/0x1b2
[10412.466250]  [<c131a942>] store+0x48/0x61
[10412.466254]  [<c10de532>] sysfs_write_file+0xb4/0xdf
[10412.466265]  [<c10de47e>] ? sysfs_write_file+0x0/0xdf
[10412.466269]  [<c10a0172>] vfs_write+0x84/0xdf
[10412.466272]  [<c10a0266>] sys_write+0x3b/0x60
[10412.466276]  [<c1002a04>] sysenter_do_call+0x12/0x22
[10412.466278] ---[ end trace 31a730d96cbc1841 ]---

