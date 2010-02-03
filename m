From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug	 #14487]
 PANIC: early exception 08 rip 246:10	 error	ffffffff810251b5 cr2 0)
Date: Wed, 03 Feb 2010 09:11:55 -0800
Message-ID: <4B69AE5B.9060708@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com> <4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com> <4B67BC12.4080709@s5r6.in-berlin.de> <4B67C4D2.5050205@gmail.com> <4B67CC55.40301@s5r6.in-berlin.de> <4B67CCEC.2030103@s5r6.in-berlin.de> <4B68D4CA.2010803@gmail.com> <4B694D5C020000780002D6DA@vpn.id2.novell.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=RzIwp6Xip4xJrnsY1bkClPIgbpZs2+cibU6IN4uLx94=;
        b=vKofwZubpjICbeEbv7OaB/7eP+C2jS4tVyZweCJ3BuWRAETvtfkP6AuibLBbZ8LYJO
         FdLV4rVYkLaa+6b+Yas1kLyz6JoMCHlUb0JNomtFIkofZuNirwjd7U9KdetU9QZ2URt9
         y/Am9Gb5/eei+VD0w09wmDl4N+RmS6XQxIIT4=
In-Reply-To: <4B694D5C020000780002D6DA-Qfbpwmsw6RoS3W1tAdPHOtBPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jan Beulich <JBeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
Cc: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, bernhard.kaindl-hi6Y0CQ0nG0@public.gmane.org, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Rafael Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, ebiderman-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org, hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org

On 02/03/10 01:18, Jan Beulich wrote:
>>>> "Justin P. Mattock"<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>  03.02.10 02:43>>>
>> The only thing I can think of at this point
>> is maybe the CFLAGS I used to build this system.
>> (as for the x86_32 working and x86_64 failing not sure);
>>
>> I'm curious to see if anybody else is hitting this?
>
> I think it is pretty clear how a page fault can happen here (but you're
> observing a double fault, which I cannot explain [nor can I explain
> why the fault apparently didn't get an error code pushed, which is
> why address and error code displayed are mixed up]): I would
> suspect that FIX_OHCI1394_BASE is now in a different (virtual) 2Mb
> range than what is covered by level{1,2}_fixmap_pgt, but this was
> a latent issue even before that patch (just waiting for sufficiently
> many fixmap entries getting inserted before
> __end_of_permanent_fixed_addresses).
>
> The thing is that head_64.S uses hard-coded numbers, but doesn't
> really make sure (at build time) that the fixmap page tables established
> indeed cover all the entries of importance (and honestly I even can't
> easily tell which of the candidates - FIX_DBGP_BASE,
> FIX_EARLYCON_MEM_BASE, and FIX_OHCI1394_BASE afaict - really
> matter). If either of the first does, the only reasonable solution imo
> is to move FIX_OHCI1394_BASE out of the boot time only range into
> the permanent range (unless the other two can be moved into the
> boot time only range). And obviously the hard coded numbers
> should be eliminated from head_64.S.
>
> Jan
>
>

Thanks for your info on this. I can try today moving things
around just to see. Looking more into this(keep in mind I
have no idea how these page,fix_to_virt calls etc.. work)
I was thinking with what stefan had mentioned ___alloc_bootmem_node
(still need to look into what that function does)maybe keeping fixmap.h 
as is and looking somewhere else might be where the fix might be(but 
could be wrong).

In any case I'll have another go at this today.

Justin P. Mattock
