From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #16197] [BUG on 2.6.35-rc2] sysfs: cannot create duplicate
 filename '/devices/pci0000:00/0000:00:11.0/0000:02:03.0/slot'
Date: Thu, 8 Jul 2010 17:33:44 -0700
Message-ID: <20100708173344.2d108ffd@virtuousgeek.org>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
	<TXb9XdQzJoD.A.5eD.pNmNMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <TXb9XdQzJoD.A.5eD.pNmNMB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Alex Chiang <achiang@canonical.com>, Ryan Wang <openspace.wang@gmail.com>

On Fri,  9 Jul 2010 01:41:34 +0200 (CEST)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16197
> Subject		: [BUG on 2.6.35-rc2] sysfs: cannot create duplicate filename '/devices/pci0000:00/0000:00:11.0/0000:02:03.0/slot'
> Submitter	: Ryan Wang <openspace.wang@gmail.com>
> Date		: 2010-06-07 0:23 (32 days old)
> Message-ID	: <AANLkTincwMZPnYW3S4uz4k2GOn52RpgBIBRfzyD010Yo@mail.gmail.com>
> References	: http://marc.info/?l=linux-kernel&m=127587022219378&w=2

I thought this one was closed with the revert of the slot symlink?

-- 
Jesse Barnes, Intel Open Source Technology Center
