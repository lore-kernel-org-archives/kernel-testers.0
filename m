From: Mathias Kretschmer <mathias-ZcF2+9dVbKo@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Thu, 18 Jun 2009 23:55:51 +0200
Message-ID: <200906182355.57100.mathias@blx4.net>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <200906092111.54073.mathias@blx4.net> <alpine.DEB.1.10.0906091521470.9067@router.windsormachine.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.1.10.0906091521470.9067-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mike Dresser <mdresser_l-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

On Tuesday 09 June 2009 21:22:16 Mike Dresser wrote:
> On Tue, 9 Jun 2009, Mathias Kretschmer wrote:
> > machine is stable for the last 36 hours with nfs turned off.
>
> Is the system load different with nfs off? (no clients accessing it, etc?)

Yep.

I've upgraded to 2.6.30 two days ago. So far, so good.

I've ran three Gentoo 'emerge world' sessions in parallel while forcing a 
RAID6 resync. This should have created more I/O load than this box usually 
sees. 

Of course, some other combination of events might be required to cause this 
kernel crash.

I've also turned NFS back on today. Still, no problems to report.

Cheers,

Mathias




> Mike
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
