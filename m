From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16614] [2.6.35] usb 2.0 em28xx  kernel panic general protection fault: 0000 [#1] SMP          RIP: 0010:[<ffffffffa004fbc5>]  [<ffffffffa004fbc5>] em28xx_isoc_copy_vbi+0x62e/0x812 [em28xx]
Date: Mon, 11 Oct 2010 22:15:59 +0200
Message-ID: <201010112215.59279.rjw@sisk.pl>
References: <pyPtebg28EI.A.ZPH.NvgsMB@chimera> <yeAD7A8RDxC.A.zI.fwgsMB@chimera> <1967177642.20101011095844@eikelenboom.it>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1967177642.20101011095844-6SM94LqRVpn6gRhOQ7JHfg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Sander Eikelenboom <linux-6SM94LqRVpn6gRhOQ7JHfg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Monday, October 11, 2010, Sander Eikelenboom wrote:
> Hello Rafael,
> 
> This one seems to be fixed, in the sense that i still get an error, but it doesn't crash the kernel.
> And since it was my mistake to use the deprecated video4linux interface instead of the video4linux2, i think it's fine to consider it fixed.
> 
> 
> security:~# ffmpeg -f video4linux -r 25 -s 720x576 -i /dev/video0 out.flv
> FFmpeg version SVN-r20654, Copyright (c) 2000-2009 Fabrice Bellard, et al.
>   built on Nov 29 2009 08:11:53 with gcc 4.3.4
>   configuration: --prefix=/usr --extra-cflags='-Wall -g ' --cc='ccache cc' --enable-shared --enable-libmp3lame --enable-gpl --enable-libfaad --enable-libvorbis --enable-pthreads --enable-libfaac --enable-libxvid --enable-postproc --enable-x11grab --enable-libgsm --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libx264 --enable-libtheora --enable-libdc1394 --enable-libspeex --enable-nonfree --disable-stripping --enable-avfilter --enable-libdirac --disable-decoder=libdirac --enable-libschroedinger --disable-encoder=libschroedinger --enable-avfilter-lavf --enable-libopenjpeg --enable-version3 --disable-altivec --disable-armv5te --disable-armv6 --disable-vis
>   libavutil     50. 5. 1 / 50. 5. 1
>   libavcodec    52.42. 0 / 52.42. 0
>   libavformat   52.39. 2 / 52.39. 2
>   libavdevice   52. 2. 0 / 52. 2. 0
>   libavfilter    1.11. 0 /  1.11. 0
>   libswscale     0. 7. 2 /  0. 7. 2
>   libpostproc   51. 2. 0 / 51. 2. 0
> [video4linux @ 0xff45e0]VIDIOCMCAPTURE: Cannot allocate memory
> /dev/video0: I/O error occurred
> Usually that means that input file is truncated and/or corrupted.

Thanks, closing.

Rafael
