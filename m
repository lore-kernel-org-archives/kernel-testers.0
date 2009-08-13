From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk-X3B1VOXEql0@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Thu, 13 Aug 2009 12:44:27 +0300
Message-ID: <11fae7c70908130244k3f20954ewa23c5a57fbd60410@mail.gmail.com>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera>
	 <u1L1PAbl8zG.A.UBD.ej1fKB@chimera>
	 <11fae7c70908130152j21f9f183m4f1c49d91fc7a7f9@mail.gmail.com>
	 <20090813090743.GA14352@elte.hu>
Reply-To: q-funk-X3B1VOXEql0@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=G/oUrfCoNPP1FbDhzUn2/ZI1QtkbGPj06KHfsADYcdw=;
        b=GkUXN7a4QonXaMn6FrnjXbbQWjRv84z/0MfMuNKm/Pl/TtyY94w4ytHRZ3lRM3Ycl7
         tNmcFTC1T6FjlInee8OuL0AW09P1jgU2UPyXFWsh/mJeDVttDOhkrkoTcM/OJIlyqPEv
         FofN3Wloyta95R3d5gUxmK/i7Hf2YNy8LZhMY=
In-Reply-To: <20090813090743.GA14352-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, Aug 13, 2009 at 12:07 PM, Ingo Molnar<mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>
> * Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
>
>> Yes, this bug is still valid.
>>
>> Ubuntu kernel team member Leann Ogasawara and I are slowly
>> bisecting our way through the changes that took place since 2.6.30
>> to find the commit that introduced this regression. Please stay
>> tuned.
>
> hm, the only outright Geode related commit was:
>
> =C2=A0d6c585a: x86: geode: Mark mfgpt irq IRQF_TIMER to prevent resum=
e failure
>
> the jpg at:
>
> =C2=A0http://launchpadlibrarian.net/28892781/00002.jpg
>
> is very out of focus - but what i could decypher suggests a
> pagefault crash in the VFS code, in generic_delete_inode().

There's a few more JPEG images below that have a slightly sharper image=
=2E

> Which could be a VFS bug, or a filesystem bug, or some unrelated
> memory corruption hitting the inode data structure.

It could indeed be many things.

I've been trying to boot this into a larger framebuffer to be able to
fit more data into my snapshots, but it appears that vga=3D795 doesn't
work anymore. Have we reverted to Hex values again or is this just an
issue of some kernel module missing from initrd?

Martin-=C3=89ric
