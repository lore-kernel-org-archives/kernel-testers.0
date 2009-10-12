From: Santiago Garcia Mantinan <manty@manty.net>
Subject: Re: [Bug #14294] kernel BUG at drivers/ide/ide-disk.c:187
Date: Mon, 12 Oct 2009 14:09:43 +0200
Message-ID: <20091012120943.GA2625@dis.manty.net>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
 <L6tb-VyKHZK.A.xEC.dzl0KB@chimera>
 <20091012.035126.264745627.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755797AbZJLMKi@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20091012.035126.264745627.davem@davemloft.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem@davemloft.net>
Cc: rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, bzolnier@gmail.com

Hi!

> I gave the user a debugging patch, but they reported that they
> can no longer trigger the issue with 2.6.31.1
> 
> See:
> 
> 	http://marc.info/?l=linux-ide&m=125469615425454&w=4
> 
> Maybe that's enough to close this, I dunno.

I'm the user with the debugging patch, I'd say no, don't close it.

Even though on my first tests I had the computer to crash the two weekends I
had tested, it seems that crashing on weekend was only luck and seems that
having the bug appear is more difficult than I had thought.

So... my comments saying that 2.6.31.1 seemed ok are probably wrong (I have
read the .1 changelog and there is an ata patch, but probably unrelated). It
is true that I had 2.6.31.1 running for a whole week without it crashing,
but seems that crashing it may need more time.

I'm now back to the 2.6.31 with the patch to debug it (3 days uptime) in
order to gather more info and after I get the info from 2.6.31 I'd test
3.6.31.latest or even 2.6.32whatever in case you find that better.

Regards...
-- 
Manty/BestiaTester -> http://manty.net
