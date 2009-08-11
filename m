From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #13407] adb trackpad disappears after suspend to ram
Date: Tue, 11 Aug 2009 17:35:49 +0200
Message-ID: <200908111735.49832.rjw@sisk.pl>
References: <YCu3FOC0QrC.A.MaE.RD2fKB@chimera> <pRuaDVjxFBG.A.ZuF.QF2fKB@chimera> <87ab261lfy.fsf@scholz.fias.uni-frankfurt.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752857AbZHKPfC@vger.kernel.org>
In-Reply-To: <87ab261lfy.fsf@scholz.fias.uni-frankfurt.de>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jan Scholz <scholz@fias.uni-frankfurt.de>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>

On Tuesday 11 August 2009, Jan Scholz wrote:
> Hi,
> 
> The bug is still present in v2.6.31-rc5, it is fixed by commenting out
> {suspend,resume}_device_irqs() in drivers/base/power/main.c as suggested
> by Rafael.
> Recently I find the info
> "Platform driver 'snd_powermac' needs updating - please use dev_pm_ops"
> in dmesg, could this be related?

No, it's totally unrelated.

Best,
Rafael
