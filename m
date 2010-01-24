From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14859] System timer firing too much without cause
Date: Mon, 25 Jan 2010 00:07:13 +0100
Message-ID: <201001250007.13971.rjw@sisk.pl>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <hE3x9c-4KZM.A.Z6G.gLMXLB@chimera> <201001241734.50803.shawn.starr@rogers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201001241734.50803.shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sunday 24 January 2010, Shawn Starr wrote:
> On Sunday 24 January 2010 17:04:33 Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14859
> > Subject		: System timer firing too much without cause
> > Submitter	: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > Date		: 2009-12-21 19:16 (35 days old)
> 
> Continues with -rc5, I  really cannot use Dynamic ticks at all, it has to be 
> disabled.
> 
> I should probably mention this CPU info:
> 
> processor       : 0                                                         
> vendor_id       : GenuineIntel                                              
> cpu family      : 6                                                         
> model           : 23                                                        
> model name      : Intel(R) Core(TM)2 Duo CPU     T9400  @ 2.53GHz           
> stepping        : 10                                                        
> cpu MHz         : 800.000                                                   
> cache size      : 6144 KB                                                   
> physical id     : 0                                                         
> siblings        : 2                                                         
> core id         : 0                                                         
> cpu cores       : 2                                                         
> apicid          : 0                                                         
> initial apicid  : 0                                                         
> fpu             : yes                                                       
> fpu_exception   : yes                                                       
> cpuid level     : 13                                                        
> wp              : yes                                                       
> flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov 
> pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx lm 
> constant_tsc arch_perfmon pebs bts rep_good aperfmperf pni dtes64 monitor 
> ds_cpl vmx smx est tm2 ssse3 cx16 xtpr pdcm sse4_1 xsave lahf_lm ida 
> tpr_shadow vnmi flexpriority                                                                                                 
> bogomips        : 5053.40                                                                                
> clflush size    : 64                                                                                     
> cache_alignment : 64                                                                                     
> address sizes   : 36 bits physical, 48 bits virtual                                                      
> power management:                                                                                        

Thanks for the update.

Rafael
