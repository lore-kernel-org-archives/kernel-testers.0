From: Karol Lewandowski <karol.k.lewandowski@gmail.com>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Sun, 4 Oct 2009 21:28:00 +0200
Message-ID: <20091004192800.GA6442@bizet.domek.prywatny>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.k2B.ZNTxKB@chimera> <200910021111.55749.elendil@planet.nl> <20091002093226.GJ21906@csn.ul.ie> <20091002200143.GA3845@bizet.domek.prywatny>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757903AbZJDT2n@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=SI8bSacIy0IKHd3qqfRLipbouffX7bKv6ESXmgWiZ4w=;
        b=udO4dufHE1cHSbQxMH2jC5xME6n2cjwXQS0kaqSH+1ZbUOP+dxrIbRTxgAYeoCDO+e
         Ng1P98B0Ap8uN4CK39nmHxsIJkFltEV/BJOLkR9Ug0f2upE+G7qzrAwtkECljMMXKJ+v
         EW+4U7wCqjUZn7aFXfeWBzWSxwpRjEdj/p4IM=
Content-Disposition: inline
In-Reply-To: <20091002200143.GA3845@bizet.domek.prywatny>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Karol Lewandowski <karol.k.lewandowski@gmail.com>
Cc: Mel Gorman <mel@csn.ul.ie>, Frans Pop <elendil@planet.nl>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Pekka Enberg <penberg@cs.helsinki.fi>, Reinette Chatre <reinette.chatre@intel.com>, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>

On Fri, Oct 02, 2009 at 10:01:43PM +0200, Karol Lewandowski wrote:
> On Fri, Oct 02, 2009 at 10:32:26AM +0100, Mel Gorman wrote:
> > Apparently, Karol Lewandowski (cc added) has a reliable
> > reproduction case for when the firmware loading problem occurs
> > (http://lkml.org/lkml/2009/9/30/242). While it's not the same problem exactly,
> > it's probable they're related. I'm hoping the problem commit can be identified
> > by his bisection whenever he gets around to it.
> 
> Unfortunately, I've had little success with bisecting this problem.
> I've spend fair amount of time today trying to reproduce this problem,
> but I'm unable to do so even on kernels that failed "easily" before.

I've been able to reproduce this problem on 2.6.32-rc1.  No "luck"
with bisecting, though.
