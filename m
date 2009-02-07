From: Philipp Matthias Hahn <pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org>
Subject: Re: WOL with forcedeth broken since
	f55c21fd9a92a444e55ad1ca4e4732d56661bf2e
Date: Sat, 7 Feb 2009 09:34:48 +0100
Message-ID: <20090207083448.GB5204@pmhahn.de>
References: <20090205232343.GA9455@pmhahn.de> <200902060113.31651.rjw@sisk.pl> <a47yn9c9JrF.A.hz.L5YiJB@chimera> <20090129063118.GA3586@pmhahn.de> <CGyEB0S4BpO.A.MFB.R5YiJB@chimera> <86802c440901292253ie9e2a9dmb4580a3da1480c81@mail.gmail.com> <20090205232343.GA9455@pmhahn.de> <86802c440902051535n118339bes88ae48a54ce4711a@mail.gmail.com> <20090206053320.GA4369@pmhahn.de> <20090206065912.GA3614@pmhahn.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090206065912.GA3614-isSyJ6YaLy+zQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

HellO!

On Fri, Feb 06, 2009 at 07:59:12AM +0100, Philipp Matthias Hahn wrote:
> I did some structured tesing:

Here are my captured console logs:
scout=Desktop with nVidia Corporation MCP51 Ethernet Controller (rev a3)
euro=Laptop used for capturing and wakeup

(initramfs) modprobe forcedeth
forcedeth: Reverse Engineered nForce ethernet driver. Version 0.61.
ACPI: PCI Interrupt Link [LMAC] enabled at IRQ 23
forcedeth 0000:00:14.0: PCI INT A -> Link[LMAC] -> GSI 23 (level, low) -> IRQ 23
forcedeth 0000:00:14.0: setting latency timer to 64
nv_probe: MAC_ADDR_REV ELSE
nv_probe: set workaround bit for reversed mac addr
forcedeth 0000:00:14.0: ifname eth0, PHY OUI 0x732 @ 1, addr 00:19:db:f2:e1:35
forcedeth 0000:00:14.0: highdma pwrctl timirq gbit lnktim desc-v3
(initramfs) ethtool -s eth0 wol g
(initramfs) poweroff
...
forcedeth 0000:00:14.0: PCI INT A disabled
forcedeth 0000:00:14.0: PME# enabled
forcedeth 0000:00:14.0: wake-up capability enabled by ACPI
ACPI: Preparing to enter system sleep state S5
...
Power down.
acpi_power_off called

euro:~# etherwake -i eth0 00:19:db:f2:e1:35 # FAIL
euro:~# etherwake -i eth0 35:e1:f2:db:19:00 # FAIL


(initramfs) modprobe forcedeth
forcedeth: Reverse Engineered nForce ethernet driver. Version 0.61.
ACPI: PCI Interrupt Link [LMAC] enabled at IRQ 23
forcedeth 0000:00:14.0: PCI INT A -> Link[LMAC] -> GSI 23 (level, low) -> IRQ 23
forcedeth 0000:00:14.0: setting latency timer to 64
nv_probe: MAC_ADDR_REV ELSE
nv_probe: set workaround bit for reversed mac addr
forcedeth 0000:00:14.0: ifname eth0, PHY OUI 0x732 @ 1, addr 00:19:db:f2:e1:35
forcedeth 0000:00:14.0: highdma pwrctl timirq gbit lnktim desc-v3
(initramfs) ethtool -s eth0 wol g
(initramfs) echo o > /proc/sysrq-trigger
SysRq : Power Off
...
forcedeth 0000:00:14.0: PCI INT A disabled
forcedeth 0000:00:14.0: PME# enabled
forcedeth 0000:00:14.0: wake-up capability enabled by ACPI
ACPI: Preparing to enter system sleep state S5
...
Power down.
acpi_power_off called

euro:~# etherwake -i eth0 00:19:db:f2:e1:35 # FAIL
euro:~# etherwake -i eth0 35:e1:f2:db:19:00 # FAIL


(initramfs) modprobe forcedeth
forcedeth: Reverse Engineered nForce ethernet driver. Version 0.61.
ACPI: PCI Interrupt Link [LMAC] enabled at IRQ 23
forcedeth 0000:00:14.0: PCI INT A -> Link[LMAC] -> GSI 23 (level, low) -> IRQ 23
forcedeth 0000:00:14.0: setting latency timer to 64
nv_probe: MAC_ADDR_REV ELSE
nv_probe: set workaround bit for reversed mac addr
forcedeth 0000:00:14.0: ifname eth0, PHY OUI 0x732 @ 1, addr 00:19:db:f2:e1:35
forcedeth 0000:00:14.0: highdma pwrctl timirq gbit lnktim desc-v3
(initramfs) ethtool -s eth0 wol g
(initramfs) echo b > /proc/sysrq-trigger
SysRq : Resetting
(grub) halt

euro:~# etherwake -i eth0 35:e1:f2:db:19:00 # FAIL
euro:~# etherwake -i eth0 00:19:db:f2:e1:35 # SUCCESS


(initramfs) modprobe forcedeth
forcedeth: Reverse Engineered nForce ethernet driver. Version 0.61.
ACPI: PCI Interrupt Link [LMAC] enabled at IRQ 23
forcedeth 0000:00:14.0: PCI INT A -> Link[LMAC] -> GSI 23 (level, low) -> IRQ 23
forcedeth 0000:00:14.0: setting latency timer to 64
nv_probe: MAC_ADDR_REV ELSE
nv_probe: set workaround bit for reversed mac addr
forcedeth 0000:00:14.0: ifname eth0, PHY OUI 0x732 @ 1, addr 00:19:db:f2:e1:35
forcedeth 0000:00:14.0: highdma pwrctl timirq gbit lnktim desc-v3
(initramfs) ethtool -s eth0 wol g
(initramfs) exit
...
scout:~# poweroff
...
forcedeth 0000:00:14.0: PCI INT A disabled
forcedeth 0000:00:14.0: PME# enabled
forcedeth 0000:00:14.0: wake-up capability enabled by ACPI
ACPI: Preparing to enter system sleep state S5
...
Power down.
acpi_power_off called

euro:~# etherwake -i eth0 00:19:db:f2:e1:35 # FAIL
euro:~# etherwake -i eth0 35:e1:f2:db:19:00 # SUCCESS

BYtE
Philipp Hahn
-- 
  / /  (_)__  __ ____  __ Philipp Hahn
 / /__/ / _ \/ // /\ \/ /
/____/_/_//_/\_,_/ /_/\_\ pmhahn-u4khhh1J0LzF41mA0N3lWw@public.gmane.org
