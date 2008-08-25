From: "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Mon, 25 Aug 2008 10:05:25 -0400
Message-ID: <48B2BC25.1060400@hp.com>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <VSpL6AnBTS.A.q9H.6aGsIB@albercik> <alpine.LFD.1.10.0808231257310.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808231313170.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808231313170.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>

I built a kernel @

commit 83097aca8567a0bd593534853b71fe0fa9a75d69
Author: Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Date:   Sat Aug 23 21:45:21 2008 -0700

And it fails like the others do

o  http://free.linux.hp.com/~adb/bug.11342/prob6.txt

SMP_DEBUG_PAGEALLOC

o  http://free.linux.hp.com/~adb/bug.11342/prob6a.txt

[    7.591198] BUG: unable to handle kernel NULL pointer dereference at
0000000000000858



I then backed out /just/ the merge for

commit 1c89ac55017f982355c7761e1c912c88c941483d
Merge: 88fa08f... b1b135c...
Author: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date:   Tue Aug 12 08:40:19 2008 -0700

And the machine has booted fine 5 times in a row.



I've put the latest .config up at

http://free.linux.hp.com/~adb/bug.11342/config.txt


Is there /some/ way to break down the patches within the merged patch,
and I could by-hand bisect through those?

Here's what I did to take the latest tree, and back out that merge (to
get booting kernels):

git-diff
88fa08f67bee1a0c765237bdac106a32872f57d2..1c89ac55017f982355c7761e1c912c88c941483d
| patch -p1 -R
patching file Documentation/lguest/lguest.c
patching file arch/powerpc/Kconfig
patching file arch/x86/Kconfig
patching file arch/x86/mm/Makefile
patching file drivers/char/hvc_console.c
patching file drivers/lguest/page_tables.c
patching file include/linux/Kbuild
Hunk #1 succeeded at 358 (offset 2 lines).
patching file include/linux/init.h
patching file include/linux/mm.h
patching file init/main.c
patching file kernel/module.c
patching file kernel/stop_machine.c
patching file mm/Kconfig
patching file mm/util.c

Alan
