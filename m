From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Probmels with S3-suspend/resume... . Is ist xorg or kernel bug?
Date: Wed, 28 May 2008 07:19:12 +0200
Message-ID: <1211951952.17454.13.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Recently was fixed supend/resume bug annoyed my PC for a long time. So i
startet testing more suspend and do not use poweroff anymore:) After 3.
suspend i started getting some problems, it will get black screen, and i
need to switch to console and back to X to make it work ( ctrl+alt+f1 &
ctrl+alt+f7 ) at the same time console ( ctrl+alt+f1 ) do not work any
more, complete screen is covered with blinking "eeeeeeeeeeeeeeeee".

So the question is is ist kernel bug or xorg ?

In dmesg i didn't get any errors in Xorg i see:
(II) AIGLX: Suspending AIGLX clients for VT switch
(II) intel(0): xf86UnbindGARTMemory: unbind key 0
(II) intel(0): xf86UnbindGARTMemory: unbind key 1
(II) intel(0): xf86UnbindGARTMemory: unbind key 2
(II) intel(0): xf86UnbindGARTMemory: unbind key 3
(II) intel(0): xf86UnbindGARTMemory: unbind key 4
(II) Open ACPI successful (/var/run/acpid.socket)
(II) AIGLX: Resuming AIGLX clients after VT switch
(II) intel(0): xf86BindGARTMemory: bind key 0 at 0x01000000 (pgoffset
4096)
(II) intel(0): xf86BindGARTMemory: bind key 1 at 0x02000000 (pgoffset
8192)
(II) intel(0): xf86BindGARTMemory: bind key 2 at 0x04000000 (pgoffset
16384)
(II) intel(0): xf86BindGARTMemory: bind key 3 at 0x05000000 (pgoffset
20480)
(II) intel(0): xf86BindGARTMemory: bind key 4 at 0x06000000 (pgoffset
24576)
(II) intel(0): Fixed memory allocation layout:
(II) intel(0): 0x00000000-0x0001ffff: ring buffer (128 kB)
(II) intel(0): 0x00020000-0x00029fff: HW cursors (40 kB,
0x000000007f820000 physical
)
(II) intel(0): 0x0002a000-0x00031fff: logical 3D context (32 kB)
(II) intel(0): 0x00032000-0x00032fff: overlay registers (4 kB,
0x000000007f832000 physical
)
(II) intel(0): 0x007bf000:            end of stolen memory
(II) intel(0): 0x01000000-0x01ffffff: front buffer (10240 kB) X tiled
(II) intel(0): 0x02000000-0x03dfffff: exa offscreen (30720 kB)
(II) intel(0): 0x04000000-0x04ffffff: back buffer (10240 kB) X tiled
(II) intel(0): 0x05000000-0x05ffffff: depth buffer (10240 kB) X tiled
(II) intel(0): 0x06000000-0x07ffffff: classic textures (32768 kB)
(II) intel(0): 0x10000000:            end of aperture


--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
