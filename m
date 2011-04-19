From: Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Subject: Re: [Bug #32982] Kernel locks up a few minutes after boot
Date: Tue, 19 Apr 2011 18:39:32 +0200
Message-ID: <BANLkTi=mJgBb8Fv9xnN+qP3CWM9vkNKMyg@mail.gmail.com>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera> <_H4l51C1wXN.A.yDC.yGuqNB@chimera>
 <BANLkTimeaHwBiZoz=isCM=qtBxoxaBqDUw@mail.gmail.com> <BANLkTi=1jO73DXDTD50bVpU82qphVKmRCw@mail.gmail.com>
 <4DAC2429.5000105@fusionio.com> <BANLkTinCWWYqnksxevho9TN3u6ZC_Rjzwg@mail.gmail.com>
 <1303183934.2585.12.camel@obelisk.thedillows.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:in-reply-to:references:from
         :date:x-google-sender-auth:message-id:subject:to:cc:content-type;
        bh=AqWPa65MP1KjtbpDB3RRpkCfRJ7K2wNA4a0JLBBCNyI=;
        b=c29gXNd7E7e0tmOTuEXRPRZNhwL7e9TMbrvGU2l3sjgfk1wW59ajhGpYsqifJrjyti
         A4Lx1qnVePYqKNqYS7Ln+bT3zF9tHP3fcfbRdVDE3JlLPOHrG5uNV/QPVnlucmxyNWBZ
         Njd1xGt6FMf6twFGT2V3E81OvR5qzqgDV+tpo=
In-Reply-To: <1303183934.2585.12.camel-1q1vX8mYZiGLUyTwlgNVppKKF0rrzTr+@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Dillow <dave-i1Mk8JYDVaaSihdK6806/g@public.gmane.org>
Cc: Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>

On Tue, Apr 19, 2011 at 5:32 AM, David Dillow <dave-i1Mk8JYDVaaSihdK6806/g@public.gmane.org> wrote:
>
> On Mon, 2011-04-18 at 20:21 +0200, Bart Van Assche wrote:
> > On Mon, Apr 18, 2011 at 1:44 PM, Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org> wrote:
> > > Bart, can you try and pull:
> > >
> > > git://git.kernel.dk/linux-2.6-block.git for-linus
> > >
> > > into Linus' tree and see if that works? This has, among other things,
> > > Neils fixes for MD.
> >
> > md seems to work stable with the resulting tree, but it looks there is
> > a performance regression in the block layer not related to the md
> > issue. If I run a small block IOPS test on a block device created by
> > ib_srp (NOOP scheduler) I see about 11% less IOPS than with 2.6.38.3
> > (155.000 IOPS with 2.6.38.3 and 140.000 IOPS with 2.6.39-rc3+).
>
> The mapping code for ib_srp changed in 2.6.39-rc1, but it showed
> improved IOPS for a similar setup in my testing so I'd be surprised if
> it is the culprit. Still, it wouldn't hurt to check. Do you have time to
> try the new ib_srp code with 2.6.38.3 to eliminate it from the equation?

Hello Dave,

I just ran a test with the most important 2.6.39-specific ib_srp
commits reverted but that didn't yield a measurable performance
difference for this specific test:

$ git show --format=format:%s 7f9e5c48c1078507747434d4c182ab10925bf98a
be8b981453a4904399cb090c1660618e250092d8
c07d424d6118d528ef71b22b7424bfc359c307a5
8f26c9ff9cd0317ad867bce972f69e0c6c2cbe3c
961e0be89a5120a1409ebc525cca6f603615a8a8
8c4037b501acd2ec3abc7925e66af8af40a2da9d | grep '^IB'
IB: Increase DMA max_segment_size on Mellanox hardware
IB/srp: try to use larger FMR sizes to cover our mappings
IB/srp: add support for indirect tables that don't fit in SRP_CMD
IB/srp: rework mapping engine to use multiple FMR entries
IB/srp: move IB CM setup completion into its own function
IB/srp: always avoid non-zero offsets into an FMR

Bart.
