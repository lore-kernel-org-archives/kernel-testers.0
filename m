From: Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>
Subject: Re: [Bug #11358] net: forcedeth call restore mac addr in
	nv_shutdown path
Date: Sun, 31 Aug 2008 10:41:36 +0200
Message-ID: <20080831084135.GA2698@yamamaya.is-a-geek.org>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik> <N8SeMoDzuxC.A.nFF.0ibuIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <N8SeMoDzuxC.A.nFF.0ibuIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11358
> Subject		: net: forcedeth call restore mac addr in nv_shutdown path
> Submitter	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-08-17 3:30 (14 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D121894389018584&w=
=3D4
> Handled-By	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121894389018584&w=3D4

I got around to try kexec and found that on 2.6.27-rc5, without
Yinghai Lu's patch, when I kexec while forecdeth is loaded I get the
following when the new kernel tries to load the module (on my Asus
M2N-SLI Deluxe):

|Aug 31 10:10:42 melchior kernel: [   10.578053] forcedeth: Reverse Eng=
ineered nForce ethernet driver. Version 0.61.
|Aug 31 10:10:42 melchior kernel: [   10.578256] forcedeth 0000:00:08.0=
: BAR 0: error updating (0xfe02a000 !=3D 0x000000)
|Aug 31 10:10:42 melchior kernel: [   10.580901] forcedeth 0000:00:08.0=
: enabling device (0000 -> 0003)
|Aug 31 10:10:42 melchior kernel: [   10.581405] ACPI: PCI Interrupt Li=
nk [APCH] enabled at IRQ 22
|Aug 31 10:10:42 melchior kernel: [   10.581509] forcedeth 0000:00:08.0=
: PCI INT A -> Link[APCH] -> GSI 22 (level, low) -> IRQ 22
|Aug 31 10:10:42 melchior kernel: [   10.581699] forcedeth 0000:00:08.0=
: setting latency timer to 64
|Aug 31 10:10:42 melchior kernel: [   10.581748] forcedeth 0000:00:08.0=
: Invalid Mac address detected: ff:ff:ff:ff:ff:ff
|Aug 31 10:10:42 melchior kernel: [   10.581936] forcedeth 0000:00:08.0=
: Please complain to your hardware vendor. Switching to a random MAC.
|Aug 31 10:10:42 melchior kernel: [   15.981960] forcedeth 0000:00:08.0=
: open: Could not find a valid PHY.
|Aug 31 10:10:42 melchior kernel: [   15.982131] forcedeth 0000:00:08.0=
: PCI INT A disabled
|Aug 31 10:10:42 melchior kernel: [   15.982283] forcedeth: probe of 00=
00:00:08.0 failed with error -12
|Aug 31 10:10:42 melchior kernel: [   16.017545] forcedeth 0000:00:09.0=
: BAR 0: error updating (0xfe027000 !=3D 0x000000)
|Aug 31 10:10:42 melchior kernel: [   16.017766] forcedeth 0000:00:09.0=
: enabling device (0000 -> 0003)
|Aug 31 10:10:42 melchior kernel: [   16.018720] ACPI: PCI Interrupt Li=
nk [AMC1] enabled at IRQ 21
|Aug 31 10:10:42 melchior kernel: [   16.018839] forcedeth 0000:00:09.0=
: PCI INT A -> Link[AMC1] -> GSI 21 (level, low) -> IRQ 21
|Aug 31 10:10:42 melchior kernel: [   16.019050] forcedeth 0000:00:09.0=
: setting latency timer to 64
|Aug 31 10:10:42 melchior kernel: [   16.019129] forcedeth 0000:00:09.0=
: Invalid Mac address detected: ff:ff:ff:ff:ff:ff
|Aug 31 10:10:42 melchior kernel: [   16.019339] forcedeth 0000:00:09.0=
: Please complain to your hardware vendor. Switching to a random MAC.
|Aug 31 10:10:42 melchior kernel: [   21.399400] forcedeth 0000:00:09.0=
: open: Could not find a valid PHY.
|Aug 31 10:10:42 melchior kernel: [   21.399572] forcedeth 0000:00:09.0=
: PCI INT A disabled
|Aug 31 10:10:42 melchior kernel: [   21.399723] forcedeth: probe of 00=
00:00:09.0 failed with error -12

If I rmmod forcedeth before kexec, it loads fine later.
This is with MSI enabled:
|           CPU0      =20
|  0:         99   IO-APIC-edge      timer
|  1:          2   IO-APIC-edge      i8042
|  7:          1   IO-APIC-edge   =20
|  8:          1   IO-APIC-edge      rtc
|  9:          0   IO-APIC-fasteoi   acpi
| 12:          3   IO-APIC-edge      i8042
| 14:         53   IO-APIC-edge      pata_amd
| 15:          0   IO-APIC-edge      pata_amd
| 16:      76975   IO-APIC-fasteoi   ahci, radeon@pci:0000:02:00.0
| 18:          0   IO-APIC-fasteoi   EMU10K1
| 20:          6   IO-APIC-fasteoi   ehci_hcd:usb1
| 21:         54   IO-APIC-fasteoi   sata_nv
| 22:          0   IO-APIC-fasteoi   sata_nv
| 23:      11230   IO-APIC-fasteoi   sata_nv, ohci_hcd:usb2
|284:      81038   PCI-MSI-edge      eth1
|285:      74728   PCI-MSI-edge      eth0
|NMI:          0   Non-maskable interrupts
|LOC:      29209   Local timer interrupts
|TRM:          0   Thermal event interrupts
|THR:          0   Threshold APIC interrupts
|SPU:          0   Spurious interrupts
|ERR:          1

Maybe also calling nv_restore_phy() and/or pci_release_regions() in
the shutdown hook would help.

TODO:
Try with the patch, maybe try nv_restore_phy, test if WOL is
affected by the patch.

HTH,

--=20
Tobias						PGP: http://9ac7e0bc.uguu.de
=E3=81=93=E3=81=AE=E3=83=A1=E3=83=BC=E3=83=AB=E3=81=AF=E5=8D=81=E5=89=B2=
=E5=86=8D=E5=88=A9=E7=94=A8=E3=81=95=E3=82=8C=E3=81=9F=E3=83=93=E3=83=83=
=E3=83=88=E3=81=A7=E4=BD=9C=E3=82=89=E3=82=8C=E3=81=A6=E3=81=84=E3=81=BE=
=E3=81=99=E3=80=82
