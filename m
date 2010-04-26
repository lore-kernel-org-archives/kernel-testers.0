From: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #15713] hackbench regression due to commit 9dfc6e68bfe6e
Date: Mon, 26 Apr 2010 12:02:38 +0200
Message-ID: <4BD564BE.6020700@kernel.org>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vjH.sRSzLB@tosh>	 <alpine.DEB.2.00.1004221045270.1204@router.home>	 <4BD086D0.9090309@cs.helsinki.fi>	 <alpine.DEB.2.00.1004232214520.29018@melkki.cs.helsinki.fi>	 <1272265147.2078.648.camel@ymzhang.sh.intel.com> <i2m84144f021004260022nb58e3e27vd351d6646b99f265@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <i2m84144f021004260022nb58e3e27vd351d6646b99f265-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Christoph Lameter <cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, tim.c.chen-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

Hello,

On 04/26/2010 09:22 AM, Pekka Enberg wrote:
> On Mon, Apr 26, 2010 at 9:59 AM, Zhang, Yanmin
> <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org> wrote:
>>> I haven't been able to reproduce this either on my Core 2 machine.
>> Mostly, the regression exists on Nehalem machines. I suspect it's related to
>> hyper-threading machine.
> 
> OK, so does anyone know why hyper-threading would change things for
> the per-CPU allocator?

My wild speculation is that previously the cpu_slub structures of two
neighboring threads ended up on the same cacheline by accident thanks
to the back to back allocation.  W/ the percpu allocator, this no
longer would happen as the allocator groups percpu data together
per-cpu.

Thanks.

-- 
tejun
