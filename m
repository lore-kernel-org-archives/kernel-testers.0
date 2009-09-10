From: Karsten Mehrhoff <kawime-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #13318] AGP doesn't work anymore on nforce2
Date: Thu, 10 Sep 2009 14:02:29 +0200
Message-ID: <op.uz1iefpygp7xae@127.0.0.1>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera>
 <hKF51Pczj6N.A.2PB.55BpKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <hKF51Pczj6N.A.2PB.55BpKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Jerome Glisse <glisse-CC+yJ3UmIYqDUpFQwHEjaQ@public.gmane.org>, =?utf-8?Q?Michel_D=C3=A4nzer?= <michel-otUistvHUpPR7s880joybQ@public.gmane.org>, Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Hi all,

Today i compilied the new kernel 2.6.31 and everything works ok.
Maybe it's related to other changes in the generic.c file.

So everything works ok for me with AGP in 2.6.31.
I do not get the problem like it was in 2.6.30.x


2.6.31:
=======
$ dmesg | grep agp
[    0.668878] Linux agpgart interface v0.103
[    0.669457] agpgart: Detected NVIDIA nForce2 chipset
[    0.674984] agpgart-nvidia 0000:00:00.0: AGP aperture is 64M @  
0xe0000000
[   35.184416] agpgart-nvidia 0000:00:00.0: AGP 3.0 bridge
[   35.184437] agpgart-nvidia 0000:00:00.0: putting AGP V3 device into 8x  
mode


$ dmesg | grep drm
[    0.675940] [drm] Initialized drm 1.1.0 20060810
[    0.678840] [drm] Initialized radeon 1.31.0 20080528 for 0000:02:00.0  
on minor 0
[   35.460115] [drm] Setting GART location based on new memory map
[   35.460125] [drm] Loading R300 Microcode
[   35.460170] [drm] Num pipes: 1
[   35.460178] [drm] writeback test succeeded in 1 usecs


-Karsten-


[Am 06.09.2009, 20:11 Uhr, schrieb Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>]

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13318
> Subject		: AGP doesn't work anymore on nforce2
> Submitter	: Karsten Mehrhoff <kawime-Mmb7MZpHnFY@public.gmane.org>
> Date		: 2009-04-30 8:51 (130 days old)
> First-Bad-Commit:  
> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=59de2bebabc5027f93df999d59cc65df591c3e6e
> References	: http://marc.info/?l=linux-kernel&m=124108156417560&w=4
> Handled-By	: Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>
