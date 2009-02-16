From: Damien Wyart <damien.wyart-GANU6spQydw@public.gmane.org>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with
	2.6.29-rc2-git1
Date: Mon, 16 Feb 2009 21:44:11 +0100
Message-ID: <20090216204411.GA2306@localhost.localdomain>
References: <20090215180355.GA2273@localhost.localdomain> <20090215193102.GA16873@elte.hu> <20090216084223.GA2641@localhost.localdomain> <20090216095059.GL6182@elte.hu> <87hc2u61e9.fsf@free.fr> <20090216122632.GA3158@elte.hu> <87ljs6pmao.fsf@free.fr> <20090216132151.GA17996@elte.hu> <20090216160613.GA6785@linux.vnet.ibm.com> <20090216185616.GB6785@linux.vnet.ibm.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="x+6KMIRAuhnl3hBn"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090216185616.GB6785-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, =?iso-8859-1?Q?Fr=E9d=E9ric?= Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org> [2009-02-16 10:56]:
> Would you be willing to enable CONFIG_RCU_TRACE and CONFIG_TREE_RCU,
> reproduce this and send the output of the debugfs files rcu/rcudata
> and rcu/rcuhier? The commands for this would be:

> 	mkdir /debug || :
> 	mount -t debugfs debugfs /debug
> 	cat /debug/rcu/rcuhier
> 	cat /debug/rcu/rcudata

Here are the two files (stored while the ksoftirqd problem occurs)
attached.

-- 
Damien

--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="rcuhier.txt"

rcu:
c=6148 g=6149 s=2 jfq=3 j=31ba nfqs=62392/nfqsng=3(62389) fqlh=7
1/3 0:1 ^0    
rcu_bh:
c=-296 g=-296 s=2 jfq=-93079 j=31ba nfqs=6/nfqsng=0(6) fqlh=0
0/3 0:1 ^0    

--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="rcudata.txt"

rcu:
  0 c=6163 g=6164 pq=0 pqc=6162 qp=1 rpfq=2 rp=a249 dt=729511/1 dn=0 df=10 of=0 ri=38915 ql=5 b=10
  1 c=6163 g=6164 pq=1 pqc=6163 qp=0 rpfq=0 rp=d580 dt=34418019/1 dn=0 df=374 of=0 ri=19636 ql=0 b=10
rcu_bh:
  0 c=-296 g=-296 pq=1 pqc=-296 qp=0 rpfq=-19494 rp=e947 dt=729511/1 dn=0 df=0 of=0 ri=0 ql=0 b=10
  1 c=-296 g=-296 pq=1 pqc=-296 qp=1 rpfq=-16839253 rp=2918 dt=34418019/1 dn=0 df=0 of=0 ri=2 ql=0 b=10

--x+6KMIRAuhnl3hBn--
