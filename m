From: Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>
Subject: Re: [Bug #13178] Booting very slow
Date: Tue, 19 May 2009 10:58:24 +0200
Message-ID: <ac3eb2510905190158o6682f7aat62ff66ac9aaa2a74@mail.gmail.com>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.scG.LA0DKB@chimera> 
	<424718.52835.qm@web32607.mail.mud.yahoo.com> <ac3eb2510905181726q3b996b8ei9c6a74fe1d3bb17d@mail.gmail.com> 
	<783496.86803.qm@web32608.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <783496.86803.qm-1+WuAixcP4WvuULXzWHTWIglqE1Y4D90QQ4Iyu8u01E@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, May 19, 2009 at 09:22, Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>=
 wrote:
>> > =C2=A0The issue is still open. It turns out that starting with 2.6=
=2E29-rc1
>> /proc/mounts already has a "sysfs" line when entering the startup sc=
ripts from
>> initrd. This breaks the RHEL4 firmware hotplug script.
>>
>> Is that possibly a missing/failing "umount /sys" _in_ initramfs, whi=
ch
>> leaves the sysfs entry in /proc/mounts behind, which then shows up a=
s
>> a duplicate when running in the real rootfs?
>
> =C2=A0could be. Remains the question, why it never showed up before 2=
=2E6.29. I compared my initrd images for 2.6.28 and 2.6.29-rc1, and the=
y only differ in the module-binaries.

I wouldn't be surprised if we are just "too fast" again now with the
async stuff, for another piece of rather fragile userspace bootup
logic, making some wrong assumptions. Are you compiling-in the modules
for the root disk and the root filesystem?

Cheers,
Kay
