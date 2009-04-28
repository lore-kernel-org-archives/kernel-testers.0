From: =?UTF-8?B?0JTQsNC90LjQu9CwINCW0YPQutC+0YbQutC40Lk=?= 
	<optimusgd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13001] PCI-DMA: Out of IOMMU space
Date: Tue, 28 Apr 2009 14:18:57 +0500
Message-ID: <db2b43030904280218v61fded68rc585ce9c58ba1cce@mail.gmail.com>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
	 <egHshlwQQFE.A.8CD.mpE9JB@chimera>
	 <20090428172845R.fujita.tomonori@lab.ntt.co.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=i7gBB0izmMGmVNkoEdPxXrdUqSA/KAE0+oFi1XBp3Z8=;
        b=iatDORl/E7jD89JBVwYCIRQKF/5WE6DNvMqjow+zaeLfXcT/OzdQMnK/WmFAUIraQQ
         qNe+kbhZ7zRPcF1TIyIsX+Pnl3qz7YCMrcampb0p5vZyEsqtxjuFHFjkpCI3uX+S7B7D
         WKdZDgATU4JfQ5JfMhNG1HzciGzlw58uZweTo=
In-Reply-To: <20090428172845R.fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, grundler-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org

No, it is regression. I can reproduce that without allowdac and any
other unnecessary boot options. In later discussion Grant Grundler ask
me apply patch that show 32 bit dma devices in my system. Results I
attached to bugreport. Looks like only one 32 bit dma device in my
system is ata controller, sata-nv. I can stable reproduce IOMMU out of
space when I write data to sata drive.

2009/4/28 FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>:
> On Sun, 26 Apr 2009 11:46:28 +0200 (CEST)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.28 and 2.6.29.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.28 and 2.6.29. =C2=A0Please verify if it stil=
l should
>> be listed and let me know (either way).
>>
>>
>> Bug-Entry =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.cgi?id=
=3D13001
>> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : PCI-DMA: =
Out of IOMMU space
>> Submitter =C2=A0 =C2=A0 : =C2=A0<optimusgd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-04-03 09:30 (24 days o=
ld)
>
> Probably, this is not a regression.
>
> He doesn't hit this problem with 2.6.29 when he uses the kernel boot
> option that he used with 2.6.28. I have no idea how not using
> 'allowdac' can solve the problem though.
>



--=20
=D0=A1 =D1=83=D0=B2=D0=B0=D0=B6=D0=B5=D0=BD=D0=B8=D0=B5=D0=BC =D0=94=D0=
=B0=D0=BD=D0=B8=D0=BB=D0=B0 =D0=96=D1=83=D0=BA=D0=BE=D1=86=D0=BA=D0=B8=D0=
=B9, =D1=81=D0=B8=D1=81=D1=82=D0=B5=D0=BC=D0=BD=D1=8B=D0=B9 =D0=B0=D0=B4=
=D0=BC=D0=B8=D0=BD=D0=B8=D1=81=D1=82=D1=80=D0=B0=D1=82=D0=BE=D1=80 =D0=97=
=D0=90=D0=9E "=D0=A0=D0=BE=D1=81=D0=BD=D0=B5=D1=84=D1=82=D0=B5=D0=B3=D0=
=B0=D0=B7=D0=BC=D0=B0=D1=88"
