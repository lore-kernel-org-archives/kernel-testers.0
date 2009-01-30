From: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [linux-pm] Suspend regression, hang after matroxfb
Date: Fri, 30 Jan 2009 23:31:44 +0100
Message-ID: <20090130223144.GD13207@alice>
References: <20090129125855.GA4597@alice> <200901302215.28057.rjw@sisk.pl> <20090130220640.GB13207@alice> <200901302327.50887.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200901302327.50887.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, vandrove-hnqZr3NxcozrBKCeMvbIDA@public.gmane.org, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

* Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> On Friday 30 January 2009, Eric Sesterhenn wrote:
> > * Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> > > On Friday 30 January 2009, Eric Sesterhenn wrote:
> > > > * Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> > > > > On Thursday 29 January 2009, Eric Sesterhenn wrote:
> > > > > > hi,
> > > > > > 
> > > > > > on this box standby worked with 2.6.28, but is broken with 2.6.29-rc3.
> > > > > > 
> > > > > > Dmesg of startup
> > > > > > http://www.cccmz.de/~snakebyte/200.log
> > > > > > .config
> > > > > > http://www.cccmz.de/~snakebyte/config_200
> > > > > > 
> > > > > > When testing the devices 
> > > > > > 
> > > > > > root@computer-desktop:/sys/power# echo devices > pm_test 
> > > > > 
> > > > > What happens if you replace 'devices' with 'core' ?
> > > > 
> > > > no change, it hangs after matroxfb
> > > > 
> > > > root@computer-desktop:/sys/power# echo core > pm_test 
> > > > root@computer-desktop:/sys/power# echo standby > state
> > > > 
> > > [--snip--]
> > > > 
> > > > > If the same, what happens without the matroxfb driver?
> > > > 
> > > > It gets a bit further, suspend seems to complete,
> > > > but hangs during resume
> > > 
> > > Please check if the appended patch helps.
> > 
> > It does help in both cases (with matroxfb enabled and disabled)
> > thanks.
> 
> What machine is that?

I mean the driver enabled in .config.

box is one of my kernel testgrounds running ubuntu intrepid,
for .config and dmesg see the links above

root@computer-desktop:~# cat /proc/cpuinfo 
processor	: 0
vendor_id	: GenuineIntel
cpu family	: 6
model		: 8
model name	: Pentium III (Coppermine)
stepping	: 3
cpu MHz		: 697.819
cache size	: 256 KB
fdiv_bug	: no
hlt_bug		: no
f00f_bug	: no
coma_bug	: no
fpu		: yes
fpu_exception	: yes
cpuid level	: 2
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 sep mtrr pge mca
cmov pat pse36 mmx fxsr sse
bogomips	: 1395.63
clflush size	: 32
power management:

root@computer-desktop:~# lspci
00:00.0 Host bridge: Intel Corporation 440BX/ZX/DX - 82443BX/ZX/DX Host
bridge (rev 03)
00:01.0 PCI bridge: Intel Corporation 440BX/ZX/DX - 82443BX/ZX/DX AGP
bridge (rev 03)
00:07.0 ISA bridge: Intel Corporation 82371AB/EB/MB PIIX4 ISA (rev 02)
00:07.1 IDE interface: Intel Corporation 82371AB/EB/MB PIIX4 IDE (rev
01)
00:07.2 USB Controller: Intel Corporation 82371AB/EB/MB PIIX4 USB (rev
01)
00:07.3 Bridge: Intel Corporation 82371AB/EB/MB PIIX4 ACPI (rev 02)
00:0a.0 Ethernet controller: Intel Corporation 82556 EtherExpress
PRO/100 Smart (rev 03)
00:0c.0 SCSI storage controller: Adaptec AIC-7861 (rev 03)
00:0e.0 Ethernet controller: Realtek Semiconductor Co., Ltd.
RTL-8139/8139C/8139C+ (rev 10)
00:12.0 Multimedia audio controller: Rockwell International Device 4310
00:12.1 Communication controller: Rockwell International Riptide HSF 56k
PCI Modem
00:12.2 Input device controller: Rockwell International Device 4312
01:00.0 VGA compatible controller: Matrox Graphics, Inc. MGA G200 AGP
(rev 03)

If you need any other information, just let me know

Greetings, Eric
