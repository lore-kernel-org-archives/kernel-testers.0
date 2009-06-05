From: Mike Dresser <mdresser_l-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Fri, 5 Jun 2009 11:19:06 -0400 (EDT)
Message-ID: <alpine.DEB.1.10.0906051115580.16086@router.windsormachine.com>
References: <THxQaUP0K2D.A.QkF.UVbIKB@chimera> <PkPeJtNB3KO.A._pF.ZVbIKB@chimera> <20090530231018.GA29992@samad.com.au> <200906012221.38854.rjw@sisk.pl> <4A27DA01.8060105@windsormachine.com> <20090604143406.GA19536@infradead.org>
 <alpine.DEB.1.10.0906041038500.15712@router.windsormachine.com> <20090605093234.GA30705@infradead.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090605093234.GA30705-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

On Fri, 5 Jun 2009, Christoph Hellwig wrote:

> I haven't actually measured it, but it shouldn't be that bad.  Mostly

I've enabled that as of yesterday and I'll let it go through it's normal 
operations.. It did survive the other night without CONFIG_XFS_DEBUG 
on(and on 2.6.30-rc8), but that sometimes happened anyways.

If it makes it through this weekend without crashing then that bodes well 
for something being fixed in the recent rc's.

Doesn't seem to be any slower though, the backups completed around the 
same time as they always do.

Mike


