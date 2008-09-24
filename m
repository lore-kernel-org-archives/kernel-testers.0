From: Kyle McMartin <kyle-pfcGkIkfWfAsA/PxXw9srA@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 15:10:22 -0400
Message-ID: <20080924191022.GC2591@phobos.i.cabal.ca>
References: <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz> <20080923.211215.193696086.davem@davemloft.net> <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com> <20080924.003638.71148740.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20080924.003638.71148740.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jkosina-AlSwsSmVLrQ@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Wed, Sep 24, 2008 at 12:36:38AM -0700, David Miller wrote:
> The e1000e side here is reproducable way too easily for it to be the
> same case, as far as I see it.
> 

I've been working on a patch to detect (using a timer and checking at
 up/down) whether or not the flash has been corrupted, and, if it is
rewrite it with the saved good copy (which obviously only helps if
it's the same boot.)

Unfortunately, I don't have enough time to finish it before I go away
for the weekend, so I'll toss it over the wall and see if it sticks to
anything.

At a glance, one would need to add support for rewriting
adapter->hw.flash from ethtool if someone reprograms the good firmware
back, and writing the good flash back on down/remove if it detects
a change.

Bear in mind, super quick hack, and I haven't even run-tested it yet.

If nobody decides to run with it, I'll probably give it another poke
late tonight.

Definitely-not-signed-off-by-or-tested-by: Kyle

At the very least, if someone pokes in a hexdump of the firmware, at
least we might be able to see some of the method to the madness of the
corruption pattern.

diff --git a/drivers/net/e1000e/e1000.h b/drivers/net/e1000e/e1000.h
index ac4e506..08cce8c 100644
--- a/drivers/net/e1000e/e1000.h
+++ b/drivers/net/e1000e/e1000.h
@@ -168,6 +168,7 @@ struct e1000_adapter {
 	struct timer_list watchdog_timer;
 	struct timer_list phy_info_timer;
 	struct timer_list blink_timer;
+	struct timer_list flash_timer;
 
 	struct work_struct reset_task;
 	struct work_struct watchdog_task;
diff --git a/drivers/net/e1000e/hw.h b/drivers/net/e1000e/hw.h
index 74f263a..ca3f645 100644
--- a/drivers/net/e1000e/hw.h
+++ b/drivers/net/e1000e/hw.h
@@ -863,6 +863,11 @@ struct e1000_hw {
 
 	u8 __iomem *hw_addr;
 	u8 __iomem *flash_address;
+	int flash_len;
+
+	u8 *flash;
+	u8 *flash_backup;
+	spinlock_t flashlock;
 
 	struct e1000_mac_info  mac;
 	struct e1000_fc_info   fc;
diff --git a/drivers/net/e1000e/netdev.c b/drivers/net/e1000e/netdev.c
index d266510..13f05f8 100644
--- a/drivers/net/e1000e/netdev.c
+++ b/drivers/net/e1000e/netdev.c
@@ -2535,6 +2535,7 @@ void e1000e_down(struct e1000_adapter *adapter)
 
 	del_timer_sync(&adapter->watchdog_timer);
 	del_timer_sync(&adapter->phy_info_timer);
+	del_timer_sync(&adapter->flash_timer);
 
 	netdev->tx_queue_len = adapter->tx_queue_len;
 	netif_carrier_off(netdev);
@@ -2922,6 +2923,33 @@ static void e1000_update_phy_info(unsigned long data)
 	e1000_get_phy_info(&adapter->hw);
 }
 
+static inline int e1000_test_flash(struct e1000_adapter *adapter)
+{
+	int ret = 0;
+
+	if (adapter->hw.flash && adapter->hw.flash_backup) {
+		spin_lock(&adapter->hw.flashlock);
+		memcpy(adapter->hw.flash_backup, adapter->hw.flash_address,
+			adapter->hw.flash_len);
+		ret = memcmp(adapter->hw.flash, adapter->hw.flash_backup,
+			adapter->hw.flash_len);
+		spin_unlock(&adapter->hw.flashlock);
+		if (ret) {
+			/* dump_eeprom(adapter); */
+			printk(KERN_ERR "AWOOOGA AWOOOGA flash changed\n");
+		}
+	}
+
+	return ret;
+}
+
+static void e1000_flash_test(unsigned long data)
+{
+	struct e1000_adapter *adapter = (struct e1000_adapter *) data;
+	e1000_test_flash(adapter);
+	mod_timer(&adapter->flash_timer, jiffies+(20*HZ));
+}
+
 /**
  * e1000e_update_stats - Update the board statistics counters
  * @adapter: board private structure
@@ -4439,6 +4467,22 @@ static int __devinit e1000_probe(struct pci_dev *pdev,
 		adapter->hw.flash_address = ioremap(flash_start, flash_len);
 		if (!adapter->hw.flash_address)
 			goto err_flashmap;
+
+		adapter->hw.flash_len = (int)flash_len;
+		/* stash away a copy of the flash, and allocate
+		   space for a second copy... */
+		if (!adapter->hw.flash) {
+			u8 *flash = kmalloc(flash_len, GFP_KERNEL);
+			u8 *flash_backup = kmalloc(flash_len, GFP_KERNEL);
+			if (flash && flash_backup) {
+				memcpy(flash, adapter->hw.flash_address,
+					adapter->hw.flash_len);
+				adapter->hw.flash = flash;
+				adapter->hw.flash_backup = flash_backup;
+				spin_lock_init(&adapter->hw.flashlock);
+			}
+		}
+			
 	}
 
 	/* construct the net_device struct */
@@ -4570,6 +4614,10 @@ static int __devinit e1000_probe(struct pci_dev *pdev,
 	adapter->phy_info_timer.function = &e1000_update_phy_info;
 	adapter->phy_info_timer.data = (unsigned long) adapter;
 
+	init_timer(&adapter->flash_timer);
+	adapter->flash_timer.function = &e1000_flash_test;
+	adapter->flash_timer.data = (unsigned long) adapter;
+
 	INIT_WORK(&adapter->reset_task, e1000_reset_task);
 	INIT_WORK(&adapter->watchdog_task, e1000_watchdog_task);
 
@@ -4641,6 +4689,9 @@ static int __devinit e1000_probe(struct pci_dev *pdev,
 
 	e1000_print_device_info(adapter);
 
+	/* every twenty seconds, test the flash */
+	mod_timer(&adapter->flash_timer, jiffies+(HZ*20));
+
 	return 0;
 
 err_register:
@@ -4690,6 +4741,7 @@ static void __devexit e1000_remove(struct pci_dev *pdev)
 	set_bit(__E1000_DOWN, &adapter->state);
 	del_timer_sync(&adapter->watchdog_timer);
 	del_timer_sync(&adapter->phy_info_timer);
+	del_timer_sync(&adapter->flash_timer);
 
 	flush_scheduled_work();
 
