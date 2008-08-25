From: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
 bisected
Date: Mon, 25 Aug 2008 11:02:33 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808251100500.3363@nehalem.linux-foundation.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <VSpL6AnBTS.A.q9H.6aGsIB@albercik> <alpine.LFD.1.10.0808231257310.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808231313170.3363@nehalem.linux-foundation.org> <48B2A91F.8000302@hp.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756655AbYHYSD2@vger.kernel.org>
In-Reply-To: <48B2A91F.8000302@hp.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Alan D. Brunelle" <Alan.Brunelle@hp.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Arjan van de Ven <arjan@linux.intel.com>, Rusty Russell <rusty@rustcorp.com.au>



On Mon, 25 Aug 2008, Alan D. Brunelle wrote:
> 
> With /just/ DEBUG_PAGE_ALLOC defined, I have seen two general panic types:
> 
> o  A new double fault w/ SMP_DEBUG_PAGEALLOC problem (prob4.txt)

Yeah, that's a stack overflow.

Confirmed.

			Linus
