From: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12499] Problem with using bluetooth adaper connected to usb 
	port
Date: Tue, 7 Apr 2009 09:49:23 +0200
Message-ID: <8db1092f0904070049o675de150qd319fc5853ec9bd8@mail.gmail.com>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
	 <AsKNxFx2juN.A.bxC.BJn2JB@chimera> <1239088491.19390.25.camel@violet>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=9z+RHbxj/3plAnm870gk82R+gsxMKcJRtqpfkgEyaPI=;
        b=JoqwMZdPPk5zy2R/uXuMcpS0CSgpwUajcpHi7eGHQt7Cgeq95zmQUPcmeWxIlL6gOM
         ie66q/BmbuxYONx+Z0WAHXld62WMi2U9NJg+HAofo4qh5z44SokIwWgmpGZ4QyalyogH
         +UCMKWaf2kU1zrZXNMCZo1JQwQsDrlm/EGPWc=
In-Reply-To: <1239088491.19390.25.camel@violet>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/4/7 Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>:
> Hi Rafael,
>
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.28. =C2=A0Please verify if it still should be listed and le=
t me know
>> (either way).
>>
>>
>> Bug-Entry =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.cgi?id=
=3D12499
>> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Problem w=
ith using bluetooth adaper connected to usb port
>> Submitter =C2=A0 =C2=A0 : "Maciej Rutecki" <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org=
>
>> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-01-13 18:34 (84 days o=
ld)

I forgot this bug :)

>> References =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=3D123=
187185426236&w=3D4
>
> I prefer to have this checked against 2.6.30-rc1 once Linus released
> that one. I think that I know the root cause for this one and it is
> actually a hardware/firmware bug. Some Bluetooth dongles expect to ha=
ve
> the interrupt and bulk URBs available at the same time. Otherwise the=
y
> do pee in their pants.

I will check -rc1 when will be available.

>
> Regards
>
> Marcel
>
>
>


Regards
--=20
Maciej Rutecki
http://www.maciek.unixy.pl
