From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15096] Resume lock up -- bisected, commit 
	3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Mon, 8 Feb 2010 20:31:09 +0100
Message-ID: <b170af451002081131w6f1e185epc4e0c13323b75934@mail.gmail.com>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera> <201002081156.24020.rjw@sisk.pl>
	 <b170af451002080349x4fb955b2wb9d0bdf6e6e03d0e@mail.gmail.com>
	 <201002082024.32483.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=6/lmvkjFVuojTt+R20AjffI4J+m4rFVJzSCbZEQzyRk=;
        b=jTyWHHKMI17/b50aRzPgj9/1unpSdgBYFSezkQY64YUrJ5DhSQ9qZq8/Usp5MBGTBf
         7NPCKZWjgxns2pDcpdRNO3d/0SAmsk0DZciaMkoBWBFFkNWZAWlAHn6fSmtvNfWSDiqI
         /zOF7B6Kv6XV37dsu4cfFzUPPv7TvfPJzzoLA=
In-Reply-To: <201002082024.32483.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

W dniu 8 lutego 2010 20:24 u=C5=BCytkownik Rafael J. Wysocki <rjw@sisk.=
pl> napisa=C5=82:
> On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
>> W dniu 8 lutego 2010 11:56 u=C5=BCytkownik Rafael J. Wysocki <rjw@si=
sk.pl> napisa=C5=82:
>> > On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
>> >> 2010/2/8 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
>> >> > This message has been generated automatically as a part of a re=
port
>> >> > of regressions introduced between 2.6.31 and 2.6.32.
>> >> >
>> >> > The following bug entry is on the current list of known regress=
ions
>> >> > introduced between 2.6.31 and 2.6.32. =C2=A0Please verify if it=
 still should
>> >> > be listed and let the tracking team know (either way).
>> >> >
>> >> >
>> >> > Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/sho=
w_bug.cgi?id=3D15096
>> >> > Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Resume lock up -- bisecte=
d, commit 3a1151e3f124fd1a2c54b8153f510f1a7c715369
>> >> > Submitter =C2=A0 =C2=A0 =C2=A0 : Rafa=C5=82 Mi=C5=82ecki <zajec=
5@gmail.com>
>> >> > Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-20 23:1=
5 (19 days old)
>> >> > First-Bad-Commit: http://git.kernel.org/git/linus/3a1151e3f124f=
d1a2c54b8153f510f1a7c715369
>> >
>> > It looks like we should revert this commit, seems broken.
>> >
>> > Anyway, I'll do my best to have a look at this bug later today.
>>
>> In such case I'd prefer to add "broken_DOS" flag for devices that we=
re
>> enabled by this patch. We could avoid restoring backlight on resume
>> for broken_DOS then and maybe just update brightness to current valu=
e.
>
> Or perhaps we can try to restore the backlight at a different place.

I wanted to find out what causes this lock up by syncing modules
resume or putting some delays. See bug report of my question.
Unfortunately didn't get answer.

--=20
Rafa=C5=82
