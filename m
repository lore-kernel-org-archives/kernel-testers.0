From: Mathias Kretschmer <posting-ZcF2+9dVbKo@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Sat, 6 Jun 2009 10:11:30 +0200
Message-ID: <200906061011.34124.posting@blx4.net>
References: <THxQaUP0K2D.A.QkF.UVbIKB@chimera> <20090605093234.GA30705@infradead.org> <alpine.DEB.1.10.0906051115580.16086@router.windsormachine.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.1.10.0906051115580.16086-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mike Dresser <mdresser_l-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Cc: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

On Friday 05 June 2009 17:19:06 Mike Dresser wrote:
> On Fri, 5 Jun 2009, Christoph Hellwig wrote:
> > I haven't actually measured it, but it shouldn't be that bad.  Mostly
>
> I've enabled that as of yesterday and I'll let it go through it's normal
> operations.. It did survive the other night without CONFIG_XFS_DEBUG
> on(and on 2.6.30-rc8), but that sometimes happened anyways.

Is your machine still happy ?

If so, I'll give 2.6.30-rc8 a shot, as well.

-Mathias

> If it makes it through this weekend without crashing then that bodes well
> for something being fixed in the recent rc's.
>
> Doesn't seem to be any slower though, the backups completed around the
> same time as they always do.
>
> Mike
>
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
