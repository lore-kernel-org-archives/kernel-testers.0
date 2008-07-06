From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Sun, 6 Jul 2008 14:54:21 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0807061453340.3016@woody.linux-foundation.org>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sun, 6 Jul 2008, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11041
> Subject		: All 2.6.26-rcX hang immediately after loading ohci_hcd
> Submitter	: Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
> Date		: 2008-07-05 7:08 (2 days old)
> References	: http://marc.info/?l=linux-kernel&m=121524504505805&w=4
> Handled-By	: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

The revert that was confirmed by Andrey to fix this regression is now 
committed as 09ca8adbe9f724a7e96f512c0039c4c4a1c5dcc0.

		Linus
