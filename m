From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15096] Resume lock up -- bisected, commit 
	3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Mon, 8 Feb 2010 20:31:52 +0100
Message-ID: <b170af451002081131t6d77c808tb512b01c975a4c3e@mail.gmail.com>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera> <4B7004F4.3030804@canonical.com>
	 <b170af451002080438i18a1e541x8dc038f4b5f129f4@mail.gmail.com>
	 <201002082022.43515.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=lO87qmhT1/ALSQfwqg29M2bS/W+kLW3H60F0Weh+5eU=;
        b=Kaqi+zUsPCXHhHfD7PEpvM4ULr1snUexW8kWrlqjosnww1Zvp4oqcN1MCut8SxSVDp
         5z8BT8qUnJxR49MRsRIYScNlkT6at6E/GaEfZ+2z81QgUes9jVV8rpgmoHQWUMB9WGQZ
         x5d12PvMsX2kRS1bAw9uZNib9R9i28k1wMZKI=
In-Reply-To: <201002082022.43515.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

W dniu 8 lutego 2010 20:22 u=C5=BCytkownik Rafael J. Wysocki <rjw@sisk.=
pl> napisa=C5=82:
> On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
>> 2010/2/8 Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>:
>> > Rafael J. Wysocki wrote:
>> >> On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
>> >>> 2010/2/8 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
>> >>>> This message has been generated automatically as a part of a re=
port
>> >>>> of regressions introduced between 2.6.31 and 2.6.32.
>> >>>>
>> >>>> The following bug entry is on the current list of known regress=
ions
>> >>>> introduced between 2.6.31 and 2.6.32. =C2=A0Please verify if it=
 still should
>> >>>> be listed and let the tracking team know (either way).
>> >>>>
>> >>>>
>> >>>> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/sho=
w_bug.cgi?id=3D15096
>> >>>> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Resume lock up -- bisecte=
d, commit 3a1151e3f124fd1a2c54b8153f510f1a7c715369
>> >>>> Submitter =C2=A0 =C2=A0 =C2=A0 : Rafa=C5=82 Mi=C5=82ecki <zajec=
5@gmail.com>
>> >>>> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-20 23:1=
5 (19 days old)
>> >>>> First-Bad-Commit: http://git.kernel.org/git/linus/3a1151e3f124f=
d1a2c54b8153f510f1a7c715369
>> >>
>> >> It looks like we should revert this commit, seems broken.
>> >
>> > Hm, otoh we had definitely people with some Asus laptops who where=
 only be able
>> > to use backlight control with it. So I would rather prefer some wo=
rk around to
>> > the suspend/resume problem (_DOS if I understood correctly).
>>
>> It's same case with my Sony VAIO. Without this I can not control
>> backlight. Eventually I can hack on GPU registers directly, but I
>> don't think it can be called solution.
>
> Well, do I understand correctly that without commit
> 3a1151e3f124fd1a2c54b8153f510f1a7c715369 you can't control the backli=
ght,
> but with the commit applied there's a resume problem on your box?

That's right.
BEFORE: no backlight controll, resume works fine
AFTER: backlight control, resume locks up machine

--=20
Rafa=C5=82
