From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12872] pwc mmap always fails with EAGAIN
Date: Sun, 22 Mar 2009 21:05:21 +0100
Message-ID: <20090322200521.GA5355@elte.hu>
References: <GPBuLTara4J.A.3kH.TZTxJB@chimera> <20090322142837.2df0d93d@lxorguk.ukuu.org.uk> <20090322144516.GA13129@elte.hu> <200903222058.12924.M4rkusXXL@web.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200903222058.12924.M4rkusXXL-S0/GAf8tV78@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Markus <M4rkusXXL-S0/GAf8tV78@public.gmane.org>, Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Markus <M4rkusXXL-S0/GAf8tV78@public.gmane.org> wrote:

> > > > Still valid for 2.6.29-rc8-git5.
> > > 
> > > And not really likely to change until someone with a pwc camera adds 
> lots
> > > of printks to the code to work out why this happens.
> > 
> > Or does a bisection to figure out the bad commit, because the report 
> > says that 2.6.28 worked.
> > 
> > The 'howto bisect' portion of:
> > 
> >   http://www.kernel.org/doc/local/git-quick.html
> 
> 
> Well I did a bisect:
> be03d9e8022030c16abf534e33e185bfc3d40eef is first bad commit
> commit be03d9e8022030c16abf534e33e185bfc3d40eef
> Author: Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Date:   Wed Feb 11 11:20:23 2009 -0800
> 
>     x86, pat: fix warn_on_once() while mapping 0-1MB range with /dev/mem
> 
>     Jeff Mahoney reported:
> 
>     > With Suse's hwinfo tool, on -tip:
>     > WARNING: at arch/x86/mm/pat.c:637 reserve_pfn_range+0x5b/0x26d()
> 
>     reserve_pfn_range() is not tracking the memory range below 1MB
>     as non-RAM and as such is inconsistent with similar checks in
>     reserve_memtype() and free_memtype()
> 
>     Rename the pagerange_is_ram() to pat_pagerange_is_ram() and add the
>     "track legacy 1MB region as non RAM" condition.
> 
>     And also, fix reserve_pfn_range() to return -EINVAL, when the pfn
>     range is RAM. This is to be consistent with this API design.
> 
>     Reported-and-tested-by: Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>
>     Signed-off-by: Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>     Signed-off-by: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>     Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> 
> :040000 040000 feb3bf21d762e885284cb1bedb5d2c6c0d16811b 
> b4c2143775386ce15dd49b6749c1f7913d8beb00 M      arch
> 
> So I ran "git bisect reset ; git revert 
> be03d9e8022030c16abf534e33e185bfc3d40eef" and rebuild. That worked!
> 
> I dont know if this is valid to do, but its working fine.
> Its an amd64 system with CONFIG_X86_PAT=y.
> 
> Need some feedback ;)

First thing to check would be whether the latest round of PAT fixes 
(not yet upstream) fix the problem:

   http://people.redhat.com/mingo/tip.git/README

Suresh, any ideas?

	Ingo
