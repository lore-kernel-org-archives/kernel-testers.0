From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug	 #14487]
 PANIC: early exception 08 rip 246:10	 error	ffffffff810251b5 cr2 0)
Date: Wed, 03 Feb 2010 11:26:03 -0800
Message-ID: <4B69CDCB.5020608@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com> <4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com> <4B67BC12.4080709@s5r6.in-berlin.de> <4B67C4D2.5050205@gmail.com> <4B67CC55.40301@s5r6.in-berlin.de> <4B67CCEC.2030103@s5r6.in-berlin.de> <4B68D4CA.2010803@gmail.com> <4B694D5C020000780002D6DA@vpn.id2.novell.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=vQOe2f/8hFr+5FuGWNt965UWagemDbm1ia85K5ke44k=;
        b=fjBgIoTDa76BiWFp5eAzDnlfD5OLZ5NBHeDtK1OD9cDcikOvT3EOtWHCSsokYeI2U9
         uceplEd3y6Mb40Q3aY2Nk+qJqxVufHVSlQJql4WzA6A/pVitDesmvBg/cmx8wmI830wS
         InjEVhkV8tNG/61lH6oKVEgQBktpYxYGLiT6o=
In-Reply-To: <4B694D5C020000780002D6DA-Qfbpwmsw6RoS3W1tAdPHOtBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jan Beulich <JBeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
Cc: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bernhard.kaindl-hi6Y0CQ0nG0@public.gmane.org, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Rafael Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, ebiderman-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org, hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org

jan,

Thanks for that info, after looking at
arch/x86/kernel/head_64.S
I'm thinking this is a grub2 issue.

 From what I remember while building this system
I used ubuntu as the host, built grub2 from git
then once being able to boot, figured it was all good.

Just to see, I'll go and leave the kernel as it is,
build grub2 again, just to make sure.
(maybe there's something happening with it because
grub2 is built pure64, anything 32bit wont work
(could be wrong though)) i.g. if the kernel does 32bit something
then changes to 64bit and in the meantime grub2 can only see 64bit then 
maybe this is what I'm hitting.

Justin P. Mattock
