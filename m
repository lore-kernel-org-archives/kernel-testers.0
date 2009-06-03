From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Wed, 3 Jun 2009 23:51:01 +0200
Message-ID: <200906032351.01900.rjw@sisk.pl>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera> <200906032305.07551.rjw@sisk.pl> <1244064315.22576.5.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756749AbZFCVu4@vger.kernel.org>
In-Reply-To: <1244064315.22576.5.camel@johannes.local>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Wednesday 03 June 2009, Johannes Berg wrote:
> [can you please turn off html email?]

Yes, sorry.  I didn't notice that my mailer sneakily started to add HTML
"alternative" to every message.

> > Can you please send me /proc/interrupts from the affected box?
> 
> $ cat /proc/interrupts 
>             CPU0       CPU1       
>    0:    1820687          0   IO-APIC-edge      timer
>    7:          1          0   IO-APIC-edge    
>    9:      38721          0   IO-APIC-fasteoi   acpi
>   16:        940          0   IO-APIC-fasteoi   HDA Intel
>   17:        517          0   IO-APIC-fasteoi   ohci_hcd:usb4
>   18:     289829          0   IO-APIC-fasteoi   ohci_hcd:usb3
>   19:    2035671          0   IO-APIC-fasteoi   ehci_hcd:usb2
>   20:         32          0   IO-APIC-fasteoi   ehci_hcd:usb1
>   25:     515569          0   PCI-MSI-edge      ahci
>   26:          0          0   PCI-MSI-edge      eth0
>  NMI:          0          0   Non-maskable interrupts
>  LOC:     152936     638337   Local timer interrupts
>  SPU:          0          0   Spurious interrupts
>  RES:     317238     581858   Rescheduling interrupts
>  CAL:         43        128   Function call interrupts
>  TLB:      60645      53553   TLB shootdowns
>  TRM:          0          0   Thermal event interrupts
>  THR:          0          0   Threshold APIC interrupts
>  ERR:          1
>  MIS:          0

Hmm.  The patch shouldn't matter for this box, except for one thing:
check_irq_resend() on resume.  Interesting.

Rafael
