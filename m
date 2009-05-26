From: Benny Halevy <bhalevy-C4P08NqkoRlBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #13175] sata_nv incompatible with async scsi scan
Date: Tue, 26 May 2009 19:38:32 +0300
Message-ID: <4A1C1B08.2080600@panasas.com>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <WCcYF-TAbJC.A.NgD.lQcGKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <WCcYF-TAbJC.A.NgD.lQcGKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Matthew Wilcox <matthew-Ztpu424NOJ8@public.gmane.org>

On May. 24, 2009, 22:31 +0300, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).

Verified to still exist with 2.6.30-rc7 :-(

[The bug description is misleading though.  More testing
lead to post-kernel boot problems where initrd cannot find the sata
devices during its init phase]

Benny

> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13175
> Subject		: sata_nv incompatible with async scsi scan
> Submitter	: Benny Halevy <bhalevy-C4P08NqkoRlBDgjK7y7TUQ@public.gmane.org>
> Date		: 2009-04-21 7:03 (34 days old)
> References	: http://marc.info/?l=linux-kernel&m=124029746431777&w=4
> 
> 
