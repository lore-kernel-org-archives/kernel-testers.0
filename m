From: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: hdb: status error: error=0x40 <3>{ UncorrectableError }
Date: Sun, 25 Jan 2009 22:49:16 +0100
Message-ID: <200901252249.17410.bzolnier@gmail.com>
References: <3f9a31f40901251239k3e368feeib33661d82497725b@mail.gmail.com> <497CD30D.80203@tmr.com> <3f9a31f40901251310g38ecfe61t97e119533215d271@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:message-id;
        bh=zPhQimHtJNpXzH2RBC0NdWLNsRqUiCUcBxnxLh7wk/s=;
        b=IHiBUI9R72dRbpxL++lR/Ow2v3KiHsY5lrFlSSQXYP7OeJHlNGZTI1RPCyaUT9fv4B
         e9Gz3dwWqybXwxWlWWtA9yE9Ig3tmqzwrcw/azizdzPDRRLM3BM+1LCTRVImkE1xp18R
         8J26DBy1yIA7Illl3bRXKuAXgmLxqv2+xsvuc=
In-Reply-To: <3f9a31f40901251310g38ecfe61t97e119533215d271-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jaswinder Singh Rajput <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Bill Davidsen <davidsen-sQDSfeB7uhw@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>

On Sunday 25 January 2009, Jaswinder Singh Rajput wrote:
> On Mon, Jan 26, 2009 at 2:31 AM, Bill Davidsen <davidsen-sQDSfeB7uhw@public.gmane.org> wrote:
> >
> >
> > Alan Cox wrote:
> >>
> >> On Mon, 26 Jan 2009 02:09:56 +0530
> >> Jaswinder Singh Rajput
> >> <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org> wrote:
> >>
> >>> Hello all,
> >>>
> >>> I added extra IDE drive I get similar messages like below so I replace
> >>> it another drive but I am still getting similar error messages on
> >>> 2.6.29-rc2-tip:
> >>>
> >>> hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest
> >>> Error }
> >>> hdb: status error: error=0x40 <3>{ UncorrectableError },
> >>> LBAsect=208845, sector=0
> >>
> >> Uncorrectable Error is an error from the drive, not the kernel. Looks
> >> like you have bad sectors on that drive.
> >>
> > He noted that he tried another drive, so unless he has a pile of bad drives
> > it's probably something else. Being "hdb" may indicate that it's connected
> > to the same controller as "hda" and might not be jumpered for slave. Or it
> > might be a bad cable, a controller which doesn't like two drives, a dubious
> > power connector, etc. Or if he doesn't have an hda, perhaps the kernel
> > doesn't like a secondary drive without a primary.
> >
> > Being hdb instead of sdb with a new kernel indicates he is using a config
> > which may get a lot less testing these days, perhaps?
> >
> > In any case, I doubt he had two bad drives, so something else is more
> > likely.
> >
> 
> But earlier both was working fine on some another machines.

Did you try them before on this machine?

Another machine may mean another controller and entirely different
IDE host driver.

Your bugreport is too sparse in information to say more
(please at least post IDE related kernel config part).

Thanks,
Bart
