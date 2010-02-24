From: Christian Kujau <lists@nerdbynature.de>
Subject: Re: [Bug #14656] Oops at __rmqueue+0x98 with 2.6.32-rc6
Date: Tue, 23 Feb 2010 23:58:42 -0800 (PST)
Message-ID: <alpine.DEB.2.01.1002232323440.28195@bogon.housecafe.de>
References: <4u4d-2M3yXH.A.XW.XqagLB@chimera> <wj3ZQZlk_KB.A.Q0C.hwagLB@chimera>
Mime-Version: 1.0
Return-path: <reiserfs-devel-owner@vger.kernel.org>
In-Reply-To: <wj3ZQZlk_KB.A.Q0C.hwagLB@chimera>
Sender: reiserfs-devel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Lucas C. Villa Real" <lucasvr@gobolinux.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, reiserfs-devel@vger.kernel.org, aneesh.kumar@linux.vnet.ibm.com

Lucas,

On Sun, 21 Feb 2010 at 22:42, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14656
> Subject		: Oops at __rmqueue+0x98 with 2.6.32-rc6
> References : http://marc.info/?l=linux-kernel&m=125860255229092&w=4

Your initial report said:

kernel: BUG: unable to handle kernel paging request at 0000b2cb
kernel: IP: [<c0198266>] __rmqueue+0x98/0x36c


However, the backtraces you posted later (with DEBUG_LIST=y) always 
contained:


------------[ cut here ]------------
WARNING: at lib/list_debug.c:51 list_del+0x41/0x60()
Hardware name: MacBook3,1
list_del corruption. next->prev should be c1b71018, but was 00005095


Not being a kernel hacker, this "list_del corruption" looks kinda weird. At 
one point[0] it was suggested to reproduce this with an untainted 
(ndiswrapper?) kernel; on other occurences[1] some code surgery was indeed 
needed.

I'm afraid I can't help here though, just thinking out loud...

Christian.

[0] http://lkml.org/lkml/2007/1/12/214
[1] http://lkml.org/lkml/2008/9/26/85
    http://lkml.indiana.edu/hypermail/linux/kernel/0902.1/01992.html
-- 
BOFH excuse #275:

Bit rot
