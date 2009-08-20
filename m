From: Gene Heskett <gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
Subject: Re: [Bug #13947] Libertas: Association request to the driver failed
Date: Thu, 20 Aug 2009 11:17:45 -0400
Message-ID: <200908201117.45678.gene.heskett@verizon.net>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera>
 <25e057c00908200151i472fa3cem6da814e7115e1ea7@mail.gmail.com>
 <200908201710.32147.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <200908201710.32147.rjw-KKrjLPT3xs0@public.gmane.org>
Content-disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: roel kluin <roel.kluin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Thursday 20 August 2009, Rafael J. Wysocki wrote:
>On Thursday 20 August 2009, roel kluin wrote:
>> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13947
>> > Subject         : Libertas: Association request to the driver failed
>> > Submitter       : Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>
>> > Date            : 2009-08-07 19:11 (13 days old)
>> > First-Bad-Commit:
>> > http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=comm
>> >it;h=57921c312e8cef72ba35a4cfe870b376da0b1b87 References      :
>> > http://marc.info/?l=linux-kernel&m=124967234311481&w=4 Handled-By     
>> > : Roel Kluin <roel.kluin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>
>> I think this should be fixed with patch of Dan Williams found here:
>>
>> http://lkml.org/lkml/2009/8/12/299
>
>Thanks, bug entry updated.
>
Has this made it into 2.6.31-rc6?  I have one of these pci cards, and it is 
still a no-show even after modprobing the mwl* and libertas modules.

>Rafael
>--
>To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
>the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at  http://www.tux.org/lkml/


-- 
Cheers, Gene
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author)
The NRA is offering FREE Associate memberships to anyone who wants them.
<https://www.nrahq.org/nrabonus/accept-membership.asp>

There is no act of treachery or mean-ness of which a political party
is not capable; for in politics there is no honour.
		-- Benjamin Disraeli, "Vivian Grey"
