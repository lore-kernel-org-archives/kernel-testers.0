From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #28052] [BUG] 2.6.38-rc2: Circular Locking Dependency
Date: Mon, 14 Feb 2011 00:39:43 +0100
Message-ID: <201102140039.43627.rjw@sisk.pl>
References: <NMZS1i37KEE.A.1eG.6_wVNB@chimera> <8H3lez1sawF.A.OqH.3AxVNB@chimera> <20110213.102124.258125070.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20110213.102124.258125070.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org, Knut_Petersen-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org

On Sunday, February 13, 2011, David Miller wrote:
> From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> Date: Sun, 13 Feb 2011 00:05:18 +0100 (CET)
> 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=28052
> > Subject		: [BUG] 2.6.38-rc2: Circular Locking Dependency
> > Submitter	: Knut Petersen <Knut_Petersen-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>
> > Date		: 2011-01-24 9:25 (20 days old)
> > Message-ID	: <4D3D45A3.7040809-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=129586118515443&w=2
> 
> Fixed by:
> 
> commit 8d3bdbd55a7e2a3f2c148a4830aa26dd682b21c4
> Author: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
> Date:   Tue Feb 8 15:02:50 2011 -0800
> 
>     net: Fix lockdep regression caused by initializing netdev queues too early.
>     
>     In commit aa9421041128abb4d269ee1dc502ff65fb3b7d69 ("net: init ingress
>     queue") we moved the allocation and lock initialization of the queues
>     into alloc_netdev_mq() since register_netdevice() is way too late.
>     
>     The problem is that dev->type is not setup until the setup()
>     callback is invoked by alloc_netdev_mq(), and the dev->type is
>     what determines the lockdep class to use for the locks in the
>     queues.
>     
>     Fix this by doing the queue allocation after the setup() callback
>     runs.
>     
>     This is safe because the setup() callback is not allowed to make any
>     state changes that need to be undone on error (memory allocations,
>     etc.).  It may, however, make state changes that are undone by
>     free_netdev() (such as netif_napi_add(), which is done by the
>     ipoib driver's setup routine).
>     
>     The previous code also leaked a reference to the &init_net namespace
>     object on RX/TX queue allocation failures.
>     
>     Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

Thanks, closing.

Rafael
