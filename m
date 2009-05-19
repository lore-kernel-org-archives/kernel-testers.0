From: Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>
Subject: Re: [Bug #13178] Booting very slow
Date: Tue, 19 May 2009 02:26:04 +0200
Message-ID: <ac3eb2510905181726q3b996b8ei9c6a74fe1d3bb17d@mail.gmail.com>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera> <pQ9WADCjgyE.A.scG.LA0DKB@chimera> 
	<424718.52835.qm@web32607.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <424718.52835.qm-f6uctMgKLEavuULXzWHTWIglqE1Y4D90QQ4Iyu8u01E@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, May 18, 2009 at 10:15, Martin Knoblauch <spamtrap-Ys4E+72pFW0hFhg+JK9F0w@public.gmane.org>=
 wrote:

>> Bug-Entry =C2=A0 =C2=A0: http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13178
>> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0: Booting very slow
>> Submitter =C2=A0 =C2=A0: Martin Knoblauch
>> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-04-24 12:45 (23 days old)
>> References =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=3D124=
057716231773&w=3D4
>
> =C2=A0The issue is still open. It turns out that starting with 2.6.29=
-rc1 /proc/mounts already has a "sysfs" line when entering the startup =
scripts from initrd. This breaks the RHEL4 firmware hotplug script.

Is that possibly a missing/failing "umount /sys" _in_ initramfs, which
leaves the sysfs entry in /proc/mounts behind, which then shows up as
a duplicate when running in the real rootfs?

Thanks,
Kay
