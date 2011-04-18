From: Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Mon, 18 Apr 2011 20:28:54 +0200
Message-ID: <4DAC82E6.3020809@fusionio.com>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera> <_H4l51C1wXN.A.yDC.yGuqNB@chimera> <BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw@mail.gmail.com> <BANLkTi=1jO73DXDTD50bVpU82qphVKmRCw@mail.gmail.com> <4DAC2429.5000105@fusionio.com> <BANLkTinCWWYqnksxevho9TN3u6ZC_Rjzwg@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <BANLkTinCWWYqnksxevho9TN3u6ZC_Rjzwg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>

On 2011-04-18 20:21, Bart Van Assche wrote:
> On Mon, Apr 18, 2011 at 1:44 PM, Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org> wrote:
>> Bart, can you try and pull:
>>
>> git://git.kernel.dk/linux-2.6-block.git for-linus
>>
>> into Linus' tree and see if that works? This has, among other things,
>> Neils fixes for MD.
> 
> md seems to work stable with the resulting tree, but it looks there is

OK, that's the most important bit.

> a performance regression in the block layer not related to the md
> issue. If I run a small block IOPS test on a block device created by
> ib_srp (NOOP scheduler) I see about 11% less IOPS than with 2.6.38.3
> (155.000 IOPS with 2.6.38.3 and 140.000 IOPS with 2.6.39-rc3+).

That's not good. What's the test case?

-- 
Jens Axboe
