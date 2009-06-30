From: Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>
Subject: Re: [Bug #13648] nfsd: page allocation failure
Date: Tue, 30 Jun 2009 04:05:02 -0400 (EDT)
Message-ID: <alpine.DEB.2.00.0906300404210.13871@p34.internal.lan>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.KGF.HjASKB@chimera> <alpine.DEB.2.00.0906291659550.17663@chino.kir.corp.google.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0906291659550.17663-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>



On Mon, 29 Jun 2009, David Rientjes wrote:

> On Mon, 29 Jun 2009, Rafael J. Wysocki wrote:
>
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.29 and 2.6.30.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
>> be listed and let me know (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13648
>> Subject		: nfsd: page allocation failure
>> Submitter	: Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>
>> Date		: 2009-06-22 12:08 (7 days old)
>> References	: http://lkml.org/lkml/2009/6/22/309
>>
>
> I'd be interested to hear from Justin if reducing
> /proc/sys/vm/dirty_background_ratio as I earlier suggested helps.
>
> ZONE_NORMAL isn't much larger than ZONE_DMA32 on this machine and both
> lowmem zones have an abundance of free memory which suggests pdflush's
> ratio isn't being met to commence background writeout while at the same
> time ZONE_NORMAL is being depleted as the result of constant nfs
> GFP_ATOMIC allocations that cannot try direct reclaim.
>

Hello,

http://patchwork.kernel.org/patch/30960/

"It's funny, though, that the problem that originally started this thread 
was quickly diagnosed because of these messages.  As far as I know, my 
suggestion to increase /proc/sys/vm/dirty_background_ratio to kick pdflush 
earlier has prevented the slab allocation failures and not required 
delayed acks for nfsd."

--

The current value is 10, what value do you suggest I try?

$ cat /proc/sys/vm/dirty_background_ratio
10

Justin.
