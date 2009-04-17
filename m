From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #13111] Linux 2.6.30-rc1 tg3 endian issues with MAC
 addresses on BCM5701
Date: Thu, 16 Apr 2009 17:43:10 -0700 (PDT)
Message-ID: <20090416.174310.260350758.davem@davemloft.net>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera>
	<nY3-4PrO6XH.A.LI.Sw85JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <nY3-4PrO6XH.A.LI.Sw85JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, benli-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, mchan-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, holt-sJ/iWh9BUns@public.gmane.org

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Date: Thu, 16 Apr 2009 23:45:05 +0200 (CEST)

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13111
> Subject		: Linux 2.6.30-rc1 tg3 endian issues with MAC addresses on BCM5701
> Submitter	: Robin Holt <holt-sJ/iWh9BUns@public.gmane.org>
> Date		: 2009-04-08 7:12 (9 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=e4f341103e4a2b35f56a0f89802f1b1448e8d04b
> References	: http://marc.info/?l=linux-kernel&m=123917477312823&w=4
> Handled-By	: Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>

We're half-way to a fix for this, see the commit below.

But we're not completely finished, so keep this entry open.

commit 0d489ffb76de0fe804cf06a9d4d11fa7342d74b9
Author: James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
Date:   Mon Apr 13 14:31:51 2009 -0700

    tg3: fix big endian MAC address collection failure
    
    We noticed on parisc that our broadcoms all swapped MAC addresses going
    from 2.6.29 to 2.6.30-rc1:
    
    Apr 11 07:48:24 ion kernel: eth0: Tigon3 [partno(BCM95700A6) rev 0105] (PCI:66MHz:64-bit) MAC address 00:30:6e:4b:15:59
    Apr 13 07:34:34 ion kernel: eth0: Tigon3 [partno(BCM95700A6) rev 0105] (PCI:66MHz:64-bit) MAC address 00:00:59:15:4b:6e
    
    The problem patch is:
    
    commit 6d348f2c1e0bb1cf7a494b51fc921095ead3f6ae
    Author: Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
    Date:   Wed Feb 25 14:25:52 2009 +0000
    
        tg3: Eliminate tg3_nvram_read_swab()
    
    With the root cause being the use of memcpy to set the mac address:
    
       memcpy(&dev->dev_addr[0], ((char *)&hi) + 2, 2);
       memcpy(&dev->dev_addr[2], (char *)&lo, sizeof(lo));
    
    This might work on little endian machines, but it can't on big endian
    ones.  You have to use the original setting mechanism to be correct on
    all architectures.
    
    The attached patch fixes parisc.
    
    Signed-off-by: James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
    Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
