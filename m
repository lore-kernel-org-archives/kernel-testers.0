From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Bug #15518] CONFIG_NO_BOOTMEM=y breaks boot on 32bit
Date: Wed, 24 Mar 2010 18:00:16 +0100
Message-ID: <20100324170016.GB3552@viiv.ffwll.ch>
References: <M9dVcHY7TxH.A.2GC.ZBopLB@chimera>
 <3Qs6IGJaRe.A.BzC.CCopLB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3Qs6IGJaRe.A.BzC.CCopLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Daniel Vetter <daniel@ffwll.ch>

On Sun, Mar 21, 2010 at 09:13:28PM +0100, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15518
> Subject		: CONFIG_NO_BOOTMEM=y breaks boot on 32bit
> Submitter	: Daniel Vetter <daniel@ffwll.ch>
> Date		: 2010-03-11 15:37 (11 days old)

I've just retested on 3.6.34-rc2. NO_BOOTMEM=y still crashes with a
plethora of backtraces somewhere in early boot. Disabling this option
still works around the problem
-- 
Daniel Vetter
Mail: daniel@ffwll.ch
Mobile: +41 (0)79 365 57 48
