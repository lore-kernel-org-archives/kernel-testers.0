From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Tue, 19 Apr 2011 09:32:36 -0700
Message-ID: <BANLkTikzRE7sA8_NNgVUpOqR_zGtw+YUvQ@mail.gmail.com>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera> <_H4l51C1wXN.A.yDC.yGuqNB@chimera>
 <BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw@mail.gmail.com> <BANLkTi=1jO73DXDTD50bVpU82qphVKmRCw@mail.gmail.com>
 <4DAC2429.5000105@fusionio.com> <BANLkTinCWWYqnksxevho9TN3u6ZC_Rjzwg@mail.gmail.com>
 <4DAC82E6.3020809@fusionio.com> <BANLkTimaekpwmK+z=ePE+XSP6GUteidwfw@mail.gmail.com>
 <4DAD5156.2050300@fusionio.com> <4DAD6EF2.5070405@fusionio.com> <BANLkTimLOgY1opmAt+rxmYtLa-6adL98wg@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <BANLkTimLOgY1opmAt+rxmYtLa-6adL98wg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Cc: Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>, David Dillow <dave-i1Mk8JYDVaaSihdK6806/g@public.gmane.org>

On Tue, Apr 19, 2011 at 9:13 AM, Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org> wrote:
>
> The same test with an initiator running 2.6.39-rc4 +
> git://git.kernel.dk/linux-2.6-block.git for-linus + the above patch
> yields about 155.000 IOPS on my test setup, or the same performance as
> with 2.6.38.3. I'm running the above patch through an I/O stress test
> now.

Goodie. So not only does that patch get back the 11%, it removes the
crazy QUEUE_FLAG_REENTER flag that was broken to begin with. AND it
removes a number of complicated lines.

Halleluja.

                        Linus
