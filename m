From: David Miller <davem@davemloft.net>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Fri, 20 Jun 2008 16:21:35 -0700 (PDT)
Message-ID: <20080620.162135.203810660.davem@davemloft.net>
References: <a4423d670806201542o5415cad7p6b9a38b67252cee1@mail.gmail.com>
	<20080620.155139.224032701.davem@davemloft.net>
	<a4423d670806201612g3487325cj175f077fbe71de2a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <sparclinux-owner@vger.kernel.org>
In-Reply-To: <a4423d670806201612g3487325cj175f077fbe71de2a@mail.gmail.com>
Sender: sparclinux-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: a.beregalov@gmail.com
Cc: kernel-testers@vger.kernel.org, sparclinux@vger.kernel.org, linux-kernel@vger.kernel.org

From: "Alexander Beregalov" <a.beregalov@gmail.com>
Date: Sat, 21 Jun 2008 03:12:30 +0400

> 2008/6/21 David Miller <davem@davemloft.net>:
> > Something is screwey here... Hmmm...
> >
> > When I added the changeset in question, it fixed a problem in that
> > any backtrace of a kernel thread would loop forever at the end.
> > Any stack backtrace would hang or reach a safety limit (such as
> > the one imposed by lockdep).
> >
> > Please double check that you are precisely reverting this patch
> > below _before_ doing these tests:
> >
> > commit a051bc5bb1ac6dc138d529077fa20cbbc6622d95
> 
> Yes, I am sure. It runs without this commit and hangs with it.
> I can connect serial console, but if it is a infinite loop it will not
> provide more info.

Ok I have to find some way to reproduce this.  Please post the
kernel .config you are using during these tests.  Also please
let me know what distribution and compiler version you are using.

Thanks.
