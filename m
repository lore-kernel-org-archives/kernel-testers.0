From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk-X3B1VOXEql0@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Thu, 13 Aug 2009 13:40:45 +0300
Message-ID: <11fae7c70908130340w37782c04m861d2f429d639a9e@mail.gmail.com>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera>
	 <u1L1PAbl8zG.A.UBD.ej1fKB@chimera>
	 <11fae7c70908130152j21f9f183m4f1c49d91fc7a7f9@mail.gmail.com>
	 <20090813090743.GA14352@elte.hu>
	 <11fae7c70908130244k3f20954ewa23c5a57fbd60410@mail.gmail.com>
Reply-To: q-funk-X3B1VOXEql0@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=/h5XqMheyywrhK0/RO2jUj4t4iYaGwfxd6GHdkeZzBQ=;
        b=tK4JINhlWhD2D/PiAMOZL4qr3rzSMx5eD9g7uoa3TpO7hXiazaQFBMy34jwtr/TeaH
         PbGVPhz+B2fQd/nTneUclq/zk5IdjUVStgOLKv/8+2VfatHureVPTg0cIfPy1uv1XMj8
         xYRbYVJTO+GK3vN1aK5X1k6MiA+MbqrfQVAFk=
In-Reply-To: <11fae7c70908130244k3f20954ewa23c5a57fbd60410-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/8/13 Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org>:
> On Thu, Aug 13, 2009 at 12:07 PM, Ingo Molnar<mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>> * Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
>>> Yes, this bug is still valid.
>>>
>>> Ubuntu kernel team member Leann Ogasawara and I are slowly
>>> bisecting our way through the changes that took place since 2.6.30
>>> to find the commit that introduced this regression. Please stay
>>> tuned.
>>
>> hm, the only outright Geode related commit was:
>>
>> =C2=A0d6c585a: x86: geode: Mark mfgpt irq IRQF_TIMER to prevent resu=
me failure
>>
>> the jpg at:
>>
>> =C2=A0http://launchpadlibrarian.net/28892781/00002.jpg
>>
>> is very out of focus - but what i could decypher suggests a
>> pagefault crash in the VFS code, in generic_delete_inode().

This one might be a bit better:

http://launchpadlibrarian.net/30267494/2.6.31-5.24.jpg

>> Which could be a VFS bug, or a filesystem bug, or some unrelated
>> memory corruption hitting the inode data structure.
>
> It could indeed be many things.
>
> I've been trying to boot this into a larger framebuffer to be able to
> fit more data into my snapshots, but it appears that vga=3D795 doesn'=
t
> work anymore. Have we reverted to Hex values again or is this just an
> issue of some kernel module missing from initrd?

Never mind. Seems that vesafb was blacklisted. Works now. See the
image above. :)

Martin-=C3=89ric
