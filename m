From: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #15713] hackbench regression due to commit 9dfc6e68bfe6e
Date: Mon, 26 Apr 2010 12:53:28 +0200
Message-ID: <4BD570A8.90304@kernel.org>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vjH.sRSzLB@tosh>	 <alpine.DEB.2.00.1004221045270.1204@router.home>	 <4BD086D0.9090309@cs.helsinki.fi>	 <alpine.DEB.2.00.1004232214520.29018@melkki.cs.helsinki.fi>	 <1272265147.2078.648.camel@ymzhang.sh.intel.com>	 <i2m84144f021004260022nb58e3e27vd351d6646b99f265@mail.gmail.com>	 <4BD564BE.6020700@kernel.org> <x2o84144f021004260309k9edf9e88t92e4c988d12de234@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <x2o84144f021004260309k9edf9e88t92e4c988d12de234-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Christoph Lameter <cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, tim.c.chen-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On 04/26/2010 12:09 PM, Pekka Enberg wrote:
>> My wild speculation is that previously the cpu_slub structures of two
>> neighboring threads ended up on the same cacheline by accident thanks
>> to the back to back allocation.  W/ the percpu allocator, this no
>> longer would happen as the allocator groups percpu data together
>> per-cpu.
> 
> Yanmin, do we see a lot of remote frees for your hackbench run? IIRC,
> it's the "deactivate_remote_frees" stat when CONFIG_SLAB_STATS is
> enabled.

I'm not familiar with the details or scales here so please take
whatever I say with a grain of salt.  For hyperthreading configuration
I think operations don't have to be remote to be affected.  If the
data for cpu0 and cpu1 were on the same cache line, and cpu0 and cpu1
are occupying the same physical core thus sharing all the resources it
would benefit from the sharing whether any operation was remote or not
as it saves the physical processor one cache line.

Thanks.

-- 
tejun
