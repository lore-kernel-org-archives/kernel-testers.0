From: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: USB scanner not working with 2.6.26-rc3
Date: Sun, 25 May 2008 23:47:24 +0300
Message-ID: <20080525204724.GM1791@cs181133002.pp.htv.fi>
References: <48399143.2030100@googlemail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <48399143.2030100-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: brot <schnitzelkuchen-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sun, May 25, 2008 at 06:18:11PM +0200, brot wrote:
> Hello everyone.
> 
> I switched to 2.6.25-rc3 today, and couldnt get the scanner working. It works in 2.6.25.3. All i did was to open up kooka (kde scanning program) and
> tried to do a preview scan. After nothing happend i tried to replug the scanner but it wont get detected now.
> 
> That is what dmesg says:
> 
> 
> usb 1-3: new high speed USB device using ehci_hcd and address 4
> usb 1-3: configuration #1 chosen from 1 choice
> scsi7 : SCSI emulation for USB Mass Storage devices
> usb-storage: device found at 4
> usb-storage: waiting for device to settle before scanning
> usblp0: USB Bidirectional printer dev 4 if 1 alt 0 proto 2 vid 0x6B10 pid 0x805F
> usbcore: registered new interface driver usblp
> scsi 7:0:0:0: Direct-Access     Canon    MP600Storage     0107 PQ: 0 ANSI: 2
> sd 7:0:0:0: [sde] Attached SCSI removable disk
> sd 7:0:0:0: Attached scsi generic sg6 type 0
> usb-storage: device scan complete
> usb 1-3: usbfs: interface 1 claimed by usblp while 'kooka' sets config #1
> usb 1-3: usbfs: interface 1 claimed by usblp while 'kooka' sets config #1
> usb 1-3: usbfs: interface 1 claimed by usblp while 'kooka' sets config #1
> ehci_hcd 0000:00:02.1: HC died; cleaning up
> usb 1-1: USB disconnect, address 2
> usb 1-3: USB disconnect, address 4
> usblp0: removed
> irq 20: nobody cared (try booting with the "irqpoll" option)
> Pid: 3598, comm: wcg_dddt_autodo Tainted: P          2.6.26-rc3 #1
> 
> Call Trace:
>  <IRQ>  [<ffffffff802544c3>] __report_bad_irq+0x30/0x72
>  [<ffffffff802546ff>] note_interrupt+0x1fa/0x25b
>  [<ffffffff80254dcc>] handle_fasteoi_irq+0xb0/0xd8
>  [<ffffffff8020dfff>] do_IRQ+0x6d/0xd4
>  [<ffffffff8020b781>] ret_from_intr+0x0/0xa
>  <EOI>
> handlers:
> [<ffffffff803d6734>] (usb_hcd_irq+0x0/0x58)
> Disabling IRQ #20
> 
> Maybe someone will know what causes that. If any more informations are needed, feel free to ask. I am willing to test :)

Does it also happen with a plain ftp.kernel.org kernel without any 
patches applied or other modules loaded?

> Have a nice day everyone.
> 
> brot

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
