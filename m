From: Mathias Kretschmer <posting-ZcF2+9dVbKo@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Mon, 8 Jun 2009 09:27:09 +0200
Message-ID: <200906080927.10479.posting@blx4.net>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <AN6kEAA5GQ.A.WDB.xj7KKB@chimera> <alpine.DEB.1.10.0906071608010.3914@router.windsormachine.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.1.10.0906071608010.3914-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mike Dresser <mdresser_l-d1V2JtDI1HZNJje9z4SY99BPR1lH4CV8@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

On Sunday 07 June 2009 22:09:23 Mike Dresser wrote:
> > introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> > be listed and let me know (either way).
>
> Still testing, but so far 2.6.30-rc8(or another RC) seems to have fixed
> this.  I'd say to leave this open for now, there's at least one other
> person testing 2.6.30-rc8 to see if it's fixed or not.

I'm afraid my test here won't help much to answer this question.

I've seen no more crashes, but starting with 2.6.29 I'm seeing so many 
'reconnect_path: npd != pd' messages and am experiencing lots of 'stale NFS 
handles'  that I turned off NFS yesterday evening until I have more time to look 
into this.

-Mathias


> Mike
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
