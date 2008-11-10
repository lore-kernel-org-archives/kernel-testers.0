From: Paul Collins <paul@burly.ondioline.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Mon, 10 Nov 2008 20:13:17 +1300
Message-ID: <87abc8rr3m.fsf@burly.wgtn.ondioline.org>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	<wnN9HICUAgP.A._d.f5zFJB@chimera> <1226295985.7731.7.camel@pasglop>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754030AbYKJHNa@vger.kernel.org>
In-Reply-To: <1226295985.7731.7.camel@pasglop> (Benjamin Herrenschmidt's
	message of "Mon, 10 Nov 2008 16:46:25 +1100")
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, James Cloos <cloos@jhcloos.com>, Linus Torvalds <torvalds@linux-foundation.org>

Benjamin Herrenschmidt <benh@kernel.crashing.org> writes:

> On Sun, 2008-11-09 at 18:59 +0100, Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>> 
>> The following bug entry is on the current list of known regressions
>> from 2.6.27.  Please verify if it still should be listed and let me know
>> (either way).
>
> Allright, so I finally managed to find a machine to reproduce it and
> I have a patch that fixes it here. I'm basically implementing the same
> thing as X which is to ensure the bitmap is padded to 32 pixels.

Works great here (as you might expect).

-- 
Paul Collins
Wellington, New Zealand

Dag vijandelijk luchtschip de huismeester is dood
