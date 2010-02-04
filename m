From: "Justin P. Mattock" <justinmattock@gmail.com>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug		 #14487]
 PANIC: early exception 08 rip 246:10 error		 ffffffff810251b5 cr2 0)
Date: Thu, 04 Feb 2010 02:13:58 -0800
Message-ID: <4B6A9DE6.6080501@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com> <4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com> <4B67BC12.4080709@s5r6.in-berlin.de> <4B67C4D2.5050205@gmail.com> <4B67CC55.40301@s5r6.in-berlin.de> <4B67CCEC.2030103@s5r6.in-berlin.de> <4B68D4CA.2010803@gmail.com> <4B694D5C020000780002D6DA@vpn.id2.novell.com> <4B6A0123.3010607@gmail.com> <4B6A9960020000780002DA6B@vpn.id2.novell.com> <4B6A8DA9.4090804@gmail.com> <4B6A9D4C020000780002DA99@vpn.id2.novell.com> <4B6A90BB.7090405@gmail.com> <4B6AA2D6020000780002DAD1@vpn.id2.novell.com> <4B6A97ED.6080605@gmail.com> <4B6AA817020000780002DB11@vpn.
 id2.novell.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=P62/3iorDKVG2RnENWh7Fm5/PEFKhnXxdnSSTnwgCLc=;
        b=Y7JvII8sjlwa7b2S/HxYKtpQudBthgFVUKPj3OPi+t9IFMVPKUPczmjqA3SBulk+/w
         JcFMsqxgYIXod5BETqtqIWCAWt+SN/5aFImiule/tY/GsWQ36HmIT+cwa7mZ42ttE+PI
         2H5q8dV4dq7DpXnCN5MXn5VWBh5/arFejFKpc=
In-Reply-To: <4B6AA817020000780002DB11@vpn.id2.novell.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jan Beulich <JBeulich@novell.com>
Cc: Ingo Molnar <mingo@elte.hu>, Dan Carpenter <error27@gmail.com>, bernhard.kaindl@gmx.net, Thomas Gleixner <tglx@linutronix.de>, linux1394-devel@lists.sourceforge.net, Stefan Richter <stefanr@s5r6.in-berlin.de>, Rafael Wysocki <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, ebiderman@xmission.com, hpa@zytor.com

On 02/04/10 01:57, Jan Beulich wrote:
>>>> "Justin P. Mattock"<justinmattock@gmail.com>  04.02.10 10:48>>>
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


hmm..
as a quick test I did try:

set_fixmap(FIX_OHCI1394_BASE, ohci_base);
(maybe ohci_base)

which still hit, maybe something else
in the set of calls is hitting
i.g. address specific or something.
(I'll have to keep looking on this);

Justin P. mattock
