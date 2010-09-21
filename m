From: caiqian-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org
Subject: Re: [Bug #17341] kdump regression compared to v2.6.35
Date: Mon, 20 Sep 2010 20:15:55 -0400 (EDT)
Message-ID: <2140525299.1437291285028155909.JavaMail.root@zmail06.collab.prod.int.phx2.redhat.com>
References: <1457818084.1437271285028093752.JavaMail.root@zmail06.collab.prod.int.phx2.redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1457818084.1437271285028093752.JavaMail.root-k5qu2F3t005+R5eDjrG6zsCp5Q1pQRjfhaY/URYTgi6ny3qCrzbmXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

It had been fixed by Tejun already.

commit 477a3c33d1efa0342a74bd02da2e049191993e2c
Author: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Date:   Tue Aug 31 10:54:35 2010 +0200

    workqueue: fix GCWQ_DISASSOCIATED initialization
    
    init_workqueues() incorrectly marks workqueues for all possible CPUs
    associated.  Combined with mayday_mask initialization bug, this can
    make rescuers keep trying to bind to an offline gcwq indefinitely.
    Fix init_workqueues() such that only online CPUs have their gcwqs have
    GCWQ_DISASSOCIATED cleared.

----- "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a summary
> report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.35.  Please verify if it still should be listed and let the
> tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=17341
> Subject		: kdump regression compared to v2.6.35
> Submitter	: CAI Qian <caiqian-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date		: 2010-08-27 12:35 (25 days old)
> Message-ID	:
> <2136707099.1405541282912500148.JavaMail.root-k5qu2F3t005+R5eDjrG6zsCp5Q1pQRjfhaY/URYTgi6ny3qCrzbmXA@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=128291252612135&w=2
> Handled-By	: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
