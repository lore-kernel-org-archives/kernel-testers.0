From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug	 #14487]
 PANIC: early exception 08 rip 246:10 error	 ffffffff810251b5 cr2 0)
Date: Thu, 04 Feb 2010 01:48:29 -0800
Message-ID: <4B6A97ED.6080605@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com> <4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com> <4B67BC12.4080709@s5r6.in-berlin.de> <4B67C4D2.5050205@gmail.com> <4B67CC55.40301@s5r6.in-berlin.de> <4B67CCEC.2030103@s5r6.in-berlin.de> <4B68D4CA.2010803@gmail.com> <4B694D5C020000780002D6DA@vpn.id2.novell.com> <4B6A0123.3010607@gmail.com> <4B6A9960020000780002DA6B@vpn.id2.novell.com> <4B6A8DA9.4090804@gmail.com> <4B6A9D4C020000780002DA99@vpn.id2.novell.com> <4B6A90BB.7090405@gmail.com> <4B6AA2D6020000780002DAD1@vpn.id2.novell.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=On0hOu1hbzUpa9W7S+X/hv4X+Ep05Jw1ZU8A3gwWH/M=;
        b=AQhxUceVRFdicY4jRQ6THDCxdvifpAcE9MRQfblTp+sRI1/l/5qsuy3BqE//CM9asF
         wxkjyXXY1Wkm3Dqu1RIWng+jyLt6Nqj/chAb/K53RwB9kVlrDU3rfgvkhLBQP2rQSSSF
         XUNeag2OLe++6NaN6n4XI9BASfAG2OZ8ov9YE=
In-Reply-To: <4B6AA2D6020000780002DAD1-Qfbpwmsw6RoS3W1tAdPHOtBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jan Beulich <JBeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bernhard.kaindl-hi6Y0CQ0nG0@public.gmane.org, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>, Rafael Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, ebiderman-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org, hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org

On 02/04/10 01:35, Jan Beulich wrote:
>>>> "Justin P. Mattock"<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>  04.02.10 10:17>>>
>> so something is using __native_set_fixmap
>> that's hitting some memory address then
>> set_fixmap_nocache(ohci1394_dma=early)
>> fires off hitting the same?
>
> No, afaict it is the ohci1394_dma=early code itself hitting that path.
>
> Jan
>
>

alright.. looking at init_ohci1394_dma.c
I see:

ohci.registers = (void *)fix_to_virt(FIX_OHCI1394_BASE);

then I think it calls:

set_fixmap_nocache(FIX_OHCI1394_BASE, ohci_base);

I'm guessing somewhere with the fix_to_virt might be something
(but could be wrong);

Justin P. Mattock
