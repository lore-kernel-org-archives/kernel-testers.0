From: Sitsofe Wheeler <sitsofe@yahoo.com>
Subject: Re: [REGRESSION][BISECTED][X86] next-20080526 hangs on boot
Date: Mon, 26 May 2008 20:11:53 +0100
Message-ID: <g1f230$7bl$1@ger.gmane.org>
References: <g1eg2q$81q$1@ger.gmane.org> <20080526161623.GC7305@cvg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756229AbYEZTNA@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-kernel@vger.kernel.org
Cc: kernel-testers@vger.kernel.org

<posted & mailed>

Cyrill Gorcunov wrote:

> [Sitsofe Wheeler - Mon, May 26, 2008 at 03:04:54PM +0100]
> | When using a 32 bit linux-next-20080526 the bootup process will hang at
> | a random point (not even sysrq helps) with no additional output on the
> | screen (whereas linux-next-20080523 did boot). Mysteriously, booting
> | with nmi_watchdog=2 allows the boot to finish (booting with
> | nmi_watchdog=1 still stalls). I have bisected it down to commit
> | [d1b946b97d71423f365fa797d1428e1847c0bec1]:
>
> Hi, so it helps by reverting only that commit? I mean all further commits
> are still appiled?

Ah that I hadn't tested. I believe I might need to revert
4b82b277707a39b97271439c475f186f63ec4692 too if later commits are applied
(but I'm still testing)

> and, btw, could you post your config, please?

http://sucs.org/~sits/test/config-20080526.txt

-- 
Sitsofe | http://sucs.org/~sits/
