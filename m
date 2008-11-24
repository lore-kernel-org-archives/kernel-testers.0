From: Bernhard Schmidt <berni@birkenwald.de>
Subject: Re: [Bug #11947] 2.6.28-rc VC switching with Intel graphics broken
Date: Mon, 24 Nov 2008 20:13:07 +0100
Message-ID: <492AFCC3.4090602@birkenwald.de>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera> <vyitTh0pP2N.A.IHD.O8HKJB@chimera> <492A6A20.4080106@upcomillas.es> <200811241101.55121.jbarnes@virtuousgeek.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754233AbYKXTNY@vger.kernel.org>
In-Reply-To: <200811241101.55121.jbarnes@virtuousgeek.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: "Romano Giannetti (lists)" <romanol@upcomillas.es>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andreas Mohr <andi@lisas.de>, devsk <kernel-bugs.dev1world@spamgourmet.com>, Johan Bilien <jobi@via.ecp.fr>

Hello,

> On Monday, November 24, 2008 12:47 am Romano Giannetti (lists) wrote:
>> Rafael J. Wysocki wrote:
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11947
>>> Subject		: 2.6.28-rc VC switching with Intel graphics broken
>>> Submitter	: Romano Giannetti <romano.giannetti@gmail.com>
>>> Date		: 2008-11-03 12:10 (20 days old)
>>> Handled-By	: Jesse Barnes <jbarnes@virtuousgeek.org>
>> Still with us on -rc6, nasty, reproducible, no clues on what can be.
>>
>> VC switch locks or delay the systems minutes, resuming from suspend locks
>> hard the machine.
>>
>> 2.6.28-rc is unusable here.
>>
>> Jesse, any hints? My suspicion that it can be the same thing happened with
>> bug 10620 is wrong? (It was a very similar error about vblank...)
> 
> Just added to the bug, it looks like a DUP of an issue Keith just fixed last 
> week (now to make sure the patch makes it upstream quickly).

I can confirm that, with the patch from 
http://lists.freedesktop.org/archives/intel-gfx/2008-November/000614.html 
applied on top of current git head (rejected hunk in 
drivers/gpu/drm/i915/915_irq.c due to the additional 
dev_priv->irq_mask_reg = ~0; in git between the removed lines, I kept 
it) I can suspend/resume and do a VC switch again.

Big thanks!

Bernhard
