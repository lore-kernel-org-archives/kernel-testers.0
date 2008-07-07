From: Ingo Molnar <mingo@elte.hu>
Subject: Re: [Bug #10872] x86_64 boot hang when CONFIG_NUMA=n
Date: Mon, 7 Jul 2008 09:24:40 +0200
Message-ID: <20080707072438.GA8011@elte.hu>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <uBi7uNfg81L.A.XLC.s0LcIB@albercik> <20080706111750.a6d77e81.randy.dunlap@oracle.com> <20080707064227.GA27622@elte.hu> <86802c440807070015qbfdbf08s62ce5c37092d0fb5@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753819AbYGGHZ3@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <86802c440807070015qbfdbf08s62ce5c37092d0fb5@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel@gmail.com>
Cc: Randy Dunlap <randy.dunlap@oracle.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, torvalds <torvalds@linux-foundation.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>


* Yinghai Lu <yhlu.kernel@gmail.com> wrote:

> On Sun, Jul 6, 2008 at 11:42 PM, Ingo Molnar <mingo@elte.hu> wrote:
> >
> > * Randy Dunlap <randy.dunlap@oracle.com> wrote:
> >
> >> This still happens with 2.6.26-rc9.  Using CONFIG_NUMA=y boots OK.
> >
> > one thing i dont see you having followed up on is whether tip/master
> > works fine:
> >
> >  http://lkml.org/lkml/2008/6/11/355
> 
> in the response to me, he said tip/master has the same problem

ok, so an unfixed problem.

	Ingo
