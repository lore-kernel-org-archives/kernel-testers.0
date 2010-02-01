From: Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14487] PANIC: early exception 08 rip 246:10 error
	ffffffff810251b5 cr2 0
Date: Mon, 1 Feb 2010 15:54:41 +0300
Message-ID: <20100201125441.GB2576@bicker>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:mail-followup-to:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=355yt1K/32DZl53yyyqax3CaTIvPig6Or8JX6IuQnwg=;
        b=JLcIkpKtPfI3F9z2Qx/HWi/HP2cnVr0FRa5JIQP8Ng5HVoVqhkspdmCdf50WNw4cem
         hnFFwJgjqIbLOqv7aTTarj20HRj04Teb+Oh1N6sZLvBQQmO1e6zXR7jiguGFSTlaH2bN
         39zS7P4fOchQUxu1P3Hv88dyJhYRquDZjXRTs=
Content-Disposition: inline
In-Reply-To: <4B6630CA.9010207-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>

On Sun, Jan 31, 2010 at 05:39:22PM -0800, Justin P. Mattock wrote:
> On 01/31/10 16:43, Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.31 and 2.6.32.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
>> be listed and let me know (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14487
>> Subject		: PANIC: early exception 08 rip 246:10 error ffffffff810251b5 cr2 0
>> Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date		: 2009-10-23 16:45 (101 days old)
>> References	: http://lkml.org/lkml/2009/10/23/252
>>
>>
>>
>
>
> yeah still hitting this.
> looking at the issue if I change:
>
> @@ 260
>
> if ((class == 0xffffffff))
> 	continue;
> to
>
> if ((class == 0xffffffff || 0xffffffffffffffff))
> 	continue;
>

Uh... 0xffffffffffffffff is always true so basically that's the same as deleting the
if condition.

I've added the linux1394-devel people to the CC list.

Justin has found an issue that when he boots with:  ohci1394_dma=early his computer
crashes.

He can get it to boot by modifying drivers/ieee1394/init_ohci1394_dma.c:

init_ohci1394_dma_on_all_controllers()
   254          /* Poor man's PCI discovery, the only thing we can do at early boot */
   255          for (num = 0; num < 32; num++) {
   256                  for (slot = 0; slot < 32; slot++) {
   257                          for (func = 0; func < 8; func++) {
   258                                  u32 class = read_pci_config(num,slot,func,
   259                                                          PCI_CLASS_REVISION);
   260                                  if ((class == 0xffffffff))
   261                                          continue; /* No device at this func */

	If he continues here then his system boots.

   262
   263                                  if (class>>8 != PCI_CLASS_SERIAL_FIREWIRE_OHCI)
   264                                          continue; /* Not an OHCI-1394 device */
   265
   266                                  init_ohci1394_controller(num, slot, func);
   267                                  break; /* Assume one controller per device */

	This comment is not terribly clear btw.  The code assumes one controller per slot.

   268                          }
   269                  }
   270          }

regards,
dan carpenter


> I'm able to boot, but don't have enough knowledge to know
> what is really happening(or how to execute this).
> will continue looking at this
> (hopefully I get somewhere on this);
>
> Justin P. Mattock
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
