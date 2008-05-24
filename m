From: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Subject: Re: 2.6.26-rc1 ata2 problems????
Date: Sat, 24 May 2008 15:15:54 +0400
Message-ID: <4837F8EA.3000608@r000n.net>
References: <804dabb00805232324r47745c86v9fa941cb9f3fcb5d@mail.gmail.com>
Reply-To: lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <804dabb00805232324r47745c86v9fa941cb9f3fcb5d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Teoh <htmldeveloper-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Peter Teoh wrote:
> Just found this error in the dmesg:
> 
> 
> ata2.00: qc timeout (cmd 0xa0)
> ata2.00: exception Emask 0x0 SAct 0x0 SErr 0x0 action 0x6 frozen
> ata2.00: cmd a0/00:00:00:08:00/00:00:00:00:00/a0 tag 0 pio 16392 in
>          cdb 4a 01 00 00 10 00 00 00  08 00 00 00 00 00 00 00
>          res 51/04:01:01:14:eb/00:00:00:00:00/a0 Emask 0x5 (timeout)
> ata2.00: status: { DRDY ERR }
> ata2: link is slow to respond, please be patient (ready=0)
> ata2: device not ready (errno=-16), forcing hardreset
> ata2: soft resetting link
> ata2.00: configured for UDMA/33
> ata2: EH complete
> ADDRCONF(NETDEV_UP): eth1: link is not ready
> ADDRCONF(NETDEV_UP): eth1: link is not ready
> ADDRCONF(NETDEV_CHANGE): eth1: link becomes ready
> eth1: no IPv6 routers present
> ata2.00: exception Emask 0x0 SAct 0x0 SErr 0x0 action 0x0
> ata2.00: cmd a0/00:00:00:00:00/00:00:00:00:00/a0 tag 0
>          cdb 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00
>          res 51/20:03:00:00:00/00:00:00:00:00/a0 Emask 0x1 (device error)
> ata2.00: status: { DRDY ERR }
> ata2.00: qc timeout (cmd 0xa0)
> ata2.00: exception Emask 0x0 SAct 0x0 SErr 0x0 action 0x6 frozen
> ata2.00: cmd a0/00:00:00:00:00/00:00:00:00:00/a0 tag 0
>          cdb 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00
>          res 51/20:03:00:00:00/00:00:00:00:00/a0 Emask 0x5 (timeout)
> ata2.00: status: { DRDY ERR }
> ata2: link is slow to respond, please be patient (ready=0)
> ata2: device not ready (errno=-16), forcing hardreset
> ata2: soft resetting link
> ata2.00: configured for UDMA/33
> ata2: EH complete
> sr 1:0:0:0: ioctl_internal_command return code = 8000002
>    : Sense Key : No Sense [current]
>    : Add. Sense: No additional sense information
> 
> 
> Any clues to these messages?
> 
> 
Yes, I got messages "device not ready (errno=-16)" with 2.6.26-rcX
(seems and with 2.6.25-rcX) on system startup.
When has been disconnected old DVD/CD-RW drive (it can write on speed
14x max, may be optics crashed), booting process normal.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
