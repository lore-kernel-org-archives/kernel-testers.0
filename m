From: Mike Dresser <mdresser_l-d1V2JtDI1HZNJje9z4SY99BPR1lH4CV8@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Mon, 15 Jun 2009 13:25:19 -0400
Message-ID: <4A3683FF.8040500@windsormachine.com>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <200906080940.14650.posting@blx4.net> <alpine.DEB.1.10.0906091457510.28108@router.windsormachine.com> <200906092111.54073.mathias@blx4.net> <alpine.DEB.1.10.0906091521470.9067@router.windsormachine.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.1.10.0906091521470.9067-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Mike Dresser <mdresser_l-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Cc: Mathias Kretschmer <mathias-ZcF2+9dVbKo@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

2.6.30-rc8 still has issues, even with swapoff -a, it still died in kswapd0
