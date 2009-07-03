From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: RE: [patch 2.6.30 2/4] CPUFREQ: fix (utter) cpufreq_add_dev mess
Date: Fri, 3 Jul 2009 12:24:43 -0700
Message-ID: <7E82351C108FA840AB1866AC776AEC4669BFF0F5@orsmsx505.amr.corp.intel.com>
References: <20090703152514.903448283@polymtl.ca>
 <20090703152714.775719309@polymtl.ca>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090703152714.775719309-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Content-Language: en-US
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, cpu
Cc: "Li, Shaohua" <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org" <sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org>

 

>-----Original Message-----
>From: Mathieu Desnoyers [mailto:mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org] 
>Sent: Friday, July 03, 2009 8:25 AM
>To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; Pallipadi, Venkatesh; Dave 
>Jones; Thomas Renninger; cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; 
>kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; Ingo Molnar; rjw-KKrjLPT3xs0@public.gmane.org; Dave 
>Young; Pekka Enberg
>Cc: Mathieu Desnoyers; Li, Shaohua; Rusty Russell; 
>sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org
>Subject: [patch 2.6.30 2/4] CPUFREQ: fix (utter) cpufreq_add_dev mess
>
>OK, I've tried to clean it up the best I could, but please 
>test this with
>concurrent cpu hotplug and cpufreq add/remove in loops. I'm 
>sure we will make
>other interesting findings.
>

This is a good and needed cleanup of cpufreq_add_dev.


>This is step one of fixing the overall locking dependency mess 
>in cpufreq.
>
>Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
>CC: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>CC: rjw-KKrjLPT3xs0@public.gmane.org
>CC: mingo-X9Un+BFzKDI@public.gmane.org
>CC: Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>CC: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
>CC: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>CC: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
>CC: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
>CC: sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org
>CC: cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>CC: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
>---
> drivers/cpufreq/cpufreq.c |   65 
>++++++++++++++++++++++++++++------------------
> 1 file changed, 40 insertions(+), 25 deletions(-)
>
>Index: linux-2.6-lttng/drivers/cpufreq/cpufreq.c
>===================================================================
>--- linux-2.6-lttng.orig/drivers/cpufreq/cpufreq.c	
>2009-07-02 23:59:08.000000000 -0400
>+++ linux-2.6-lttng/drivers/cpufreq/cpufreq.c	2009-07-02 
>23:59:09.000000000 -0400
>@@ -763,6 +763,10 @@ static struct kobj_type ktype_cpufreq = 
>  * cpufreq_add_dev - add a CPU device
>  *
>  * Adds the cpufreq interface for a CPU device.
>+ *
>+ * The Oracle says: try running cpufreq 
>registration/unregistration concurrently
>+ * with with cpu hotplugging and all hell will break loose. 
>Tried to clean this
>+ * mess up, but more thorough testing is needed. - Mathieu
>  */
> static int cpufreq_add_dev(struct sys_device *sys_dev)
> {
>@@ -806,15 +810,12 @@ static int cpufreq_add_dev(struct sys_de
> 		goto nomem_out;
> 	}
> 	if (!alloc_cpumask_var(&policy->cpus, GFP_KERNEL)) {
>-		kfree(policy);
> 		ret = -ENOMEM;
>-		goto nomem_out;
>+		goto err_free_policy;
> 	}
> 	if (!zalloc_cpumask_var(&policy->related_cpus, GFP_KERNEL)) {
>-		free_cpumask_var(policy->cpus);
>-		kfree(policy);
> 		ret = -ENOMEM;
>-		goto nomem_out;
>+		goto err_free_cpumask;
> 	}
> 
> 	policy->cpu = cpu;
>@@ -822,7 +823,8 @@ static int cpufreq_add_dev(struct sys_de
> 
> 	/* Initially set CPU itself as the policy_cpu */
> 	per_cpu(policy_cpu, cpu) = cpu;
>-	lock_policy_rwsem_write(cpu);
>+	ret = (lock_policy_rwsem_write(cpu) < 0);
>+	WARN_ON(ret);
> 
> 	init_completion(&policy->kobj_unregister);
> 	INIT_WORK(&policy->update, handle_update);
>@@ -835,7 +837,7 @@ static int cpufreq_add_dev(struct sys_de
> 	ret = cpufreq_driver->init(policy);
> 	if (ret) {
> 		dprintk("initialization failed\n");
>-		goto err_out;
>+		goto err_unlock_policy;
> 	}
> 	policy->user_policy.min = policy->min;
> 	policy->user_policy.max = policy->max;
>@@ -860,15 +862,21 @@ static int cpufreq_add_dev(struct sys_de
> 		/* Check for existing affected CPUs.
> 		 * They may not be aware of it due to CPU Hotplug.
> 		 */
>-		managed_policy = cpufreq_cpu_get(j);		
>/* FIXME: Where is this released?  What about error paths? */
>+		managed_policy = cpufreq_cpu_get(j);
> 		if (unlikely(managed_policy)) {
> 
> 			/* Set proper policy_cpu */
> 			unlock_policy_rwsem_write(cpu);
> 			per_cpu(policy_cpu, cpu) = managed_policy->cpu;
> 
>-			if (lock_policy_rwsem_write(cpu) < 0)
>-				goto err_out_driver_exit;
>+			if (lock_policy_rwsem_write(cpu) < 0) {
>+				/* Should not go through policy 
>unlock path */
>+				if (cpufreq_driver->exit)
>+					cpufreq_driver->exit(policy);
>+				ret = -EBUSY;
>+				cpufreq_cpu_put(managed_policy);
>+				goto err_free_cpumask;
>+			}
> 
> 			spin_lock_irqsave(&cpufreq_driver_lock, flags);
> 			cpumask_copy(managed_policy->cpus, 
>policy->cpus);
>@@ -879,12 +887,14 @@ static int cpufreq_add_dev(struct sys_de
> 			ret = sysfs_create_link(&sys_dev->kobj,
> 						&managed_policy->kobj,
> 						"cpufreq");
>-			if (ret)
>-				goto err_out_driver_exit;
>-
>-			cpufreq_debug_enable_ratelimit();
>-			ret = 0;
>-			goto err_out_driver_exit; /* call 
>driver->exit() */
>+			if (!ret)
>+				cpufreq_cpu_put(managed_policy);

Looks like cpufreq_cpu_put is needed both with ret and !ret. No?

Thanks,
Venki

>+			/*
>+			 * Success. We only needed to be added 
>to the mask.
>+			 * Call driver->exit() because only the 
>cpu parent of
>+			 * the kobj needed to call init().
>+			 */
>+			goto out_driver_exit; /* call driver->exit() */
> 		}
> 	}
> #endif
>@@ -894,25 +904,25 @@ static int cpufreq_add_dev(struct sys_de
> 	ret = kobject_init_and_add(&policy->kobj, 
>&ktype_cpufreq, &sys_dev->kobj,
> 				   "cpufreq");
> 	if (ret)
>-		goto err_out_driver_exit;
>+		goto out_driver_exit;
> 
> 	/* set up files for this cpu device */
> 	drv_attr = cpufreq_driver->attr;
> 	while ((drv_attr) && (*drv_attr)) {
> 		ret = sysfs_create_file(&policy->kobj, 
>&((*drv_attr)->attr));
> 		if (ret)
>-			goto err_out_driver_exit;
>+			goto err_out_kobj_put;
> 		drv_attr++;
> 	}
> 	if (cpufreq_driver->get) {
> 		ret = sysfs_create_file(&policy->kobj, 
>&cpuinfo_cur_freq.attr);
> 		if (ret)
>-			goto err_out_driver_exit;
>+			goto err_out_kobj_put;
> 	}
> 	if (cpufreq_driver->target) {
> 		ret = sysfs_create_file(&policy->kobj, 
>&scaling_cur_freq.attr);
> 		if (ret)
>-			goto err_out_driver_exit;
>+			goto err_out_kobj_put;
> 	}
> 
> 	spin_lock_irqsave(&cpufreq_driver_lock, flags);
>@@ -930,12 +940,14 @@ static int cpufreq_add_dev(struct sys_de
> 			continue;
> 
> 		dprintk("CPU %u already managed, adding link\n", j);
>-		cpufreq_cpu_get(cpu);
>+		managed_policy = cpufreq_cpu_get(cpu);
> 		cpu_sys_dev = get_cpu_sysdev(j);
> 		ret = sysfs_create_link(&cpu_sys_dev->kobj, 
>&policy->kobj,
> 					"cpufreq");
>-		if (ret)
>+		if (ret) {
>+			cpufreq_cpu_put(managed_policy);
> 			goto err_out_unregister;
>+		}
> 	}
> 
> 	policy->governor = NULL; /* to assure that the starting 
>sequence is
>@@ -967,17 +979,20 @@ err_out_unregister:
> 		per_cpu(cpufreq_cpu_data, j) = NULL;
> 	spin_unlock_irqrestore(&cpufreq_driver_lock, flags);
> 
>+err_out_kobj_put:
> 	kobject_put(&policy->kobj);
> 	wait_for_completion(&policy->kobj_unregister);
> 
>-err_out_driver_exit:
>+out_driver_exit:
> 	if (cpufreq_driver->exit)
> 		cpufreq_driver->exit(policy);
> 
>-err_out:
>+err_unlock_policy:
> 	unlock_policy_rwsem_write(cpu);
>+err_free_cpumask:
>+	free_cpumask_var(policy->cpus);
>+err_free_policy:
> 	kfree(policy);
>-
> nomem_out:
> 	module_put(cpufreq_driver->owner);
> module_out:
>
