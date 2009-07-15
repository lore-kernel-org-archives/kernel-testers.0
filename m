From: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13727] Cannot Recognize Empty DVD Media
Date: Wed, 15 Jul 2009 19:53:14 +0200
Message-ID: <8db1092f0907151053v5731f409ydd81465d20c929f8@mail.gmail.com>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
	 <dWkuWjWDsSB.A.8EE.Q0oUKB@chimera> <4A5D82EA.1070002@turknet.net.tr>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=k6OIHJd5GeAqLYr5x4vmnAoHkScFz2dTZGCMcXgDbKw=;
        b=T9N8I1cyow1KFqZ3oaKL8jBsn6zJxMlKjHPot+l1I4gd1B3pBkVPCeYG6H5bW2DWVo
         rj58GVZPzgCzr9goGj6KA6QQIF7hATrYp374VgYBPgY3Wz3dLfPRIEENg6bAMisniFuc
         X7/0wX9HsOUmqDK9RNZcNdfjLktMeeN4/u4jc=
In-Reply-To: <4A5D82EA.1070002-AMZSHK9Z0TXlajqSnzHT9w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Tarkan Erimer <tarkan.erimer-AMZSHK9Z0TXlajqSnzHT9w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/7/15 Tarkan Erimer <tarkan.erimer-AMZSHK9Z0TXlajqSnzHT9w@public.gmane.org>:
> On 07/07/2009 03:01 AM, Rafael J. Wysocki wrote:
>>
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.30. =C2=A0Please verify if it still should be listed and le=
t me know
>> (either way).
>>
>>
>> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug=
=2Ecgi?id=3D13727
>> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Cannot Recognize Empty DVD Med=
ia
>> Submitter =C2=A0 =C2=A0 =C2=A0 : Tarkan Erimer<tarkan.erimer@turknet=
=2Enet.tr>
>> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-07-02 16:23 (5 =
days old)
>> References =C2=A0 =C2=A0 =C2=A0: http://lkml.org/lkml/2009/7/2/178
>>
>>
>>
>
> I confirm that, as of Linux-2.6.31-rc3, it's fixed.

I also confirm, that -rc3 works OK.

Thanks
--=20
Maciej Rutecki
http://www.maciek.unixy.pl
