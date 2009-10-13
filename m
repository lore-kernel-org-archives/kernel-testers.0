From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 08:16:10 -0700
Message-ID: <4AD499BA.6030001@gmail.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>	<L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>	<C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>	<87ljjgfcbu.fsf@spindle.srvr.nix>	<alpine.LFD.2.01.0910121703390.3438@localhost.localdomain>	<alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>	<4AD3F769.5080405@gmail.com> <20091013113434.22f4fcde@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=2GDH6B5RBtSmIUf31lK1wTq7rEuMCsjWi7YDhvxn91M=;
        b=LjinzgYwKsIzJiVmcV32e6r3XYP+hOlsclMt+om5U2MK8YJbEM7mOQ46yd9cqhF64R
         WsZGr2Nbpud2fveA+FTfajUuRzIoCLFHq6Fr0dy8amzy1RPkeMAZadrV4UjnhRKGKVS2
         6jS2XppSIuObhXyeOhfBVd4BrakSBVwJWQh7w=
In-Reply-To: <20091013113434.22f4fcde-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, =?ISO-8859-1?Q?=22Fr=E9d=E9ric_L=2E_W=2E_Meunier=22?= <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

Alan Cox wrote:
>> I can throw your patch in over here for the heck of it.
>> If there's somebody who's really hitting this bug
>> then the results would be better  if this is the area that causing
>> this bug.(from here the only issue I'm seeing is spinning
>> history commands in the terminal  from time to time,
>> nothing of any unusable keys like others are reporting).
>>      
>
> That sounds more like a lost key-up event somewhere higher up the stack.
> USB keyboard ? and does it stop if you take the key in question. Also does
> it stop if you touch the mouse wheel (assuming you've got mousewheel
> bound to shell history somewhere ?)
>
> Alan
>
>    
This seems like it's a new mechanism with
fedora/ubuntu, but could be wrong.
(smart keys or something)

It is a usb keyboard using evdev/keyboard
as the X modules to operate.(imac9,1)
The way I've been able to get this to stop is
open another terminal, then when the history starts
spinning like it does click on the other terminal,
and everything seems to stop.
As for reproducing this thing seems to have a mind of it's own, some timers
firing off to tell it to start searching for the last good word for the 
"user",
(but could be wrong)that ends up being something completely wrong,
although a couple of times it did actually work and go right to the word 
I had in mind,
but most of the time this things just causes irritation.


Justin P. Mattock
