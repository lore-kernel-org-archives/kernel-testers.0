From: Niel Lambrechts <niel.lambrechts-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13180] 2.6.30-rc2: WARNING at i915_gem.c for i915_gem_idle
Date: Mon, 27 Apr 2009 22:10:43 +0200
Message-ID: <49F61143.9030501@gmail.com>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>	<Fg2zLW93smL.A.hKC.tc48JB@chimera> <20090427093847.778dcd81@hobbes>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=DqBhEch1EJHosEQMWtsSIc5Z0xq68R13qMKTTuMSlx4=;
        b=kIO8aoGAoyqHf9KE+PMN9wQfmlFDZMoQiwl3BQCzrNHekHCiJYAFE/h9XK/h4B/vnK
         UPSkwrTGARVMJu2/rNbfXv95vJLIN2iVcfuMo2HzY72ak+DBByV1pOYWYXq04mcHNGVo
         v4u7L9eTcTfuO6XoX34MmCJRIiXQL7A8cF9BY=
In-Reply-To: <20090427093847.778dcd81@hobbes>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org

On 04/27/2009 06:38 PM, Jesse Barnes wrote:
> On Sat, 25 Apr 2009 21:31:51 +0200 (CEST)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>
>   
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.29.  Please verify if it still should be listed and let me
>> know (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13180
>> Subject		: 2.6.30-rc2: WARNING at i915_gem.c for
>> i915_gem_idle Submitter	: Niel Lambrechts
>> <niel.lambrechts-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> Date		: 2009-04-21 21:35 (5
>> days old) References	:
>> http://marc.info/?l=linux-kernel&m=124034980819102&w=4
>>     
>
> Can you elaborate the issues you're seeing with UXA+KMS?  EXA had some
> breakage in several configs, though it shouldn't have caused gem_idle
> warnings (those are real bugs I think).
Hi Jesse,

Sure thing - and to be complete I retried with the latest git kernel,
along with the latest Xorg updates from the OPENSUSE 11.1 Xorg repository.

On my system the default displaymanager configuration contains
DISPLAYMANAGER_RANDR_MODE_auto="1024x768_60 64.11 1024 1080 1184 1344
768 769 772 795 -HSync +Vsync"

With this setting running in KMS+UXA, kdm starts up with a garbled
screen, and I soon get a soft lock-up after trying to blindly entering a
username/password. With any other setting, I got the mouse cursor but
soon followed by a black screen and soft lock-up (No activity from
caps-lock, but Alt-SysRq still worked). These settings work fine without
KMS when just using EXA.

Here is the display-manager log, I tried starting up using a few
different modelines from my xorg.conf:

X.Org X Server 1.6.1
Release Date: 2009-4-14
X Protocol Version 11, Revision 0
Build Operating System: openSUSE SUSE LINUX
Current Operating System: Linux linux-7vph 2.6.30-rc3-pae #28 SMP Mon
Apr 27 20:45:45 SAST 2009 i686
Build Date: 25 April 2009  02:41:02PM
 
    Before reporting problems, check http://wiki.x.org
    to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
    (++) from command line, (!!) notice, (II) informational,
    (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.0.log", Time: Mon Apr 27 20:57:01 2009
(==) Using config file: "/etc/X11/xorg.conf"
Setting master
/org/freedesktop/Hal/devices/computer
xrandr for VGA: new mode 1024x768_60 64.11 1024 1080 1184 1344 768 769
772 795 -HSync +Vsync
xrandr: cannot find output "VGA"
Dropping master

Backtrace:
0: /usr/bin/Xorg(xorg_backtrace+0x3b) [0x813599b]
1: /usr/bin/Xorg(xf86SigHandler+0x51) [0x80bc7e1]
2: [0xffffe400]
3: /usr/lib/libdrm_intel.so.1 [0xb79b9b09]
4: /usr/lib/libdrm_intel.so.1(drm_intel_bufmgr_destroy+0xf) [0xb79b650f]
5: /usr/lib/xorg/modules//drivers/intel_drv.so [0xb7929882]
6: /usr/bin/Xorg [0x8162e9b]
7: /usr/bin/Xorg [0x80dc62e]
8: /usr/bin/Xorg [0x80cecfb]
9: /usr/lib/xorg/modules//extensions/libextmod.so [0xb7ff12f4]
10: /usr/bin/Xorg [0x80e2343]
11: /usr/bin/Xorg [0x814c145]
12: /usr/bin/Xorg [0x817d4fc]
13: /usr/bin/Xorg [0x8145f0b]
14: /usr/lib/xorg/modules//extensions/libglx.so [0xb7a0cc4a]
15: /usr/bin/Xorg(main+0x44c) [0x8071e2c]
16: /lib/libc.so.6(__libc_start_main+0xe5) [0xb7b92705]
17: /usr/bin/Xorg [0x8071251]

Fatal server error:
Caught signal 11.  Server aborting


Please consult the The X.Org Foundation support
     at http://wiki.x.org
 for help.
Please also check the log file at "/var/log/Xorg.0.log" for additional
information.


X.Org X Server 1.6.1
Release Date: 2009-4-14
X Protocol Version 11, Revision 0
Build Operating System: openSUSE SUSE LINUX
Current Operating System: Linux linux-7vph 2.6.30-rc3-pae #28 SMP Mon
Apr 27 20:45:45 SAST 2009 i686
Build Date: 25 April 2009  02:41:02PM
 
    Before reporting problems, check http://wiki.x.org
    to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
    (++) from command line, (!!) notice, (II) informational,
    (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.0.log", Time: Mon Apr 27 21:13:03 2009
(==) Using config file: "/etc/X11/xorg.conf"
Setting master
/org/freedesktop/Hal/devices/computer
xrandr for VGA: new mode 1600x1024_60 136.36 1600 1704 1872 2144 1024
1025 1028 1060 -HSync +Vsync
xrandr: cannot find output "VGA"
QPixmap::resize: TODO: resize alpha data
QPixmap::resize: TODO: resize alpha data

Backtrace:
0: /usr/bin/Xorg(xorg_backtrace+0x3b) [0x813599b]
1: /usr/bin/Xorg(xf86SigHandler+0x51) [0x80bc7e1]
2: [0xffffe400]
3: /usr/lib/libdrm_intel.so.1 [0xb78dfa3e]
4: /usr/lib/libdrm_intel.so.1(drm_intel_bo_alloc_for_render+0x24)
[0xb78db454]
5: /usr/lib/xorg/modules//drivers/intel_drv.so [0xb78728f0]
6: /usr/bin/Xorg(ProcCreatePixmap+0x167) [0x8088367]
7: /usr/bin/Xorg(Dispatch+0x33f) [0x808d00f]
8: /usr/bin/Xorg(main+0x3bd) [0x8071d9d]
9: /lib/libc.so.6(__libc_start_main+0xe5) [0xb7ab7705]
10: /usr/bin/Xorg [0x8071251]

Fatal server error:
Caught signal 11.  Server aborting
----

If I revert to EXA without KMS, xrandr will normally show:
xrandr
Screen 0: minimum 320 x 200, current 1600 x 1024, maximum 3840 x 1200
VGA disconnected 1600x900+0+0 (normal left inverted right x axis y axis)
0mm x 0mm
   1600x900_60    58.9*
LVDS connected 1600x1024+0+0 (normal left inverted right x axis y axis)
331mm x 207mm
   1600x1024      60.0*+
   1920x1200      60.0 +   49.8
   1600x1200      60.0
   1400x1050      60.0
   1280x1024      60.0
   1280x960       60.0
   1024x768       60.0
   800x600        60.3     56.2
   640x480        59.9

Regards,
Niel


