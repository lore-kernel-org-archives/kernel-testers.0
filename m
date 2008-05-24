From: "Peter Teoh" <htmldeveloper-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: 2.6.26-rc1 ata2 problems????
Date: Sat, 24 May 2008 14:24:47 +0800
Message-ID: <804dabb00805232324r47745c86v9fa941cb9f3fcb5d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=oLn5gJ5qMNtYabSb14gSDp5G/ehlq2pZi+drYFMT4oQ=;
        b=X5VNNsr5SMR29UHV7zDliSZo7uGGLFl1GIuctBiWb3Bjb1Y58jK9/7CyQllKS5Vwjc+0M0cHmi+zkIN9CsjdIqvucXrsGnLGEBaIgtadwjVoaEM/bgkBF3Q53E2nem2d7rXd/N0pKDIgmh9MHFC1rYHzCdLattIhKZdhlp1X79A=
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernelnewbies <kernelnewbies-qDhp9YYfzQpg9hUCZPvPmw@public.gmane.org>

Just found this error in the dmesg:


ata2.00: qc timeout (cmd 0xa0)
ata2.00: exception Emask 0x0 SAct 0x0 SErr 0x0 action 0x6 frozen
ata2.00: cmd a0/00:00:00:08:00/00:00:00:00:00/a0 tag 0 pio 16392 in
         cdb 4a 01 00 00 10 00 00 00  08 00 00 00 00 00 00 00
         res 51/04:01:01:14:eb/00:00:00:00:00/a0 Emask 0x5 (timeout)
ata2.00: status: { DRDY ERR }
ata2: link is slow to respond, please be patient (ready=0)
ata2: device not ready (errno=-16), forcing hardreset
ata2: soft resetting link
ata2.00: configured for UDMA/33
ata2: EH complete
ADDRCONF(NETDEV_UP): eth1: link is not ready
ADDRCONF(NETDEV_UP): eth1: link is not ready
ADDRCONF(NETDEV_CHANGE): eth1: link becomes ready
eth1: no IPv6 routers present
ata2.00: exception Emask 0x0 SAct 0x0 SErr 0x0 action 0x0
ata2.00: cmd a0/00:00:00:00:00/00:00:00:00:00/a0 tag 0
         cdb 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00
         res 51/20:03:00:00:00/00:00:00:00:00/a0 Emask 0x1 (device error)
ata2.00: status: { DRDY ERR }
ata2.00: qc timeout (cmd 0xa0)
ata2.00: exception Emask 0x0 SAct 0x0 SErr 0x0 action 0x6 frozen
ata2.00: cmd a0/00:00:00:00:00/00:00:00:00:00/a0 tag 0
         cdb 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00
         res 51/20:03:00:00:00/00:00:00:00:00/a0 Emask 0x5 (timeout)
ata2.00: status: { DRDY ERR }
ata2: link is slow to respond, please be patient (ready=0)
ata2: device not ready (errno=-16), forcing hardreset
ata2: soft resetting link
ata2.00: configured for UDMA/33
ata2: EH complete
sr 1:0:0:0: ioctl_internal_command return code = 8000002
   : Sense Key : No Sense [current]
   : Add. Sense: No additional sense information


Any clues to these messages?


-- 
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
