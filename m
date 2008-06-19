From: "Alexander Beregalov" <a.beregalov@gmail.com>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Thu, 19 Jun 2008 20:02:44 +0400
Message-ID: <a4423d670806190902l48c542e0i6a7380a2d3e7f520@mail.gmail.com>
References: <a4423d670806190707k7ae6da8cud80a826a1603d941@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <sparclinux-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=DJj5gnELducz0fCuFWr82siHlkRx7iNeYjNAuOnV4jA=;
        b=PNGk//22/HLmBUWcBW1+yNC8HBDWb3oT/fY30fq6yIlDVercXcTU4z3ZXTfkV1k7R6
         S5ONfuGMOc36cxPZ7inXPTDaK+s0hzDXlf9eahTBDCPIhyAz90JqWUlTcCSlg3qElEqH
         +z2nO/nLgX94xXphW1FSdS6iUsE76b8g5rXTE=
In-Reply-To: <a4423d670806190707k7ae6da8cud80a826a1603d941@mail.gmail.com>
Content-Disposition: inline
Sender: sparclinux-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem@davemloft.net>, kernel-testers@vger.kernel.org, sparclinux@vger.kernel.org, kernel list <linux-kernel@vger.kernel.org>

2008/6/19 Alexander Beregalov <a.beregalov@gmail.com>:
> Hi
>
> Sun Ultra 10 can not boot the last 2.6.26-rc6-git, it hangs right after
>
> Console: colour dummy device 80x25
> console handover: boot [earlyprom0] -> real [tty0]
<cut>
> I have done bisect:
>
> a051bc5bb1ac6dc138d529077fa20cbbc6622d95 is first bad commit
> commit a051bc5bb1ac6dc138d529077fa20cbbc6622d95
> Author: David S. Miller <davem@davemloft.net>
> Date:   Wed May 21 18:14:28 2008 -0700
>
>    sparc64: Fix kernel thread stack termination.
>
>    Because of the silly way I set up the initial stack for
>    new kernel threads, there is a loop at the top of the
>    stack.
>
>    To fix this, properly add another stack frame that is copied
>    from the parent and terminate it in the child by setting
>    the frame pointer in that frame to zero.
>
>    Signed-off-by: David S. Miller <davem@davemloft.net>
>
> :040000 040000 beba7e8c740188a7c19a3569f08b1edd25b8000d
> aed42d5af3ab9a84ccb3dfe07eb444a78f9001fa M      arch
>

I have reverted this commit and
2.6.26-rc6-00233-g99d3b2d works fine. It can boot.
