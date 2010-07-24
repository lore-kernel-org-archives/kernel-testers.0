From: Enrico Bandiello <enban@postal.uv.es>
Subject: Re: [Bug #16307] i915 in kernel 2.6.35-rc3, high number of wakeups
Date: Sat, 24 Jul 2010 11:19:50 +0200
Message-ID: <4C4AB036.3060003@postal.uv.es>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>	<tneGvaw1wLL.A.mXB.p3XSMB@chimera> <20100723102532.6bfade32@virtuousgeek.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20100723102532.6bfade32@virtuousgeek.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Enrico Bandiello <enban@alumni.uv.es>

On 07/23/2010 07:25 PM, Jesse Barnes wrote:
> On Fri, 23 Jul 2010 13:47:31 +0200 (CEST)
> "Rafael J. Wysocki"<rjw@sisk.pl>  wrote:
>
>> This message has been generated automatically as a part of a summary report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.34.  Please verify if it still should be listed and let the tracking team
>> know (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16307
>> Subject		: i915 in kernel 2.6.35-rc3, high number of wakeups
>> Submitter	: Enrico Bandiello<enban@postal.uv.es>
>> Date		: 2010-06-26 16:57 (28 days old)
>> Message-ID	:<4C26317A.5070309@postal.uv.es>
>> References	: http://marc.info/?l=linux-kernel&m=127757403404259&w=2
>
> Just updated the bug for this one.  Enrico, you say this behavior is
> recent.  Can you bisect between 2.6.34 and when the problem started?
>
Hi. I just tried, but can't find anything useful until now (surely it's 
my fault: it was my first attempt at bisection). Please let me try again 
in the next days.
