From: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Fri, 5 Jun 2009 05:32:34 -0400
Message-ID: <20090605093234.GA30705@infradead.org>
References: <THxQaUP0K2D.A.QkF.UVbIKB@chimera> <PkPeJtNB3KO.A._pF.ZVbIKB@chimera> <20090530231018.GA29992@samad.com.au> <200906012221.38854.rjw@sisk.pl> <4A27DA01.8060105@windsormachine.com> <20090604143406.GA19536@infradead.org> <alpine.DEB.1.10.0906041038500.15712@router.windsormachine.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.DEB.1.10.0906041038500.15712-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mike Dresser <mdresser_l-SDjlOt0KSjdj8tndi7AXdQBQioIGk2LXAL8bYrjMMd8@public.gmane.org>
Cc: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

On Thu, Jun 04, 2009 at 10:40:01AM -0400, Mike Dresser wrote:
> On Thu, 4 Jun 2009, Christoph Hellwig wrote:
>
>> Can you please also run with CONFIG_XFS_DEBUG enabled so that all
>> kinds of asserts might trigger?
>
> The help for that option says the "code will be HUGE and SLOW"
>
> How much of a slowdown are we likely talking about?

I haven't actually measured it, but it shouldn't be that bad.  Mostly
it's adding tons of ASSERT statements.  The Kconfig help is there to
prevent people from enabling it just because they can.
