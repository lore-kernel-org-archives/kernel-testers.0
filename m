From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug		 #14487]
 PANIC: early exception 08 rip 246:10 error		 ffffffff810251b5 cr2 0)
Date: Sat, 06 Feb 2010 15:57:55 -0800
Message-ID: <4B6E0203.8030900@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com> <4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com> <4B67BC12.4080709@s5r6.in-berlin.de> <4B67C4D2.5050205@gmail.com> <4B67CC55.40301@s5r6.in-berlin.de> <4B67CCEC.2030103@s5r6.in-berlin.de> <4B68D4CA.2010803@gmail.com> <4B694D5C020000780002D6DA@vpn.id2.novell.com> <4B6A0123.3010607@gmail.com> <4B6A9960020000780002DA6B@vpn.id2.novell.com> <4B6A8DA9.4090804@gmail.com> <4B6A9D4C020000780002DA99@vpn.id2.novell.com> <4B6A90BB.7090405@gmail.com> <4B6AA2D6020000780002DAD1@vpn.id2.novell.com> <4B6A97ED.6080605@gmail.com> <4B6AA817020000780002DB11@vpn.
 id2.novell.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=TTnS2GVR+X+/N0TpoNpnpvx3BGIRHz1vAZrPnSvJ2LU=;
        b=DBRlkH0MSULcIwknWRyE8UeNDPzzV+zdfJJfd+KqBIE/BcRcSm4YRTpA98tUxdtyS3
         QKtQuGdMEsTW4WLOijcmPzWIERy7hrZsZvw4wyDD+R84hC7z368kW2UfOk0FyCxn3gi5
         l+rVkpkMmkat5YQ9HIKPag1F9bawdSynb5ZJw=
In-Reply-To: <4B6AA817020000780002DB11-Qfbpwmsw6RoS3W1tAdPHOtBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jan Beulich <JBeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bernhard.kaindl-hi6Y0CQ0nG0@public.gmane.org, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>, Rafael Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, ebiderman-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org, hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org

On 02/04/10 01:57, Jan Beulich wrote:
>>>> "Justin P. Mattock"<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>  04.02.10 10:48>>>
>> I see:
>>
>> ohci.registers = (void *)fix_to_virt(FIX_OHCI1394_BASE);
>>
>> then I think it calls:
>>
>> set_fixmap_nocache(FIX_OHCI1394_BASE, ohci_base);
>>
>> I'm guessing somewhere with the fix_to_virt might be something
>> (but could be wrong);
>
> No, it ought to be that set_fixmap_nocache().
>
> Jan
>
>


looking into fixmap.h I started to look into:
  #define NR_FIX_BTMAPS           64
  #define FIX_BTMAPS_SLOTS        4
          FIX_BTMAP_END = __end_of_permanent_fixed_addresses + 256 -
                          (__end_of_permanent_fixed_addresses & 255),
          FIX_BTMAP_BEGIN = FIX_BTMAP_END + 
NR_FIX_BTMAPS*FIX_BTMAPS_SLOTS - 1,

which led me to a patch you had submitted:
http://patchwork.kernel.org/patch/68719/
and another located here:
http://lists.openwall.net/linux-kernel/2008/08/29/211

your patch works, I reapplied it to the latest HEAD, and added a
bisected-and-tested-by unto it and sent it as an attachment to
the bug report.

the other thread(patch) I was able to get the system boot with that, as 
well but with it only changed the size of page(256 to 512 etc..).

Let me know what would be the best approach with this.

Justin P. Mattock







