From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #10872] x86_64 boot hang when CONFIG_NUMA=n
Date: Mon, 7 Jul 2008 08:42:27 +0200
Message-ID: <20080707064227.GA27622@elte.hu>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <uBi7uNfg81L.A.XLC.s0LcIB@albercik> <20080706111750.a6d77e81.randy.dunlap@oracle.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20080706111750.a6d77e81.randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


* Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org> wrote:

> This still happens with 2.6.26-rc9.  Using CONFIG_NUMA=y boots OK.

one thing i dont see you having followed up on is whether tip/master 
works fine:

  http://lkml.org/lkml/2008/6/11/355

(or, whether linux-next works fine with the same !NUMA config.)

i.e. whether this is a genuine new problem or something we already 
fixed. (just didnt realize the upstream relevance of)

( if tip/master works fine then it would be very useful to do an 
  'inverse bisection' for the fix. )

	Ingo
