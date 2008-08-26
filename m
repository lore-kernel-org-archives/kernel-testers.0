From: "Jeff Kirsher" <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: e1000 horridness (was Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected)
Date: Tue, 26 Aug 2008 15:04:19 -0700
Message-ID: <9929d2390808261504j6b1d4b2cl4786c15db3009f69@mail.gmail.com>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <48B313E0.1000501@hp.com>
	 <alpine.LFD.1.10.0808251326500.3363@nehalem.linux-foundation.org>
	 <200808261111.19205.rusty@rustcorp.com.au>
	 <alpine.LFD.1.10.0808261019450.3363@nehalem.linux-foundation.org>
	 <48B45FA2.8040603@garzik.org>
	 <alpine.LFD.1.10.0808261257210.3363@nehalem.linux-foundation.org>
	 <48B4641A.1020806@intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:sender
         :to:subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references
         :x-google-sender-auth;
        bh=1MqaVT9jdJJAZ4RaNrDRBKsLW/dsuHjZ4U1rG0As0Bg=;
        b=nHSoLrWu5h5R+4XaySOTTf5AM0rkdvk6kiGebd/PXa7ch26C5jMghLFuLA6J28NKa9
         1wazYjcXVDoxsDrlm8TkXfIFivTioBpfA0y8VxdJbz5ohqQllB/rMASUM+ENnvpjEDsY
         A5olW1Ao3gn+LL4zhlAxAv2RcPvyLOHIbGIU4=
In-Reply-To: <48B4641A.1020806-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Kok, Auke" <auke-jan.h.kok-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Tue, Aug 26, 2008 at 1:14 PM, Kok, Auke <auke-jan.h.kok-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org> wrote:
> Linus Torvalds wrote:
>>
>> On Tue, 26 Aug 2008, Jeff Garzik wrote:
>>> e1000_check_options builds a struct (singular) on the stack, really... struct
>>> e1000_option is reasonably small.
>>
>> No it doesn't.
>>
>> Look a bit more closely.
>>
>> It builds a struct (singular) MANY MANY times. It also then builds up a
>> huge e1000_opt_list[] array, even though it is const and should be static
>> (and const).
>>
>> I know. I wrote a patch to FIX it.
>
> totally cool patch afaics - if I still maintained this driver I'd have this tested
> and merged right away :)
>
> I suppose Jeff Kirsher is already doing so right now

You suppose correctly.
.
>
> I suppose that he'll have to look at the other Intel ethernet drivers as well :)
>
> Jeff, please add my:
>
> Reveiewed-by: Auke Kok <auke-jan.h.kok-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>

Will do.

-- 
Cheers,
Jeff
