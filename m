From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: [Bug #11516] severe performance degradation on x86_64 going from
 2.6.26-rc9 -&gt; 2.6.27-rc5
Date: Sat, 27 Sep 2008 11:23:28 +0200 (CEST)
Message-ID: <alpine.LFD.1.10.0809271104300.27026@apollo.tec.linutronix.de>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik> <7lIhZC4hCxE.A.cLH.r0q1IB@albercik> <200809230549.28544.jason.vas.dias@gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200809230549.28544.jason.vas.dias-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jason Vas Dias <jason.vas.dias-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Tue, 23 Sep 2008, Jason Vas Dias wrote:

> CPU Frequency switching is completely disabled both when
> powernow-k8 (the correct cpufreq module for my x86_64 AMD TL-64x2
> 2.2GHz CPU) is installed as a module or is built-in , and the CPU
> frequency remains at its lowest setting; attempts to modify
> /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq and
> /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed are not
> honored, even though /sys/devices/system/cpu/cpu0/cpufreq/governor
> is "userspace" and scaling_min_freq < scaling_setspeed >
> scaling_max_freq .
>
> I see no messages from powernow-k8 indicating that it is aware it
> was unable to set the speed, though I do see a message if I attempt
> to set an invalid speed (eg 600000) .
>
> With 2.6.26-rc9, I get a default CPU clock frequency of 2200000 ;
> with 2.6.27-rc6, it becomes 800000 and is not switchable. For some
> reason, powernow-k8 does not autoload with UDEV; but I don't really
> need it if the speed is already set to its highest level.
>
>  On 2.6.27-rc6. after it manages to boot, any low-latency drivers
> time out (eg. USB, Terminal, Keyboard, Network) and the machine does
> not get through the boot-up sequence without becoming overloaded by
> the kernel's debugging log messages - neither the network , the
> terminal or the keyboard work usably.
>
> Building a kernel with USB completely disabled and turning off
> debug log messages allows the machine to boot (after @ 15 minutes)
> but the speed is still at its lowest setting and cannot be changed.

I have to admit that I'm confused. 

The dmesg output
[    0.000000] Linux version 2.6.27-rc6.jvd ...
....
[   26.204477] hub 3-0:1.0: state 7 ports 2 chg 0000 evt 0000 

says 26 seconds up to the point where user space should start.  Also
USB is active in that log and I dont see timeout messages at all.

I have a hard time to connect this to your problem description
(timeouts, USB off, 15 minutes)

Can you please shed some light on this ?

> Also, 2.6.27-rc6 is unable to reboot the machine: it can put the
> machine into the "HALT" state, with nothing displayed on the screen,
> but the machine does not power-off until manual reset with the
> power-button. Then, after the machine has powered-down, it cannot be
> powered up until the power-on button is depressed for at least two
> sections an released TWICE in a row.

Len, any opinon on this: 

[    0.000000] ACPI Error (tbfadt-0453): 32/64X address mismatch in "Pm2ControlBlock": 
               [00008800] [0000000000008100], using 64X [20080609] 

Thanks,

	tglx
