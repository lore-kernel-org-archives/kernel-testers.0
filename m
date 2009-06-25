From: Mathias Kretschmer <mathias-ZcF2+9dVbKo@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Thu, 25 Jun 2009 08:14:40 +0200
Message-ID: <200906250814.43337.mathias@blx4.net>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <200906182355.57100.mathias@blx4.net> <4A42AEEC.9070002@windsormachine.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A42AEEC.9070002-d1V2JtDI1HZNJje9z4SY99BPR1lH4CV8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mike Dresser <mdresser_l-d1V2JtDI1HZNJje9z4SY99BPR1lH4CV8@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

On Thursday 25 June 2009 00:55:40 Mike Dresser wrote:
> Tried 2.6.30-git18 the other day, machine jammed up with the usual BUG,
> though it was on radix-tree.c:464 this time.

I gave up and went back to 2.6.28.9, as you mentioned before.

> I really should get around to putting an APC masterswitch on this
> server, since it won't reboot with anything but the power
> switch/reset(though the system is otherwise fine, interactivity is
> perfect.. just can't kill processes)

Yep, I had that happening a few days ago. The box worked fine, but won't 
reboot. Just hangs somewhere during unmount. I saw a kernel crash call trace 
somewhere, but it went by too quickly and I couldn't get it back.

-Mathias

> Mike
