From: Mathias Kretschmer <mathias-ZcF2+9dVbKo@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Sun, 7 Jun 2009 00:00:48 +0200
Message-ID: <200906070000.48960.mathias@blx4.net>
References: <THxQaUP0K2D.A.QkF.UVbIKB@chimera> <200906061011.34124.posting@blx4.net> <alpine.DEB.1.10.0906061138150.9860@router.windsormachine.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.1.10.0906061138150.9860-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mike Dresser <mdresser_l-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Cc: Mathias Kretschmer <posting-ZcF2+9dVbKo@public.gmane.org>, Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

On Saturday 06 June 2009 17:38:44 Mike Dresser wrote:
> On Sat, 6 Jun 2009, Mathias Kretschmer wrote:
> > Is your machine still happy ?
> >
> > If so, I'll give 2.6.30-rc8 a shot, as well.
>
> Still running, no crashes or errors so far

OK. running 2.6.30-rc8-git2.  no crashes, so far.

but, same problem as with 2.6.29: tons of 'reconnect_path: npd != pd" messages 
and stale NFS handles on the client boxes (i.e. my desktop).

I upgraded from 2.6.25, which worked fine.

The box is an AMD K8 (x86_64) with sata,raid6,lvm,xfs,nfsd.

Mathias


> Mike
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
