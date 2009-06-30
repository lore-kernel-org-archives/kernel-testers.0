From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13644] hibernation/swsusp lockup due to acpi-cpufreq
Date: Tue, 30 Jun 2009 14:48:54 +0200
Message-ID: <200906301448.55209.rjw@sisk.pl>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.RZF.MjASKB@chimera> <20090630004041.GA11641@sig21.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090630004041.GA11641-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Johannes Stezenbach <js-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday 30 June 2009, Johannes Stezenbach wrote:
> On Mon, Jun 29, 2009 at 02:31:01AM +0200, Rafael J. Wysocki wrote:
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13644
> > Subject		: hibernation/swsusp lockup due to acpi-cpufreq
> > Submitter	: Johannes Stezenbach <js-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
> > Date		: 2009-06-16 01:27 (13 days old)
> > References	: http://lkml.org/lkml/2009/6/15/630
> > Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> 
> I tested v2.6.31-rc1-228-g2bfdd79 and the bug is still there.
> It actually got worse, the local_irq_save/restore workaround
> in kernel/up-c (http://lkml.org/lkml/2009/6/16/333) doesn't fix it
> anymore, it hangs at suspend before writing out the image.
> 
> With the up.c workaround (including a
> WARN_ON_ONCE(irqs_disabled() && !oops_in_progress);)
> applied and no_console_suspend I captured the attached
> output using a crappy webcam.  (Without the workaround
> there is a huge spew of warnings about irqs enabled
> unexpectedly.)  I guess the interesting part is
> 
>   pm_op(): pci_pm_thaw returns -16
>   PM: Device 0000:00:00.0 failed to thaw: error -16

Hmm, it looks like we fail to thaw the host bridge.

> (PCI info is in http://lkml.org/lkml/2009/6/15/630)

Well, thanks for the update.  I'll do my best to fix the cpufreq suspend
before 2.6.31 final.

Best,
Rafael
