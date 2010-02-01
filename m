From: Michael Breuer <mbreuer@majjas.com>
Subject: Re: [Bug #15125] hung task - jbd2/dm-1-8 (during raid rebuild)
Date: Mon, 01 Feb 2010 12:39:28 -0500
Message-ID: <4B6711D0.4060300@majjas.com>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
 <d3IDKWHT5gE.A.vVC.q7hZLB@chimera> <4B662358.7020603@majjas.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <4B662358.7020603@majjas.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On 1/31/2010 7:42 PM, Michael Breuer wrote:
> On 1/31/2010 7:22 PM, Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.32.  Please verify if it still should be listed and let me know
>> (either way).
>>
>>
>> Bug-Entry    : http://bugzilla.kernel.org/show_bug.cgi?id=15125
>> Subject        : hung task - jbd2/dm-1-8 (during raid rebuild)
>> Submitter    : Michael Breuer<mbreuer@majjas.com>
>> Date        : 2010-01-10 21:47 (22 days old)
>> References    : http://marc.info/?l=linux-kernel&m=126316012025978&w=4
>>
> Yup. Hit it again on 2.6.33-rc5.
> -- 
> To unsubscribe from this list: send the line "unsubscribe 
> linux-kernel" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
I was not able to recreate this in rc6.
