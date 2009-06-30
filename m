From: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
Subject: Re: [stable] [PATCH 1/2] CPUFREQ: Remove unneeded dbs_mutexes from
	ondemand and conservative governors
Date: Tue, 30 Jun 2009 15:58:13 -0700
Message-ID: <20090630225813.GB2634@kroah.com>
References: <20090623193215.GA31374@elte.hu> <1245938485-12663-2-git-send-email-trenn@suse.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1245938485-12663-2-git-send-email-trenn-l3A5Bk7waGM@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
Cc: stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org, hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

I don't see the patch below in Linus's tree.  If it's there, what is the
git commit id?

thanks,

greg k-h

On Thu, Jun 25, 2009 at 04:01:24PM +0200, Thomas Renninger wrote:
> Comment from Venkatesh:
> ...
> This mutex is just serializing the changes to those variables. I could't
> think of any functionality issues of not having the lock as such.
> 
> -> rip it out.
> 
> CC: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
> ---
>  drivers/cpufreq/cpufreq_conservative.c |   61 +++-----------------------------
>  drivers/cpufreq/cpufreq_ondemand.c     |   48 +++----------------------
>  2 files changed, 10 insertions(+), 99 deletions(-)
> 
> diff --git a/drivers/cpufreq/cpufreq_conservative.c b/drivers/cpufreq/cpufreq_conservative.c
> index 7a74d17..6303379 100644
> --- a/drivers/cpufreq/cpufreq_conservative.c
> +++ b/drivers/cpufreq/cpufreq_conservative.c
> @@ -18,7 +18,6 @@
>  #include <linux/cpu.h>
>  #include <linux/jiffies.h>
>  #include <linux/kernel_stat.h>
> -#include <linux/mutex.h>
>  #include <linux/hrtimer.h>
>  #include <linux/tick.h>
>  #include <linux/ktime.h>
> @@ -84,19 +83,6 @@ static DEFINE_PER_CPU(struct cpu_dbs_info_s, cpu_dbs_info);
>  
>  static unsigned int dbs_enable;	/* number of CPUs using this policy */
>  
> -/*
> - * DEADLOCK ALERT! There is a ordering requirement between cpu_hotplug
> - * lock and dbs_mutex. cpu_hotplug lock should always be held before
> - * dbs_mutex. If any function that can potentially take cpu_hotplug lock
> - * (like __cpufreq_driver_target()) is being called with dbs_mutex taken, then
> - * cpu_hotplug lock should be taken before that. Note that cpu_hotplug lock
> - * is recursive for the same process. -Venki
> - * DEADLOCK ALERT! (2) : do_dbs_timer() must not take the dbs_mutex, because it
> - * would deadlock with cancel_delayed_work_sync(), which is needed for proper
> - * raceless workqueue teardown.
> - */
> -static DEFINE_MUTEX(dbs_mutex);
> -
>  static struct workqueue_struct	*kconservative_wq;
>  
>  static struct dbs_tuners {
> @@ -236,10 +222,7 @@ static ssize_t store_sampling_down_factor(struct cpufreq_policy *unused,
>  	if (ret != 1 || input > MAX_SAMPLING_DOWN_FACTOR || input < 1)
>  		return -EINVAL;
>  
> -	mutex_lock(&dbs_mutex);
>  	dbs_tuners_ins.sampling_down_factor = input;
> -	mutex_unlock(&dbs_mutex);
> -
>  	return count;
>  }
>  
> @@ -253,10 +236,7 @@ static ssize_t store_sampling_rate(struct cpufreq_policy *unused,
>  	if (ret != 1)
>  		return -EINVAL;
>  
> -	mutex_lock(&dbs_mutex);
>  	dbs_tuners_ins.sampling_rate = max(input, minimum_sampling_rate());
> -	mutex_unlock(&dbs_mutex);
> -
>  	return count;
>  }
>  
> @@ -267,16 +247,11 @@ static ssize_t store_up_threshold(struct cpufreq_policy *unused,
>  	int ret;
>  	ret = sscanf(buf, "%u", &input);
>  
> -	mutex_lock(&dbs_mutex);
>  	if (ret != 1 || input > 100 ||
> -			input <= dbs_tuners_ins.down_threshold) {
> -		mutex_unlock(&dbs_mutex);
> +			input <= dbs_tuners_ins.down_threshold)
>  		return -EINVAL;
> -	}
>  
>  	dbs_tuners_ins.up_threshold = input;
> -	mutex_unlock(&dbs_mutex);
> -
>  	return count;
>  }
>  
> @@ -287,17 +262,12 @@ static ssize_t store_down_threshold(struct cpufreq_policy *unused,
>  	int ret;
>  	ret = sscanf(buf, "%u", &input);
>  
> -	mutex_lock(&dbs_mutex);
>  	/* cannot be lower than 11 otherwise freq will not fall */
>  	if (ret != 1 || input < 11 || input > 100 ||
> -			input >= dbs_tuners_ins.up_threshold) {
> -		mutex_unlock(&dbs_mutex);
> +			input >= dbs_tuners_ins.up_threshold)
>  		return -EINVAL;
> -	}
>  
>  	dbs_tuners_ins.down_threshold = input;
> -	mutex_unlock(&dbs_mutex);
> -
>  	return count;
>  }
>  
> @@ -316,11 +286,9 @@ static ssize_t store_ignore_nice_load(struct cpufreq_policy *policy,
>  	if (input > 1)
>  		input = 1;
>  
> -	mutex_lock(&dbs_mutex);
> -	if (input == dbs_tuners_ins.ignore_nice) { /* nothing to do */
> -		mutex_unlock(&dbs_mutex);
> +	if (input == dbs_tuners_ins.ignore_nice) /* nothing to do */
>  		return count;
> -	}
> +
>  	dbs_tuners_ins.ignore_nice = input;
>  
>  	/* we need to re-evaluate prev_cpu_idle */
> @@ -332,8 +300,6 @@ static ssize_t store_ignore_nice_load(struct cpufreq_policy *policy,
>  		if (dbs_tuners_ins.ignore_nice)
>  			dbs_info->prev_cpu_nice = kstat_cpu(j).cpustat.nice;
>  	}
> -	mutex_unlock(&dbs_mutex);
> -
>  	return count;
>  }
>  
> @@ -352,10 +318,7 @@ static ssize_t store_freq_step(struct cpufreq_policy *policy,
>  
>  	/* no need to test here if freq_step is zero as the user might actually
>  	 * want this, they would be crazy though :) */
> -	mutex_lock(&dbs_mutex);
>  	dbs_tuners_ins.freq_step = input;
> -	mutex_unlock(&dbs_mutex);
> -
>  	return count;
>  }
>  
> @@ -566,13 +529,9 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
>  		if (this_dbs_info->enable) /* Already enabled */
>  			break;
>  
> -		mutex_lock(&dbs_mutex);
> -
>  		rc = sysfs_create_group(&policy->kobj, &dbs_attr_group);
> -		if (rc) {
> -			mutex_unlock(&dbs_mutex);
> +		if (rc)
>  			return rc;
> -		}
>  
>  		for_each_cpu(j, policy->cpus) {
>  			struct cpu_dbs_info_s *j_dbs_info;
> @@ -612,13 +571,9 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
>  					CPUFREQ_TRANSITION_NOTIFIER);
>  		}
>  		dbs_timer_init(this_dbs_info);
> -
> -		mutex_unlock(&dbs_mutex);
> -
>  		break;
>  
>  	case CPUFREQ_GOV_STOP:
> -		mutex_lock(&dbs_mutex);
>  		dbs_timer_exit(this_dbs_info);
>  		sysfs_remove_group(&policy->kobj, &dbs_attr_group);
>  		dbs_enable--;
> @@ -631,13 +586,9 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
>  			cpufreq_unregister_notifier(
>  					&dbs_cpufreq_notifier_block,
>  					CPUFREQ_TRANSITION_NOTIFIER);
> -
> -		mutex_unlock(&dbs_mutex);
> -
>  		break;
>  
>  	case CPUFREQ_GOV_LIMITS:
> -		mutex_lock(&dbs_mutex);
>  		if (policy->max < this_dbs_info->cur_policy->cur)
>  			__cpufreq_driver_target(
>  					this_dbs_info->cur_policy,
> @@ -646,8 +597,6 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
>  			__cpufreq_driver_target(
>  					this_dbs_info->cur_policy,
>  					policy->min, CPUFREQ_RELATION_L);
> -		mutex_unlock(&dbs_mutex);
> -
>  		break;
>  	}
>  	return 0;
> diff --git a/drivers/cpufreq/cpufreq_ondemand.c b/drivers/cpufreq/cpufreq_ondemand.c
> index e741c33..d080a48 100644
> --- a/drivers/cpufreq/cpufreq_ondemand.c
> +++ b/drivers/cpufreq/cpufreq_ondemand.c
> @@ -17,7 +17,6 @@
>  #include <linux/cpu.h>
>  #include <linux/jiffies.h>
>  #include <linux/kernel_stat.h>
> -#include <linux/mutex.h>
>  #include <linux/hrtimer.h>
>  #include <linux/tick.h>
>  #include <linux/ktime.h>
> @@ -91,19 +90,6 @@ static DEFINE_PER_CPU(struct cpu_dbs_info_s, cpu_dbs_info);
>  
>  static unsigned int dbs_enable;	/* number of CPUs using this policy */
>  
> -/*
> - * DEADLOCK ALERT! There is a ordering requirement between cpu_hotplug
> - * lock and dbs_mutex. cpu_hotplug lock should always be held before
> - * dbs_mutex. If any function that can potentially take cpu_hotplug lock
> - * (like __cpufreq_driver_target()) is being called with dbs_mutex taken, then
> - * cpu_hotplug lock should be taken before that. Note that cpu_hotplug lock
> - * is recursive for the same process. -Venki
> - * DEADLOCK ALERT! (2) : do_dbs_timer() must not take the dbs_mutex, because it
> - * would deadlock with cancel_delayed_work_sync(), which is needed for proper
> - * raceless workqueue teardown.
> - */
> -static DEFINE_MUTEX(dbs_mutex);
> -
>  static struct workqueue_struct	*kondemand_wq;
>  
>  static struct dbs_tuners {
> @@ -269,14 +255,10 @@ static ssize_t store_sampling_rate(struct cpufreq_policy *unused,
>  	int ret;
>  	ret = sscanf(buf, "%u", &input);
>  
> -	mutex_lock(&dbs_mutex);
> -	if (ret != 1) {
> -		mutex_unlock(&dbs_mutex);
> +	if (ret != 1)
>  		return -EINVAL;
> -	}
> -	dbs_tuners_ins.sampling_rate = max(input, minimum_sampling_rate());
> -	mutex_unlock(&dbs_mutex);
>  
> +	dbs_tuners_ins.sampling_rate = max(input, minimum_sampling_rate());
>  	return count;
>  }
>  
> @@ -287,16 +269,11 @@ static ssize_t store_up_threshold(struct cpufreq_policy *unused,
>  	int ret;
>  	ret = sscanf(buf, "%u", &input);
>  
> -	mutex_lock(&dbs_mutex);
>  	if (ret != 1 || input > MAX_FREQUENCY_UP_THRESHOLD ||
> -			input < MIN_FREQUENCY_UP_THRESHOLD) {
> -		mutex_unlock(&dbs_mutex);
> +			input < MIN_FREQUENCY_UP_THRESHOLD)
>  		return -EINVAL;
> -	}
>  
>  	dbs_tuners_ins.up_threshold = input;
> -	mutex_unlock(&dbs_mutex);
> -
>  	return count;
>  }
>  
> @@ -315,11 +292,9 @@ static ssize_t store_ignore_nice_load(struct cpufreq_policy *policy,
>  	if (input > 1)
>  		input = 1;
>  
> -	mutex_lock(&dbs_mutex);
> -	if (input == dbs_tuners_ins.ignore_nice) { /* nothing to do */
> -		mutex_unlock(&dbs_mutex);
> +	if (input == dbs_tuners_ins.ignore_nice) /* nothing to do */
>  		return count;
> -	}
> +
>  	dbs_tuners_ins.ignore_nice = input;
>  
>  	/* we need to re-evaluate prev_cpu_idle */
> @@ -332,8 +307,6 @@ static ssize_t store_ignore_nice_load(struct cpufreq_policy *policy,
>  			dbs_info->prev_cpu_nice = kstat_cpu(j).cpustat.nice;
>  
>  	}
> -	mutex_unlock(&dbs_mutex);
> -
>  	return count;
>  }
>  
> @@ -350,10 +323,8 @@ static ssize_t store_powersave_bias(struct cpufreq_policy *unused,
>  	if (input > 1000)
>  		input = 1000;
>  
> -	mutex_lock(&dbs_mutex);
>  	dbs_tuners_ins.powersave_bias = input;
>  	ondemand_powersave_bias_init();
> -	mutex_unlock(&dbs_mutex);
>  
>  	return count;
>  }
> @@ -586,13 +557,11 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
>  		if (this_dbs_info->enable) /* Already enabled */
>  			break;
>  
> -		mutex_lock(&dbs_mutex);
>  		dbs_enable++;
>  
>  		rc = sysfs_create_group(&policy->kobj, &dbs_attr_group);
>  		if (rc) {
>  			dbs_enable--;
> -			mutex_unlock(&dbs_mutex);
>  			return rc;
>  		}
>  
> @@ -627,28 +596,21 @@ static int cpufreq_governor_dbs(struct cpufreq_policy *policy,
>  			dbs_tuners_ins.sampling_rate = def_sampling_rate;
>  		}
>  		dbs_timer_init(this_dbs_info);
> -
> -		mutex_unlock(&dbs_mutex);
>  		break;
>  
>  	case CPUFREQ_GOV_STOP:
> -		mutex_lock(&dbs_mutex);
>  		dbs_timer_exit(this_dbs_info);
>  		sysfs_remove_group(&policy->kobj, &dbs_attr_group);
>  		dbs_enable--;
> -		mutex_unlock(&dbs_mutex);
> -
>  		break;
>  
>  	case CPUFREQ_GOV_LIMITS:
> -		mutex_lock(&dbs_mutex);
>  		if (policy->max < this_dbs_info->cur_policy->cur)
>  			__cpufreq_driver_target(this_dbs_info->cur_policy,
>  				policy->max, CPUFREQ_RELATION_H);
>  		else if (policy->min > this_dbs_info->cur_policy->cur)
>  			__cpufreq_driver_target(this_dbs_info->cur_policy,
>  				policy->min, CPUFREQ_RELATION_L);
> -		mutex_unlock(&dbs_mutex);
>  		break;
>  	}
>  	return 0;
> -- 
> 1.6.0.2
> 
> --
> To unsubscribe from this list: send the line "unsubscribe cpufreq" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 
> _______________________________________________
> stable mailing list
> stable-CPWUtch7KCBzeIdxy0IIJw@public.gmane.org
> http://linux.kernel.org/mailman/listinfo/stable
