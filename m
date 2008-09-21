From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Sun, 21 Sep 2008 16:51:59 -0700 (PDT)
Message-ID: <20080921.165159.67476441.davem@davemloft.net>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik>
	<7lIhZC4hCxE.A.yj.E2q1IB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7lIhZC4hCxE.A.yj.E2q1IB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Date: Sun, 21 Sep 2008 20:54:13 +0200 (CEST)

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11382
> Subject		: e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
> Submitter	: David Vrabel <david.vrabel-kQvG35nSl+M@public.gmane.org>
> Date		: 2008-08-08 10:47 (45 days old)
> References	: http://marc.info/?l=linux-kernel&m=121819267211679&w=4
> Handled-By	: Christopher Li <chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>

Fixed by:

commit 78566fecbb12a7616ae9a88b2ffbc8062c4a89e3
Author: Christopher Li <chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
Date:   Fri Sep 5 14:04:05 2008 -0700

    e1000: prevent corruption of EEPROM/NVM
    
    Andrey reports e1000 corruption, and that a patch in vmware's ESX fixed
    it.
    
    The EEPROM corruption is triggered by concurrent access of the EEPROM
    read/write. Putting a lock around it solve the problem.
    
    [akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org: use DEFINE_SPINLOCK to avoid confusing lockdep]
    Signed-off-by: Christopher Li <chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
    Reported-by: Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
    Cc: Zach Amsden <zach-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
    Cc: Pratap Subrahmanyam <pratap-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>
    Cc: Jeff Kirsher <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
    Cc: Jesse Brandeburg <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
    Cc: Bruce Allan <bruce.w.allan-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
    Cc: PJ Waskiewicz <peter.p.waskiewicz.jr-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
    Cc: John Ronciak <john.ronciak-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
    Cc: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
    Signed-off-by: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
    Signed-off-by: Jeff Garzik <jgarzik-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
