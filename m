From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Regression] Commit 2344abbcbdb82140050e8be29d3d55e4f6fe860b breaks resume on nx6325
Date: Sun, 21 Sep 2008 01:24:29 +0200
Message-ID: <200809210124.30547.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>

Hi,

Unfortunately resume from suspend to RAM is completely broken on my hp nx6325
because of

commit 2344abbcbdb82140050e8be29d3d55e4f6fe860b
Author: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Date:   Tue Sep 16 11:32:50 2008 -0700

    clockevents: make device shutdown robust

    Signed-off-by: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

Reverting of this commit makes things work again.

I know what this commit is for etc., but it obviosly need a replacement. :-(

Thanks,
Rafael
