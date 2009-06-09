From: Mike Dresser <mdresser_l-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Tue, 9 Jun 2009 15:16:18 -0400 (EDT)
Message-ID: <alpine.DEB.1.10.0906091514280.9067@router.windsormachine.com>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <200906080940.14650.posting@blx4.net> <alpine.DEB.1.10.0906091457510.28108@router.windsormachine.com> <200906092111.54073.mathias@blx4.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200906092111.54073.mathias-ZcF2+9dVbKo@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Mathias Kretschmer <mathias-ZcF2+9dVbKo@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

On Tue, 9 Jun 2009, Mathias Kretschmer wrote:

> same observation here. it's kswapd that dies.
>
> swap space itself is hardly ever really used, since my box has 8GB and not
> that much stuff is running on it.

Same here, 5GB ram.. I might try turning swap off and seeing what happens.

> my XFS mount opts: noatime,nodiratime,logbufs=8

noatime,nodiratime,logbufs=8,logbsize=256k,inode64,nobarrier

> drive/fs config:  sata => raid6 => lvm => xfs => nfs

sata => 3ware in raid5 => xfs

> machine is stable for the last 36 hours with nfs turned off.

Not using NFS here.
