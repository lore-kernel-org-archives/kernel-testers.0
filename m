From: David Miller <davem@davemloft.net>
Subject: Re: [Bug #16161] [2.6.35-rc1 regression] sysfs: cannot create
 duplicate filename ... XVR-600 related?
Date: Fri, 18 Jun 2010 13:26:55 -0700 (PDT)
Message-ID: <20100618.132655.260090086.davem@davemloft.net>
References: <19475.45707.157935.788004@pilspetsen.it.uu.se>
	<201006122052.25204.rjw@sisk.pl>
	<20100618131049.462ca7ce@virtuousgeek.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20100618131049.462ca7ce@virtuousgeek.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: jbarnes@virtuousgeek.org
Cc: rjw@sisk.pl, mikpe@it.uu.se, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, maciej.rutecki@gmail.com

From: Jesse Barnes <jbarnes@virtuousgeek.org>
Date: Fri, 18 Jun 2010 13:10:49 -0700

> I reverted the symlink patch that was causing the trouble.  The root
> cause is elsewhere though; it seems some firmwares report duplicate PCI
> slot numbers...

Instead of postulating, you can confirm or deny such a theory
by taking a look at the repository of sparc openfirmware tree
dumps maintained at:

	master.kernel.org:/pub/scm/linux/kernel/git/davem/prtconfs.git
