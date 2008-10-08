From: Peter Zijlstra <a.p.zijlstra@chello.nl>
Subject: Re: [Bug #11207] VolanoMark regression with 2.6.27-rc1
Date: Wed, 08 Oct 2008 09:03:56 +0200
Message-ID: <1223449437.1378.19.camel@lappy.programming.kicks-ass.net>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.S8B.b975IB@wind>
	 <200810080211.42210.nickpiggin@yahoo.com.au>
	 <1223394526.26330.52.camel@lappy.programming.kicks-ass.net>
	 <1223433391.1685.19.camel@ymzhang>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754161AbYJHHEV@vger.kernel.org>
In-Reply-To: <1223433391.1685.19.camel@ymzhang>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Zhang, Yanmin" <yanmin_zhang@linux.intel.com>
Cc: Nick Piggin <nickpiggin@yahoo.com.au>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dhaval Giani <dhaval@linux.vnet.ibm.com>, Miao Xie <miaox@cn.fujitsu.com>

On Wed, 2008-10-08 at 10:36 +0800, Zhang, Yanmin wrote:

> > Sadly not much, I can't seem to reproduce :-(
> The regression is bigger with more cpu.

Yep :-(

> > 
> > Yanmin, does the wakeup patch I did for oltp help this workload any?
> > 
> > http://marc.info/?l=linux-kernel&m=122194673932703&w=4
> I tested it against 2.6.29-rc9 on 8-core stoakley and 16-core tigerton. volanoMark
> chatroom number is default 10.
> Basically, comparing with pure 2.6.27-rc9, the patched kernel's result has about 2%
> regression. Group scheduling is enabled.

Ok, so that didn't help. Thanks for testing!
