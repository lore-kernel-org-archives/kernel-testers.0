From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: RE: [patch 0/4] Take care of cpufreq lockdep issues (take 2)
Date: Fri, 3 Jul 2009 07:31:12 -0700
Message-ID: <7E82351C108FA840AB1866AC776AEC4669BFF052@orsmsx505.amr.corp.intel.com>
References: <20090703000829.735976000@intel.com>
 <20090703065427.GA32687@elte.hu>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090703065427.GA32687-X9Un+BFzKDI@public.gmane.org>
Content-Language: en-US
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>

 

>-----Original Message-----
>From: Ingo Molnar [mailto:mingo-X9Un+BFzKDI@public.gmane.org] 
>Sent: Thursday, July 02, 2009 11:54 PM
>To: Pallipadi, Venkatesh
>Cc: Dave Jones; linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; 
>cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org; 
>Rafael J. Wysocki; Dave Young; Pekka Enberg; Mathieu 
>Desnoyers; Thomas Renninger
>Subject: Re: [patch 0/4] Take care of cpufreq lockdep issues (take 2)
>
>
>* venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org> wrote:
>
>> Since recent chanegs to ondemand and conservative governor, there 
>> have been multiple reports of lockdep issues in cpufreq. Patch 
>> series takes care of these problems.
>> 
>> This is the next attempt following the one here, which was not a 
>> complete fix. 
>> http://lkml.indiana.edu/hypermail/linux/kernel/0906.3/01073.html
>> 
>> I am currently running some stress tests to make sure there are no 
>> issues with these patches. But, wanted to send them out for 
>> review/comments/testing before I head out for the long weekend.
>> 
>> If this patchset seems sane, the first patch in the patchset 
>> should also get into 30.stable.
>
>Btw., FYI, because my test-systems were frequently triggering those 
>bugs, i kept testing the following series from you and Mathieu in 
>-tip:
>
> ecf8b04: cpufreq: Define dbs_mutex purpose and cleanup its 
>usage conservative gov
> b08c597: cpufreq: Define dbs_mutex purpose and cleanup its usage
> 0807e30: cpufreq: remove rwsem lock from CPUFREQ_GOV_STOP 
>call (second call site)
>
>So that fix-series, while probably not complete (given that you sent 
>a v2 series), worked well in practice and gets my:
>
> Tested-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
>
>Is the delta between this (tested) series and your v2 version 
>significant? If not it might make sense to shape it as a delta patch 
>to the v1 series, if that looks clean enough - to preserve testing 
>results.
>

Thanks for testing. That earlier version even though it took care
of lockdep complaints, did not address all the race conditions properly.
The delta is significant as I had to change the approach compared
to first patchset. So, diff will not be very clean.

Thanks,
Venki--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
