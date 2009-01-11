From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: [Bug #12420] WARNING: at drivers/ata/libata-sff.c:1017 ata_sff_hsm_move+0x45e/0x750()
Date: Sun, 11 Jan 2009 15:52:03 +0100
Message-ID: <496A0793.3070309@fisher-privat.net>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera> <oWTznAnH9BI.A.PPH.GHfaJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <oWTznAnH9BI.A.PPH.GHfaJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jeff Garzik <jgarzik-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Sergei Shtylyov <sshtylyov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>

Rafael J. Wysocki schrieb:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12420
> Subject		: WARNING: at drivers/ata/libata-sff.c:1017 ata_sff_hsm_move+0x45e/0x750()
> Submitter	: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
> Date		: 2009-01-09 12:34 (3 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=871af1210f13966ab911ed2166e4ab2ce775b99d
> References	: http://marc.info/?l=linux-kernel&m=123150457832109&w=4
> 

I just realised, this warning message normally should inculde DMI System
Product Name ( Hardware Name ), but my board do not support this filed (
it geve only "System Product Name" ) and use only DMI Board Product Name
instead. It should be "5LD2-VM".

------------[ cut here ]------------
WARNING: at drivers/ata/libata-sff.c:1017 ata_sff_hsm_move+0x480/0x6c2()
Hardware name: System Product Name
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Should be like:
Hradware name: P5LD2-VM

See my dmidecoe:

Handle 0x0001, DMI type 1, 27 bytes
System Information
        Manufacturer: stem manufacturer
        Product Name: System Product Name
        Version: System Version
        Serial Number: System Serial Number
        UUID: [------------cuted out--------------]
        Wake-up Type: PCI PME#
        SKU Number: <BAD INDEX>
        Family: <BAD INDEX>

Handle 0x0002, DMI type 2, 15 bytes
Base Board Information
        Manufacturer: ASUSTeK Computer INC.
        Product Name: P5LD2-VM
        Version: Rev 1.xx
        Serial Number: MB-1234567890
        Asset Tag: To Be Filled By O.E.M.
        Features:
                Board is a hosting board
                Board is replaceable
        Location In Chassis: To Be Filled By O.E.M.
        Chassis Handle: 0x0003
        Type: Motherboard
        Contained Object Handles: 0
