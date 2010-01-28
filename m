From: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with pci=use_crs)
Date: Thu, 28 Jan 2010 13:14:48 -0800
Message-ID: <4B61FE48.3090500@kernel.org>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <201001280909.46043.bjorn.helgaas@hp.com> <4B61D554.9000003@kernel.org> <201001281331.06218.bjorn.helgaas@hp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201001281331.06218.bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Myron Stowe <myron.stowe-VXdhtT5mjnY@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On 01/28/2010 12:31 PM, Bjorn Helgaas wrote:
> On Thursday 28 January 2010 11:20:04 am Yinghai Lu wrote:
>> On 01/28/2010 08:09 AM, Bjorn Helgaas wrote:
>>> On Wednesday 27 January 2010 10:53:51 pm Yinghai Lu wrote:
>>> We should fix that problem rather than just covering it up by
>>> disabling ACPI.  Can you provide any details?
>> that is not covering problem. acpi just cause too many problems.
>>
>> systems using acpi hotplug support, and use acpi aml code to monitor the hotplug status instead of HW
>> and after one or two days will have interrupt storm with sci/acpi interrupt aka 9.
>> ...
>> check many systems have broken acpi?
>> some system acpi code even clear pci bar when just enable acpi at the first point.
> 
> Sorry, let me try to be more constructive.  You mention some things
> above that might be issues with Linux.  I am eager to help fix them.

should be have problem on several parties.
good hw design should let fgpa to monitor that change, instead of have bunch ACPI AML code
on host cpu to do that.

> 
> However, to make progress, I need information, not just rumors.  Can
> you point me to bug reports?  Bugzillas?  Ways to reproduce the
> problems?
I asked our HW engineer to update fpga to handle the problem already.

YH
