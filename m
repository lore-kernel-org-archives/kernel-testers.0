From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #17341] kdump regression compared to v2.6.35
Date: Tue, 21 Sep 2010 02:19:52 +0200
Message-ID: <201009210219.52657.rjw@sisk.pl>
References: <2140525299.1437291285028155909.JavaMail.root@zmail06.collab.prod.int.phx2.redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2140525299.1437291285028155909.JavaMail.root-k5qu2F3t005+R5eDjrG6zsCp5Q1pQRjfhaY/URYTgi6ny3qCrzbmXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: caiqian-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday, September 21, 2010, caiqian-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org wrote:
> It had been fixed by Tejun already.
> 
> commit 477a3c33d1efa0342a74bd02da2e049191993e2c
> Author: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> Date:   Tue Aug 31 10:54:35 2010 +0200
> 
>     workqueue: fix GCWQ_DISASSOCIATED initialization
>     
>     init_workqueues() incorrectly marks workqueues for all possible CPUs
>     associated.  Combined with mayday_mask initialization bug, this can
>     make rescuers keep trying to bind to an offline gcwq indefinitely.
>     Fix init_workqueues() such that only online CPUs have their gcwqs have
>     GCWQ_DISASSOCIATED cleared.

Thanks, closing.

Rafael
