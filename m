From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14730] sky2 won't work after suspend/resume cycle
Date: Wed, 30 Dec 2009 00:40:15 +0100
Message-ID: <200912300040.15773.rjw@sisk.pl>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <200912292341.56040.rjw@sisk.pl> <87fx6tz7zz.fsf@devron.myhome.or.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752280AbZL2XkH@vger.kernel.org>
In-Reply-To: <87fx6tz7zz.fsf@devron.myhome.or.jp>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, "Maciej J. Woloszyk" <mat@esi.com.pl>

On Wednesday 30 December 2009, OGAWA Hirofumi wrote:
> "Rafael J. Wysocki" <rjw@sisk.pl> writes:
> 
> >> Well, anyway, another likely one is - restore() should be called after
> >> pci_pm_default_resume()?
> >
> > No, because we want the PCI standard config spaces to be restored before
> > the device interrupts are enabled to avoid intermittent resume failures related
> > to interrupt mishandling.
> >
> > That's why it is important to understand the nature of the sky2 failure here.
> 
> Um..., it was 0xff, so, I thought the config space is not working.  On
> that system, the device is not affected by acpi's _DSW or _PSW?

I don't think it is, but of course I'm not sure.

Rafael
