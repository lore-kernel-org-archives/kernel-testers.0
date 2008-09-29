From: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -	bisected
Date: Mon, 29 Sep 2008 07:33:30 -0700
Message-ID: <48E0E73A.40803@sgi.com>
References: <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <200809251150.26760.rusty@rustcorp.com.au> <alpine.LFD.1.10.0809250836270.3265@nehalem.linux-foundation.org> <200809261525.30258.rusty@rustcorp.com.au> <48DC78F2.8060400@sgi.com> <20080927191653.GB18619@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080927191653.GB18619-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Alan.Brunelle-VXdhtT5mjnY@public.gmane.org, tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>

Ingo Molnar wrote:
> * Mike Travis <travis-sJ/iWh9BUns@public.gmane.org> wrote:
> 
>> Hi Rusty,
>>
>> I've gotten some good traction on the changes in the following patch.  
>> About 30% of the kernel is compiling right now and I'm picking up 
>> errors and warnings as I'm going along.  I think it's doing most of 
>> what we need.  Attempting to hide the cpumask struct definition caused 
>> all kinds of problems with the inline functions and statically 
>> declaring cpumask's.
>>
>> (The following patch is a combination of all the changes to cpumask.h 
>> with the header from the first patch.  I'll send you a complete copy 
>> in separate email.)
> 
> could you please send whatever .c changes you have already, so that we 
> can have a look at how the end result will look like? Doesnt have to 
> build, i'm just curious about how it looks like in practice, 
> semantically.
> 
> 	Ingo


I will, and the full "allyesconfig" does compile.  And it's basically a
benign change in that the functionality is still the same.  I'm currently
reordering it a bit to clean it up.

Thanks,
Mike
