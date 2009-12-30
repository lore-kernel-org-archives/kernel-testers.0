From: Mikael Abrahamsson <swmike@swm.pp.se>
Subject: Re: [Bug #14887] suspend doesn't work on X200s
Date: Wed, 30 Dec 2009 12:36:43 +0100 (CET)
Message-ID: <alpine.DEB.1.10.0912301232570.27231@uplift.swm.pp.se>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.Zg.inhOLB@chimera> <20091230111745.GC4489@kernel.dk>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752019AbZL3Lgq@vger.kernel.org>
In-Reply-To: <20091230111745.GC4489@kernel.dk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; format="flowed"; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jens Axboe <jens.axboe@oracle.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Lutomirski <luto@mit.edu>

On Wed, 30 Dec 2009, Jens Axboe wrote:

> Works fine for me on an x200s. The only issue I seem to have is that 
> sometimes it suspends immediately upon resume again, presumably the lid 
> close event is re-triggered (or something to that extent). Apart from 
> that, 2.6.32 and current -git works fine for me.

There is an issue in 2.6.31 where it will panic (at least that's what I 
think it does, please see more details in 
<https://bugs.launchpad.net/bugs/473876>) when you have it plugged in, 
suspend, un-plug the power cable, and then resume it.

According to <https://bugs.launchpad.net/ubuntu/+source/linux/+bug/467877> 
it has something to do with "event_when_closed_battery", I haven't tested 
it yet though, neither with 2.6.31 nor 2.6.32. Could be beneficial for 
more people to test though.

-- 
Mikael Abrahamsson    email: swmike@swm.pp.se
