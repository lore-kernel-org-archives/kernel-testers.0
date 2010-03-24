From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15392] The kernel does not start up.
Date: Wed, 24 Mar 2010 07:17:28 +0300
Message-ID: <aa79d98a1003232117m168a3e37ud18c49554bffa82e@mail.gmail.com>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
	 <hTwaxgnIZ2O.A.DEE.3OopLB@chimera>
	 <5712ce4f1003211947i1a2ac84ch269885f7c2888c4f@mail.gmail.com>
	 <201003222224.47780.rjw@sisk.pl> <20100322212919.GB8941@lenovo>
	 <5712ce4f1003231735w33fb60a0h651c731fdbed747e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=/cQoumF/X9w5aHbSXOKnnnqJ4Cqaw1xr7GyWGR1+cCM=;
        b=kvoJVPlQQ6JA7g4dBhRNsCywNnQtx+nZb4zSwzB7YCVpkdgBBLxitBWuCjarPiWnRx
         8CFA8b+6ffXUDL44sMuxHNQl5EjhnN1zJJz1YApzM+NQzJgJl9y+/vZlAWoPwu/uGq+N
         nIBBWG1mQC7kpHt1PmEEiQxxgNQQO3CykRjys=
In-Reply-To: <5712ce4f1003231735w33fb60a0h651c731fdbed747e-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: =?ISO-8859-1?Q?RALOVICH=2C_Krist=F3f?= <kristof.ralovich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 3/24/10, RALOVICH, Krist=F3f <kristof.ralovich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Mon, Mar 22, 2010 at 17:29, Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> w=
rote:
>> On Mon, Mar 22, 2010 at 10:24:47PM +0100, Rafael J. Wysocki wrote:
>>> On Monday 22 March 2010, RALOVICH, Krist=F3f wrote:
>>> > The issue is still there with 2.6.33-rc1, 2.6.33 and 2.6.33.1 too=
=2E
>>>
>>> Thanks for the update.
>>>
>>> Rafael
>>>
>>>
>> [...]
>>
>> (Out of thread)
>>
>> Hi Krist=F3f,
>>
>> I don't have time to take a closer look on this bug
>> but curious -- what will happen if you change compressing
>> method to say bz2, instead of LZMA being used now?
>>
>>        -- Cyrill
>>
>
> I took a look: I tested 2.6.33.1 with bz2 instead of LZMA, the same
> issue is still there.
>
> Kristof
>

Thanks, good to know
