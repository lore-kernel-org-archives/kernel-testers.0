From: David Miller <davem@davemloft.net>
Subject: Re: [sparc] ext3 corruption on latest mainline
Date: Wed, 21 Jan 2009 13:50:29 -0800 (PST)
Message-ID: <20090121.135029.94778665.davem@davemloft.net>
References: <200901201917.12141.m.kozlowski@tuxland.pl>
	<200901211144.12891.m.kozlowski@tuxland.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <sparclinux-owner@vger.kernel.org>
In-Reply-To: <200901211144.12891.m.kozlowski@tuxland.pl>
Sender: sparclinux-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: m.kozlowski@tuxland.pl
Cc: kernel-testers@vger.kernel.org, sparclinux@vger.kernel.org

From: Mariusz Kozlowski <m.kozlowski@tuxland.pl>
Date: Wed, 21 Jan 2009 11:44:12 +0100

> > I ended up with corrupted ext3 (see sparc.jpg) and working now to restore it.
> 
> Up and running again. I managed to get some more info from yesterday crash from syslog:

I've seen similar corruptions with an Intel SSD drive on an MPT Fusion
SAS interface, which also goes through scsi like your sym case here.

But I'm pretty sure I also saw them with 2.6.28, were you able to run
2.6.28 cleanly?
