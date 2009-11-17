From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Tue, 17 Nov 2009 11:04:23 -0800
Message-ID: <4B02F3B7.2090907@gmail.com>
References: <ipicVA1QUFF.A.zWB.1mdALB@chimera>	<OWmO9uyC1hM.A.yiC._ndALB@chimera>	<4B01F3FE.8040707@gmail.com>	<20091117113320.8aef894a.kristoffer.ericson@gmail.com>	<4B02E64D.2010700@gmail.com> <20091117191357.7c64ba70.kristoffer.ericson@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=Q4ca+WIa7vUxmmelBxz6DIbGTFC+mqyfizEhnNsJ7yI=;
        b=bqOCn4D9b5qelUCucYestj0pf7+U3xs/3SGZusNpPnK84oxqLyx895F3ORf0VrlQF3
         W4Ft2FIB45v++vf1MiR9XBJdjEiSOLkJFQdQm45EiJ1agoppvYGA9BGQuhc+X3KQ64wI
         r+OHP3Z+z+rJ+9xkMsIYheb1ivyCbxdMAbQa8=
In-Reply-To: <20091117191357.7c64ba70.kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

Kristoffer Ericson wrote:
> On Tue, 17 Nov 2009 10:07:09 -0800
> "Justin P. Mattock"<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>  wrote:
>
>    
>> Kristoffer Ericson wrote:
>>      
>>> Im still hitting this so basicly using 2.6.30 until it get sorted. Will try and make
>>> some time to test the different commits. Last time I waited for it to disconnect which
>>> could take 10-40min. Since it depends on the network load Im now going to increase
>>> the load to see if I hit it quicker (and thus finding the error commit).
>>>
>>> So in short, its still valid and I will try and make time to fix it :)
>>>
>>>
>>>
>>>
>>>        
>> o.k. so it is something that is enough to
>> cause an inconvenience.
>>      
>
> Especially if you are using your computer as a router to other computers
> and they start screaming every time internet goes down. :(
>
>    
>>      
>
>
>    
ah. yeah I'm not doing that over here
just simply connecting to a router and streaming music.
my guess is you can try the commits that I found
but then again might not get you in the right
direction i.g. during the bisect I was watching the
"retry" in dmesg with ath* as soon as I saw that it was git bisect bad
(seems like a new mechanism) as soon as I didn't see
that the commit was good.

In your case you might be seeing something different(not sure though)
because of having the computer as a router etc..

Justin P. Mattock
