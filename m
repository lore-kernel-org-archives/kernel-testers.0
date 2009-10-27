From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Mon, 26 Oct 2009 21:34:07 -0700
Message-ID: <4AE6783F.1000400@gmail.com>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera> <4AE621CB.6000700@yahoo.co.uk> <alpine.LFD.2.01.0910261543400.31845@localhost.localdomain> <200910261945.58027.edt@aei.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=R0z7LZG/tgqqRyaN2cVLuaQv57VSCkH9X9zLH0bTkvg=;
        b=kAPIX2DKlB4110svKU2/Kw2gi4eKhKA1ovZ0Mr2GrSOdJep81ATKL5xg2Ij5uQdpi4
         CBPQNJiYP5EYG7pqbjvgE0hvsbqDDeV7UONwfN2Dwo9IQDcYS1KA9UWuhXwOdlKm93WE
         OjnXQ2G9z/IGXOHMEu+SZH9HtY80Vrat5KrgI=
In-Reply-To: <200910261945.58027.edt-Yad3+ZauZac@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, =?ISO-8859-1?Q?=22Fr=E9d=E9ric_L=2E_W=2E_Meunier=22?= <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

Ed Tomlinson wrote:
> On Monday 26 October 2009 18:45:27 Linus Torvalds wrote:
>    
>> On Tue, 27 Oct 2009, Boyan wrote:
>>      
>>> I think it is fixed in 2.6.31.5. I can't reproduce the problem with it.
>>>        
>> It was fixed by mainline commit c8e33141911bf8fe87dc6c92793b9a59b2be0130
>> ("tty: Make flush_to_ldisc() locking more robust"), which got back-ported
>> to 2.6.31.5 as commit 86d23a057.
>>      
>
> I can confirm that the keyboard is no longer missbehaving here  with 31.5
>
> Ed
>
>    
I guess there you have it... everybody
confirms this is fixed.
safe to say yes close, but not until the patch
has been pushed to the main tree..

cheers

Justin P. Mattock
