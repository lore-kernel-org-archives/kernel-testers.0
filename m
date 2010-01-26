From: Maciej Sitarz <macieks@freesco.pl>
Subject: Re: [Bug #14748] e1000e NIC not working after reboot
Date: Tue, 26 Jan 2010 23:44:59 +0100
Message-ID: <4B5F706B.60905@freesco.pl>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera> <q60Z28d_9yH.A.JGB.haMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752378Ab0AZWpY@vger.kernel.org>
In-Reply-To: <q60Z28d_9yH.A.JGB.haMXLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On 24.01.2010 23:22, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).

The problem still exist I'm using kernel version 2.6.32.6 now.

I have one more observation:
After the reboot, when the NIC is not working, both leds are on. Not 
blinking, they light all the time, even if I remove the plug.

Best regards
-- 
Maciek Sitarz
