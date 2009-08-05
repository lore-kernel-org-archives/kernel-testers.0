From: Jerome Marchand <jmarchan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13809] oprofile: possible circular locking dependency	detected
Date: Wed, 05 Aug 2009 16:45:43 +0200
Message-ID: <4A799B17.2080708@redhat.com>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.YTD.eHObKB@chimera> <20090803091924.GB25478@erda.amd.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090803091924.GB25478-yX1UDyMwZ8xWk0Htik3J/w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Robert Richter <robert.richter-5C7GfCeVMHo@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Robert Richter wrote:
> I also tested v2.6.31-rc4 with prove-locking enabled and could not
> trigger the warning. My regression runs fine. Please provide more
> information (workloads, oprofile setup, cpu info, kernel config) to be
> able to reproduce this.
> 
> Thanks,
> 
> -Robert
> 

Hi Robert,

I hit the warning on a dual i686 box, with both v2.6.31-rc2 and v2.6.31-rc4.
I can actually trigger it by just running opcontrol --start and then opreport.
It happens with both --separate=none and --separate=all options (the oprofile
deamon using otherwise default options).
About the kernel config, prove_locking is on, oprofile is a module and
oprofile_ibs is not set. For maor detail, I've attached the config file to
the bugzilla.

I've tried to reproduce it on 2.6.31-rc5 without success.

Regards,
Jerome

> On 26.07.09 22:28:24, Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.30.  Please verify if it still should be listed and let me know
>> (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13809
>> Subject		: oprofile: possible circular locking dependency detected
>> Submitter	: Jerome Marchand <jmarchan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>> Date		: 2009-07-22 13:35 (5 days old)
>>
>>
>> --
>> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at  http://www.tux.org/lkml/
>>
> 
