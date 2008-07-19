From: "Justin Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10724] ACPI: EC: GPE storm detected, disabling EC GPE
Date: Fri, 18 Jul 2008 23:56:27 -0700
Message-ID: <dd18b0c30807182356m531cb73h1f873ac2ab8dcdb8@mail.gmail.com>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
	 <c6ZRbn0adb.A.LgB.aKleIB@albercik>
	 <b637ec0b0807180217n3b16bcb9wce81161c2c539d7f@mail.gmail.com>
	 <4880B959.1030403@suse.de>
	 <b637ec0b0807181205s509c655cp31a1819e389e2a10@mail.gmail.com>
	 <4880FF24.4000303@suse.de>
	 <b637ec0b0807182342m3282f13cp43ad1111ab55bf4c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=Z6bCNKaMACdlHj9FdZ5O0t3StufxdSPAOYFH+D6+oYA=;
        b=pEbVCDsw+CU5fQXxldxVmSIsUqiHt+Tj+hZoJ3SzZKz8XiGTDqXTtRL2+JMOTECV/G
         R09MOaJnTj5djcGXAbN8mNXXbpM1mIcGe9Y2lDQVLNEX9uy8ZQ6lo7eywT8Z3/KFwwb2
         e88Fe9GJg4hDTEf5aQhM7fNCIkNNc6PkaNEnA=
In-Reply-To: <b637ec0b0807182342m3282f13cp43ad1111ab55bf4c-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Alexey Starikovskiy <astarikovskiy-l3A5Bk7waGM@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Jul 18, 2008 at 11:42 PM, Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> Hi Alex.
> Well, I read the bug report but still can't understand why in any
> kernels < 2.6.26 I don't have any problems with battery reports and in
> 2.6.26 as soon as the message appears g-p-m starts to behave
> incorrectly.
>
> Anyway, I got back to 25.11 for now, if you have any other workarounds
> for me to test please let me know.
>
> Cheers,
> Fabio
>
>
>
> On Fri, Jul 18, 2008 at 10:37 PM, Alexey Starikovskiy
> <astarikovskiy-l3A5Bk7waGM@public.gmane.org> wrote:
>> Hi Fabio,
>>
>> There are no bad news in seeing the message, as I tried to say several
>> times in bug report already. We can't fix the hardware.
>> We only could detect hardware flaw, report it (the message), and try to
>> workaround it.
>> So the bad news would be that our workaround causes some unwanted behavior
>> to
>> other features of notebook -- keyboard, special keys, battery & AC status
>> reports, etc.
>> If no such problems were noticed -- there is no bug, and there is no
>> problem.
>>
>> Regards,
>> Alex.
>>
>> Fabio Comolli wrote:
>>>
>>> Hi Alex. No good news, I'm afraid.
>>>
>>> Actually my previous report wasn't correct because with the patch I
>>> mentioned the message appeared yesterday night during the hibernate
>>> process, so I couldn't notice it.
>>>
>>>  The interesting thing is that it showed up the day after I booted my
>>> laptop: usually it took a period between 1 and 13 minutes after boot
>>> to trigger and in this case it took more than 2 hours of uptime with 2
>>> suspend and 2 hibernate cycles.
>>>
>>> With the patch you told me to apply and the previous reverted the
>>> message triggered in 12 minutes.
>>>
>>> Regards,
>>> Fabio
>>>
>>>
>>>
>>>
>>> On Fri, Jul 18, 2008 at 5:40 PM, Alexey Starikovskiy
>>> <astarikovskiy-l3A5Bk7waGM@public.gmane.org> wrote:
>>>>
>>>> Fabio,
>>>> Please try http://bugzilla.kernel.org/attachment.cgi?id=16862 instead.
>>>> Same bug entry, last patch.
>>>> Regards,
>>>> Alex.
>>>> Fabio Comolli wrote:
>>>>>
>>>>> Hi.
>>>>> I also have this problem with 2.6.26 and when it happens I can notice
>>>>> that sometimes gnome-power-manager is slow to respond when I switch to
>>>>> AC from battery and viceversa. Also, sometimes the g-p-m icon
>>>>> disappears and I have to restart the process.
>>>>>
>>>>> I tried two days ago the patch
>>>>>
>>>>>  http://bugzilla.kernel.org/attachment.cgi?id=16365&action=view
>>>>>
>>>>> and everything seems to work ok since then. Before that, the message
>>>>> showed up sometimes at boot time, sometimes minutes later, very
>>>>> reliably.
>>>>>
>>>>> This is with a two years old fairly standard HP laptop.
>>>>>
>>>>> Regards,
>>>>> Fabio
>>>>>
>>>>>
>>>>> On Sun, Jul 13, 2008 at 8:00 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>>>>>>
>>>>>> This message has been generated automatically as a part of a report
>>>>>> of recent regressions.
>>>>>>
>>>>>> The following bug entry is on the current list of known regressions
>>>>>> from 2.6.25.  Please verify if it still should be listed.
>>>>>>
>>>>>>
>>>>>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=10724
>>>>>> Subject         : ACPI: EC: GPE storm detected, disabling EC GPE
>>>>>> Submitter       : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>>>>> Date            : 2008-05-16 6:17 (59 days old)
>>>>>> References      :
>>>>>> http://marc.info/?l=linux-kernel&m=121091875711824&w=4
>>>>>>                http://lkml.org/lkml/2008/5/18/168
>>>>>>                http://lkml.org/lkml/2008/5/25/195
>>>>>> Patch           :
>>>>>> http://bugzilla.kernel.org/attachment.cgi?id=16364&action=view
>>>>>>
>>>>>> http://bugzilla.kernel.org/attachment.cgi?id=16365&action=view
>>>>>>
>>>>>>
>>>>>> --
>>>>>> To unsubscribe from this list: send the line "unsubscribe linux-kernel"
>>>>>> in
>>>>>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>>>>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>>>>> Please read the FAQ at  http://www.tux.org/lkml/
>>>>>>
>>>>
>>
>>
>

I'm up to try any patches, but I need to wait
until I find a fix for my linux box i.g.
pci is all messed up.

-- 
Justin P. Mattock
