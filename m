From: trapDoor <trapdoor6-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16881] [REGRESSION, Radeon-KMS] 2.6.36-rc1,2 - missing
 textures in 0 A.D.
Date: Mon, 30 Aug 2010 15:45:54 +0100
Message-ID: <AANLkTi=2c8FiPO6Mx9YLEscXx8FXxRPZWXyAusTpgwuJ@mail.gmail.com>
References: <4LwrqITm-eJ.A.r8G.eFueMB@chimera>
	<4AUWBNzTkbD.A.mj.QGueMB@chimera>
	<AANLkTikpoH-_od-SL3=Q7a=xbsraE4rYGicx7mmS92Cw@mail.gmail.com>
	<20100830153953.1e5abc71@schatten.dmk.lab>
Reply-To: trapdoor6-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:reply-to
         :in-reply-to:references:date:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=8+WDhwP4bQTQiAyFTcZeq7O2s+8M+nZLiTuo6uAniWU=;
        b=NuJudMBODiVjKjMBJgBwwgTStIQghBB94lHeQ8GCVl9GLu0Z72WPWJt2DOYZl8WvWy
         K/f1MfRzLT5s9hZQ+L0TP/yVcXgnhq/7U82iuPb891YIGxYmZs+wq3pmlW4jAjBXWLfb
         p1KpSMzJejjVCnO3oD9rcdyTokH7esCMvkbRE=
In-Reply-To: <20100830153953.1e5abc71-mGsOIKOveelVRbCss4o9kg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, Aug 30, 2010 at 2:39 PM, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org> =
wrote:
>
>
> On Mon, 30 Aug 2010 10:54:41 +0100
> trapDoor <trapdoor6-Re5JQEeQqe8AvxtiuMwx3w-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org> wrote:
>
>> On Sun, Aug 29, 2010 at 11:36 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0=
@public.gmane.org> wrote:
>> > This message has been generated automatically as a part of a summa=
ry report
>> > of recent regressions.
>> >
>> > The following bug entry is on the current list of known regression=
s
>> > from 2.6.35. =A0Please verify if it still should be listed and let=
 the tracking team
>> > know (either way).
>> >
>> >
>> > Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=
=3D16881
>> > Subject =A0 =A0 =A0 =A0 : [REGRESSION, Radeon-KMS] 2.6.36-rc1,2 - =
missing textures in 0 A.D.
>> > Submitter =A0 =A0 =A0 : =A0<trapdoor6-Re5JQEeQqe8AvxtiuMwx3w@publi=
c.gmane.org>
>> > Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-08-24 12:20 (6 days old)
>> >
>> >
>> > --
>> > To unsubscribe from this list: send the line "unsubscribe linux-ke=
rnel" in
>> > the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.g=
mane.org
>> > More majordomo info at =A0http://vger.kernel.org/majordomo-info.ht=
ml
>> > Please read the FAQ at =A0http://www.tux.org/lkml/
>> >
>>
>> There was at least one drm pull between 2.6.36-rc2 and -rc3. So I
>> tested on -rc3 and I confirm that the issue is still present.
>>
>> I was going to update the bugzilla entry but it won't let me log in =
at
>> this moment.
>>
>
> It seems to work now again. I've updated the entry for you.
>
> Thx,
> Flo
>
>

Thanks Florian.

--
Tomasz
