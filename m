From: Mike Dresser <mdresser_l-d1V2JtDI1HZNJje9z4SY99BPR1lH4CV8@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Wed, 24 Jun 2009 18:55:40 -0400
Message-ID: <4A42AEEC.9070002@windsormachine.com>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <200906092111.54073.mathias@blx4.net> <alpine.DEB.1.10.0906091521470.9067@router.windsormachine.com> <200906182355.57100.mathias@blx4.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200906182355.57100.mathias-ZcF2+9dVbKo@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Mathias Kretschmer <mathias-ZcF2+9dVbKo@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

Tried 2.6.30-git18 the other day, machine jammed up with the usual BUG, 
though it was on radix-tree.c:464 this time.

I really should get around to putting an APC masterswitch on this 
server, since it won't reboot with anything but the power 
switch/reset(though the system is otherwise fine, interactivity is 
perfect.. just can't kill processes)

Mike

