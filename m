From: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
Subject: Re: [Bug #14730] sky2 won't work after suspend/resume cycle
Date: Wed, 30 Dec 2009 08:16:16 +0900
Message-ID: <87fx6tz7zz.fsf@devron.myhome.or.jp>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <200912292229.47644.rjw@sisk.pl>
	<874on9tov5.fsf@devron.myhome.or.jp> <200912292341.56040.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200912292341.56040.rjw-KKrjLPT3xs0@public.gmane.org> (Rafael J. Wysocki's message of
	"Tue, 29 Dec 2009 23:41:55 +0100")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Maciej J. Woloszyk" <mat-7wKBDC4inUHVItvQsEIGlw@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

>> Well, anyway, another likely one is - restore() should be called after
>> pci_pm_default_resume()?
>
> No, because we want the PCI standard config spaces to be restored before
> the device interrupts are enabled to avoid intermittent resume failures related
> to interrupt mishandling.
>
> That's why it is important to understand the nature of the sky2 failure here.

Um..., it was 0xff, so, I thought the config space is not working.  On
that system, the device is not affected by acpi's _DSW or _PSW?

Well, ok. If someone is working for it, that's enough good to me.

Thanks.
-- 
OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
