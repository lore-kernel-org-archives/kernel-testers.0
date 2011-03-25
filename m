From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: [regression] x86-64, mem: Convert memmove() to assembly file and
 fix return value bug
Date: Fri, 25 Mar 2011 09:19:02 +0100
Message-ID: <1301041142.18891.3.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Fenghua Yu <fenghua.yu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "H. Peter Anvin" <hpa-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>

Hallo,

kernel fails to compile with this message:
linux-2.6/arch/x86/lib/memmove_64.c: No such file or directory

regression introduced by patch:
commit 9599ec0471deae24044241e2173090d2cbc0e899
Author: Fenghua Yu <fenghua.yu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date:   Mon Jan 17 17:39:15 2011 -0800
x86-64, mem: Convert memmove() to assembly file and fix return value bug
...



-- 
Regards,
        Alexey
