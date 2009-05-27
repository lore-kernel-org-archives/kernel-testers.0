From: Benny Halevy <bhalevy-C4P08NqkoRlBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #13175] sata_nv incompatible with async scsi scan
Date: Wed, 27 May 2009 10:31:09 +0300
Message-ID: <4A1CEC3D.5030908@panasas.com>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <WCcYF-TAbJC.A.NgD.lQcGKB@chimera> <4A1C1B08.2080600@panasas.com> <200905262047.20823.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905262047.20823.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Matthew Wilcox <matthew-Ztpu424NOJ8@public.gmane.org>

On May. 26, 2009, 21:47 +0300, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Tuesday 26 May 2009, Benny Halevy wrote:
>> On May. 24, 2009, 22:31 +0300, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>>> This message has been generated automatically as a part of a report
>>> of regressions introduced between 2.6.28 and 2.6.29.
>>>
>>> The following bug entry is on the current list of known regressions
>>> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
>>> be listed and let me know (either way).
>> Verified to still exist with 2.6.30-rc7 :-(
>>
>> [The bug description is misleading though.  More testing
>> lead to post-kernel boot problems where initrd cannot find the sata
>> devices during its init phase]
> 
> Thanks for the update.
> 
> What description would be better in your opinion?

How about: initrd fails to find /dev/sda* (sata_nv)

Benny

> 
> Rafael
