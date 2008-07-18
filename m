From: "Justin Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10724] ACPI: EC: GPE storm detected, disabling EC GPE
Date: Fri, 18 Jul 2008 16:23:09 +0000
Message-ID: <dd18b0c30807180923p105697b4r7d95c40b3d66c84e@mail.gmail.com>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
	 <c6ZRbn0adb.A.LgB.aKleIB@albercik>
	 <b637ec0b0807180217n3b16bcb9wce81161c2c539d7f@mail.gmail.com>
	 <4880B959.1030403@suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=w4C/oVprJ2kWavylZ1nMnzmISXNW6mYjmzyFon7cq+E=;
        b=uP3qNY78S1uWCjMaTjGic2VAYPEWInwX40poAU64Wtw6la5iF4gbmzWlGMY4vgLGhk
         tAmR/2syp7YbxDXYYLVvLvs9fM4KIFUj2WFjqTEdg9HAIL46EA/lSI/tZhE+5i0tWVLw
         RpAsK+9WPZmda2PLUh2RfGd73pa0H2p8Z7SOo=
In-Reply-To: <4880B959.1030403-l3A5Bk7waGM@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Starikovskiy <astarikovskiy-l3A5Bk7waGM@public.gmane.org>
Cc: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Jul 18, 2008 at 3:40 PM, Alexey Starikovskiy
<astarikovskiy-l3A5Bk7waGM@public.gmane.org> wrote:
> Fabio,
> Please try http://bugzilla.kernel.org/attachment.cgi?id=16862 instead.
> Same bug entry, last patch.
> Regards,
> Alex.
> Fabio Comolli wrote:
>>
>> Hi.
>> I also have this problem with 2.6.26 and when it happens I can notice
>> that sometimes gnome-power-manager is slow to respond when I switch to
>> AC from battery and viceversa. Also, sometimes the g-p-m icon
>> disappears and I have to restart the process.
>>
>> I tried two days ago the patch
>>
>>   http://bugzilla.kernel.org/attachment.cgi?id=16365&action=view
>>
>> and everything seems to work ok since then. Before that, the message
>> showed up sometimes at boot time, sometimes minutes later, very
>> reliably.
>>
>> This is with a two years old fairly standard HP laptop.
>>
>> Regards,
>> Fabio
>
>>
>>
>>
>> On Sun, Jul 13, 2008 at 8:00 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>>>
>>> This message has been generated automatically as a part of a report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.25.  Please verify if it still should be listed.
>>>
>>>
>>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=10724
>>> Subject         : ACPI: EC: GPE storm detected, disabling EC GPE
>>> Submitter       : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>> Date            : 2008-05-16 6:17 (59 days old)
>>> References      : http://marc.info/?l=linux-kernel&m=121091875711824&w=4
>>>                 http://lkml.org/lkml/2008/5/18/168
>>>                 http://lkml.org/lkml/2008/5/25/195
>>> Patch           :
>>> http://bugzilla.kernel.org/attachment.cgi?id=16364&action=view
>>>
>>> http://bugzilla.kernel.org/attachment.cgi?id=16365&action=view
>>>
>>>
>>> --
>>> To unsubscribe from this list: send the line "unsubscribe linux-kernel"
>>> in
>>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>> Please read the FAQ at  http://www.tux.org/lkml/
>>>
>
>

I tried this patch; and for some reason
I'm still seeing this message(that is when using
acpi_osi=Linux). The problem I see is we've got different brands
of laptops, and the causes are all different.
In my case I'm wondering if there is a way to tweak the interrupts
with the battery. just to see if this works

-- 
Justin P. Mattock
