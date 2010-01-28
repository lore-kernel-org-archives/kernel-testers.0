From: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with pci=use_crs)
Date: Thu, 28 Jan 2010 10:20:04 -0800
Message-ID: <4B61D554.9000003@kernel.org>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <1264652762.24020.5.camel@dc7800.home> <4B61266F.1060600@kernel.org> <201001280909.46043.bjorn.helgaas@hp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201001280909.46043.bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Myron Stowe <myron.stowe-VXdhtT5mjnY@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On 01/28/2010 08:09 AM, Bjorn Helgaas wrote:
> On Wednesday 27 January 2010 10:53:51 pm Yinghai Lu wrote:
>> On 01/27/2010 08:26 PM, Bjorn Helgaas wrote:
>>> On Wed, 2010-01-27 at 15:34 -0800, Yinghai Lu wrote:
> 
>>>> 2. how about when apci is disabled?
>>>
>>> When ACPI is disabled, I think we just have to accept that we lose some
>>> functionality.  I don't see the need for alternate ways to accomplish
>>> everything that ACPI does.  It's becoming less and less useful to
>>> disable ACPI; I think it's only interesting as a debugging tool, and
>>> even then it's a sledgehammer.
>>
>> some systems when acpi is enabled could have interrupt storm. 
>> and have to disable acpi.
> 
> We should fix that problem rather than just covering it up by
> disabling ACPI.  Can you provide any details?
that is not covering problem. acpi just cause too many problems.

systems using acpi hotplug support, and use acpi aml code to monitor the hotplug status instead of HW
and after one or two days will have interrupt storm with sci/acpi interrupt aka 9.
> 
> I think it's crazy to add code to work around Problem B that only
> occurs because we disabled ACPI to work around Problem A.  We should
> just fix Problem A instead.

that is not point. fix BIOS or HW or OS?

check many systems have broken acpi?
some system acpi code even clear pci bar when just enable acpi at the first point.

YH
