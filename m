From: Mariusz Kozlowski <m.kozlowski@tuxland.pl>
Subject: Re: [sparc] ext3 corruption on latest mainline
Date: Thu, 22 Jan 2009 09:02:09 +0100
Message-ID: <200901220902.09644.m.kozlowski@tuxland.pl>
References: <200901201917.12141.m.kozlowski@tuxland.pl> <200901211144.12891.m.kozlowski@tuxland.pl> <20090121.135029.94778665.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <sparclinux-owner@vger.kernel.org>
In-Reply-To: <20090121.135029.94778665.davem@davemloft.net>
Content-Disposition: inline
Sender: sparclinux-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem@davemloft.net>
Cc: kernel-testers@vger.kernel.org, sparclinux@vger.kernel.org

> > > I ended up with corrupted ext3 (see sparc.jpg) and working now to restore it.
> > 
> > Up and running again. I managed to get some more info from yesterday crash from syslog:
> 
> I've seen similar corruptions with an Intel SSD drive on an MPT Fusion
> SAS interface, which also goes through scsi like your sym case here.
> 
> But I'm pretty sure I also saw them with 2.6.28, were you able to run
> 2.6.28 cleanly?

The thing is the last time I run this sparc was somewhere in 2.6.27~2.6.28 window.
I didn't see anything like it at that time. I'll give a try to 2.6.28 but it might
be hard to trigger it as I don't know what exactly caused it. Also yesterday
the very same kernel (f3b8436a) worked under I/O load for hours just fine.
I'll leave it with 2.6.28 on it busy for a few days and see what happens.

	Mariusz
