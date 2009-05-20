From: Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
Subject: Re: [Bug #13178] Booting very slow
Date: Wed, 20 May 2009 03:14:36 -0700 (PDT)
Message-ID: <480189.30937.qm@web32602.mail.mud.yahoo.com>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.scG.LA0DKB@chimera>  <424718.52835.qm@web32607.mail.mud.yahoo.com> <ac3eb2510905181726q3b996b8ei9c6a74fe1d3bb17d@mail.gmail.com>  <783496.86803.qm@web32608.mail.mud.yahoo.com> <ac3eb2510905190158o6682f7aat62ff66ac9aaa2a74@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ac3eb2510905190158o6682f7aat62ff66ac9aaa2a74-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>




 ------------------------------------------------------
Martin Knoblauch
email: k n o b i AT knobisoft DOT de
www:   http://www.knobisoft.de



----- Original Message ----
> From: Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>
> To: Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
> Cc: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>; Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>; Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
> Sent: Tuesday, May 19, 2009 10:58:24 AM
> Subject: Re: [Bug #13178] Booting very slow
> 
> On Tue, May 19, 2009 at 09:22, Martin Knoblauch wrote:
> >> >  The issue is still open. It turns out that starting with 2.6.29-rc1
> >> /proc/mounts already has a "sysfs" line when entering the startup scripts 
> from
> >> initrd. This breaks the RHEL4 firmware hotplug script.
> >>
> >> Is that possibly a missing/failing "umount /sys" _in_ initramfs, which
> >> leaves the sysfs entry in /proc/mounts behind, which then shows up as
> >> a duplicate when running in the real rootfs?
> >
> >  could be. Remains the question, why it never showed up before 2.6.29. I 
> compared my initrd images for 2.6.28 and 2.6.29-rc1, and they only differ in the 
> module-binaries.
> 
> I wouldn't be surprised if we are just "too fast" again now with the
> async stuff, for another piece of rather fragile userspace bootup
> logic, making some wrong assumptions. Are you compiling-in the modules
> for the root disk and the root filesystem?
> 
> Cheers,
> Kay

 timing may actually be the answer. I finally manged to bisect the thing and the first bad commit is this one:

|commit 1120f8b8169fb2cb51219d326892d963e762edb6
|Author: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
|Date:   Thu Dec 18 09:17:16 2008 -0800
|
|    PCI: handle long delays in VPD access
|
|    Accessing the VPD area can take a long time.  The existing
|    VPD access code fails consistently on my hardware. There are comments
|
|    Change the access routines to:
|      * use a mutex rather than spinning with IRQ's disabled and lock held
|      * have a much longer timeout
|      * call cond_resched while spinning
|
|    Signed-off-by: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
|    Reviewed-by: Matthew Wilcox <willy-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
|    Signed-off-by: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

  And no, the "cciss", "ext3" and "jbd" are modules in my intrd image.

 I will continue the discussion under the original topic.

Cheers
