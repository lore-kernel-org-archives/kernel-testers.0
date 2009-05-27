From: david-gFPdbfVZQbY@public.gmane.org
Subject: Re: [Bug #13175] sata_nv incompatible with async scsi scan
Date: Tue, 26 May 2009 17:09:49 -0700 (PDT)
Message-ID: <alpine.DEB.1.10.0905261709070.7953@asgard>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <WCcYF-TAbJC.A.tSD.gQcGKB@chimera> <alpine.DEB.1.10.0905241632150.18053@asgard>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.1.10.0905241632150.18053@asgard>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Harald Dunkel <harald.dunkel-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>

On Sun, 24 May 2009, david-gFPdbfVZQbY@public.gmane.org wrote:

> I wonder if these two bugs are related? when I can get into the office I will 
> try disabling the async scsi scan and re-test 12703
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13175
> Subject         : sata_nv incompatible with async scsi scan
> Submitter       : Benny Halevy <bhalevy-C4P08NqkoRlBDgjK7y7TUQ@public.gmane.org>
> Date            : 2009-04-21 7:03 (34 days old)
> References      : http://marc.info/?l=linux-kernel&m=124029746431777&w=4
>
> [Bug 12703] Intel X25-E 32GB+MCP55_nvidia_sata+2.6.28=it not work together

adding scsi_mod.scan=sync doesn't solve the nvidia problem

David Lang
