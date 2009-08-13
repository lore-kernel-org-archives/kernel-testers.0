From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk-X3B1VOXEql0@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Thu, 13 Aug 2009 18:00:42 +0300
Message-ID: <11fae7c70908130800q7b4a5293t5c373613d736d74@mail.gmail.com>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera>
	 <11fae7c70908130244k3f20954ewa23c5a57fbd60410@mail.gmail.com>
	 <11fae7c70908130340w37782c04m861d2f429d639a9e@mail.gmail.com>
	 <200908131654.45227.rjw@sisk.pl>
Reply-To: q-funk-X3B1VOXEql0@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=+FvGRfjCVDjZsHagsuIoqeeUJPLufUJ71yxYLKwQmHU=;
        b=SYw6jJ7s1bmzFSJcB10dKRRnCCkrplmeBoDF3M7F08ZQT7GARcOCtBje98qbcyniFh
         mZtpwi8d6h6XpZ/2TaDFFWRHqUq419ZK/OghxhbpCJLn29bpAkKLtL7C2GzY/LWL49ug
         7nBVFfKs04h91JeroZeWEJ5TkzdOW1efMUtCU=
In-Reply-To: <200908131654.45227.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Alexander Viro <viro-rfM+Q5joDG/XmaaqVzeoHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thu, Aug 13, 2009 at 5:54 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> On Thursday 13 August 2009, Martin-=C3=89ric Racine wrote:
>> 2009/8/13 Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org>:
>> > On Thu, Aug 13, 2009 at 12:07 PM, Ingo Molnar<mingo-X9Un+BFzKDI@public.gmane.org> wrote=
:
>> >> * Martin-=C3=89ric Racine <q-funk-X3B1VOXEql0@public.gmane.org> wrote:
>> >>> Yes, this bug is still valid.
>> >>>
>> >>> Ubuntu kernel team member Leann Ogasawara and I are slowly
>> >>> bisecting our way through the changes that took place since 2.6.=
30
>> >>> to find the commit that introduced this regression. Please stay
>> >>> tuned.
>> >>
>> >> hm, the only outright Geode related commit was:
>> >>
>> >> =C2=A0d6c585a: x86: geode: Mark mfgpt irq IRQF_TIMER to prevent r=
esume failure
>> >>
>> >> the jpg at:
>> >>
>> >> =C2=A0http://launchpadlibrarian.net/28892781/00002.jpg
>> >>
>> >> is very out of focus - but what i could decypher suggests a
>> >> pagefault crash in the VFS code, in generic_delete_inode().
>>
>> This one might be a bit better:
>>
>> http://launchpadlibrarian.net/30267494/2.6.31-5.24.jpg
>>
>> >> Which could be a VFS bug, or a filesystem bug, or some unrelated
>> >> memory corruption hitting the inode data structure.
>> >
>> > It could indeed be many things.
>> >
>> > I've been trying to boot this into a larger framebuffer to be able=
 to
>> > fit more data into my snapshots, but it appears that vga=3D795 doe=
sn't
>> > work anymore. Have we reverted to Hex values again or is this just=
 an
>> > issue of some kernel module missing from initrd?
>>
>> Never mind. Seems that vesafb was blacklisted. Works now. See the
>> image above. :)
>
> OK, so I guess the bug should be closed?

No, it cannot.  Please read the above more carefully.

Martin-=C3=89ric
