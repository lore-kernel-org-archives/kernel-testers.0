From: Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
Subject: Re: [Bug #13178] Booting very slow
Date: Tue, 19 May 2009 00:22:33 -0700 (PDT)
Message-ID: <783496.86803.qm@web32608.mail.mud.yahoo.com>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.scG.LA0DKB@chimera>  <424718.52835.qm@web32607.mail.mud.yahoo.com> <ac3eb2510905181726q3b996b8ei9c6a74fe1d3bb17d@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ac3eb2510905181726q3b996b8ei9c6a74fe1d3bb17d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


----- Original Message ----

> From: Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>
> To: Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
> Cc: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>; Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>; Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
> Sent: Tuesday, May 19, 2009 2:26:04 AM
> Subject: Re: [Bug #13178] Booting very slow
> 
> On Mon, May 18, 2009 at 10:15, Martin Knoblauch wrote:
> 
> >> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=13178
> >> Subject        : Booting very slow
> >> Submitter    : Martin Knoblauch
> >> Date        : 2009-04-24 12:45 (23 days old)
> >> References    : http://marc.info/?l=linux-kernel&m=124057716231773&w=4
> >
> >  The issue is still open. It turns out that starting with 2.6.29-rc1 
> /proc/mounts already has a "sysfs" line when entering the startup scripts from 
> initrd. This breaks the RHEL4 firmware hotplug script.
> 
> Is that possibly a missing/failing "umount /sys" _in_ initramfs, which
> leaves the sysfs entry in /proc/mounts behind, which then shows up as
> a duplicate when running in the real rootfs?
> 

 could be. Remains the question, why it never showed up before 2.6.29. I compared my initrd images for 2.6.28 and 2.6.29-rc1, and they only differ in the module-binaries.

Cheers
Martin
