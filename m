From: =?UTF-8?B?UkFMT1ZJQ0gsIEtyaXN0w7Nm?= <kristof.ralovich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15392] The kernel does not start up.
Date: Tue, 23 Mar 2010 20:35:44 -0400
Message-ID: <5712ce4f1003231735w33fb60a0h651c731fdbed747e@mail.gmail.com>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera> <hTwaxgnIZ2O.A.DEE.3OopLB@chimera> 
	<5712ce4f1003211947i1a2ac84ch269885f7c2888c4f@mail.gmail.com> 
	<201003222224.47780.rjw@sisk.pl> <20100322212919.GB8941@lenovo>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=z5503BiPc2S6FdXt16sxWVeSlu/KzHQQRq12h76Bl/c=;
        b=cYJBifw2vDJTWImpFYvJlIP0ZEsao/l26UfKekAP4j2nIKNBRbVsCVxkchbjieLwNV
         2DdjwA20EEpOjQohK5JuodMa+HWThw1ck5TC6sT9kmsfyU2HnzauSPg8F362ubM0K6Ms
         J+Re8p9Hmv0E8356JWbT602VBtYOx3kSC1M9k=
In-Reply-To: <20100322212919.GB8941@lenovo>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, Mar 22, 2010 at 17:29, Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wro=
te:
> On Mon, Mar 22, 2010 at 10:24:47PM +0100, Rafael J. Wysocki wrote:
>> On Monday 22 March 2010, RALOVICH, Krist=C3=B3f wrote:
>> > The issue is still there with 2.6.33-rc1, 2.6.33 and 2.6.33.1 too.
>>
>> Thanks for the update.
>>
>> Rafael
>>
>>
> [...]
>
> (Out of thread)
>
> Hi Krist=C3=B3f,
>
> I don't have time to take a closer look on this bug
> but curious -- what will happen if you change compressing
> method to say bz2, instead of LZMA being used now?
>
> =C2=A0 =C2=A0 =C2=A0 =C2=A0-- Cyrill
>

I took a look: I tested 2.6.33.1 with bz2 instead of LZMA, the same
issue is still there.

Kristof
