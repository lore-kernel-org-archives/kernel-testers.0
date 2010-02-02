From: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #15127] Bluetooth: sleeping function called from invalid
 context
Date: Tue, 02 Feb 2010 11:27:12 +0530
Message-ID: <4B67BEB8.4060709@xenontk.org>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>	 <de962C6zBxL.A.lME.FFiZLB@chimera>	 <1264986406.31341.5.camel@localhost.localdomain>	 <4B6711E2.6010409@xenontk.org>	 <1265051657.31341.56.camel@localhost.localdomain>	 <4B67B57A.7000709@xenontk.org> <1265089284.31341.63.camel@localhost.localdomain>
Reply-To: davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1265089284.31341.63.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Luiz Augusto von Dentz <luiz.dentz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 02/02/2010 11:11 AM, Marcel Holtmann wrote:
> Hi David,
> 
>>>>>> This message has been generated automatically as a part of a report
>>>>>> of regressions introduced between 2.6.31 and 2.6.32.
>>>>>>
>>>>>> The following bug entry is on the current list of known regressions
>>>>>> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
>>>>>> be listed and let me know (either way).
>>>>>>
>>>>>>
>>>>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15127
>>>>>> Subject		: Bluetooth: sleeping function called from invalid context
>>>>>> Submitter	: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
>>>>>> Date		: 2010-01-12 9:19 (20 days old)
>>>>>> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=9e726b17422bade75fba94e625cd35fd1353e682
>>>>>> References	: http://marc.info/?l=linux-kernel&m=126328727021949&w=4
>>>>>
>>>>> you have an outdated email from Luiz and I change it to the right one
>>>>> now.
>>>>>
>>>>> I looked with him at the patch and I think this will fix it:
>>>>>
>>>>> diff --git a/net/bluetooth/rfcomm/core.c b/net/bluetooth/rfcomm/core.c
>>>>> index fc5ee32..2b50637 100644
>>>>> --- a/net/bluetooth/rfcomm/core.c
>>>>> +++ b/net/bluetooth/rfcomm/core.c
>>>>> @@ -252,7 +252,6 @@ static void rfcomm_session_timeout(unsigned long
>>>>> arg)
>>>>>  	BT_DBG("session %p state %ld", s, s->state);
>>>>>  
>>>>>  	set_bit(RFCOMM_TIMED_OUT, &s->flags);
>>>>> -	rfcomm_session_put(s);
>>>>>  	rfcomm_schedule(RFCOMM_SCHED_TIMEO);
>>>>>  }
>>>>>  
>>>>> @@ -1920,6 +1919,7 @@ static inline void rfcomm_process_sessions(void)
>>>>>  		if (test_and_clear_bit(RFCOMM_TIMED_OUT, &s->flags)) {
>>>>>  			s->state = BT_DISCONN;
>>>>>  			rfcomm_send_disc(s, 0);
>>>>> +			rfcomm_session_put(s);
>>>>>  			continue;
>>>>>  		}
>>>>>  
>>>>> We need some extra testing on this with the actual hardware we did the
>>>>> patch for. So this will take at least a few days before we get our hands
>>>>> on it.
>>>>
>>>> FWIW, your patch fixes the issue.
>>>
>>> nice. So I can add a tested-by line to the final patch?
>>
>> Sure,
>>
>> Tested-by: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
>>
>>>
>>> Just our of curiosity, which hardware did you test this with. 
>>
>> I have an inbuilt (laptop) USB Dell Wireless 365 Bluetooth Module
>> (413c:8160). I can send more info about the device if you want.
> 
> I meant which device you are connection to. Is it a headset or another
> computer.
> 
>>> We only know about one headset that should cause this issue.
>>
>> That's weird. I assumed it would happen for any device, since
>> rfcomm_session_add is called from multiple places and it adds
>> rfcomm_session_timeout on a timer which will cause the trace
>> if the timer fires.
> 
> The timer will only fire for non-behaving remote stacks. With a proper
> stack following the RFCOMM specification it should never fire.
> 
> Regards
> 
> Marcel
> 
> 
> 

Ah. It's a Sony Ericsson W800i phone. I noticed a new problem while
testing yesterday: Transferring a file to the phone seems to happen
correctly, but at the end of the transfer, the phone reports that the
connection was lost and I get this in the log:

btusb_bulk_complete: hci0 urb ffff88007a5b59c0 failed to resubmit (19)
btusb_bulk_complete: hci0 urb ffff880077a200c0 failed to resubmit (19)
btusb_intr_complete: hci0 urb ffff88007a5b5780 failed to resubmit (19)
btusb_send_frame: hci0 urb ffff88004db809c0 submission failed

To remove btusb, I have to shutdown the laptop Bluetooth. I'll check and
see if I can reproduce and track down the issue. Note that the phone was
working okay pre 2.3.32.

Regards,
David.
