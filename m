From: Jiri Kosina <jkosina@suse.cz>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 18:33:53 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809241829500.4671@pegasus.suse.cz>
References: <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>  <20080924.003638.71148740.davem@davemloft.net>  <21d7e9970809240159u6db747eex51892061846b2251@mail.gmail.com>  <20080924.020116.193720569.davem@davemloft.net>
 <21d7e9970809240216m4a93a339sb51a5928fcb5f6fb@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755201AbYIXQdM@vger.kernel.org>
In-Reply-To: <21d7e9970809240216m4a93a339sb51a5928fcb5f6fb@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dave Airlie <airlied@gmail.com>
Cc: David Miller <davem@davemloft.net>, jeffrey.t.kirsher@intel.com, david.vrabel@csr.com, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, chrisl@vmware.com

On Wed, 24 Sep 2008, Dave Airlie wrote:

> Hopefully tglx can supply some traces, I think getting an interrupt 
> during device startup can possibly access the nvram
> http://www.tglx.de/~tglx/wtf2.txt
> seems to suggest bad things could happen.

Actually another user has just reported [1] that his e1000e card got 
screwed up exactly at the point when the installer was probing the X 
configuration. So this really seems a lot like some lethal interaction 
between intel graphics and the network card.

Dave (Airlie, too many Daves on CC here really), do you by any chance see 
any recent change in kernel intel graphic parts of DRM be causing this 
breakage?

[1] https://bugzilla.novell.com/show_bug.cgi?id=425480#c69

-- 
Jiri Kosina
SUSE Labs
