From: Alejandro Riveira =?UTF-8?B?RmVybsOhbmRleg==?= 
	<ariveira-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13362] rt2x00: slow wifi with correct basic rate bitmap
Date: Tue, 30 Jun 2009 20:37:54 +0200
Message-ID: <20090630203754.3b7bec39@varda>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	<5Hhc7UkUKEO.A.E1G.bkASKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=q0pFUiSDb6hrmyjGXA2ENLTwCWfdM7EPHBEvWPP9Tss=;
        b=qbjSHBCb8Jng1+NeixKcS93Gye2HsrZuxs4+1GbqjWbrDUpoYo4+3OGT3Hx4xgXkeS
         1s2t4tTZ/ipuEsBnwGfTNn8VRCkQ7Yq7KygLyKMnRWf/ApwR45yMqBEIxUYWVLTPV5TO
         NJMXR57iWhFoHCyqnAXvh9MER4BDrdNfN1rnE=
In-Reply-To: <5Hhc7UkUKEO.A.E1G.bkASKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Wright <chrisw-69jw2NvuJkxg9hUCZPvPmw@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

El Mon, 29 Jun 2009 02:30:55 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> escribi=C3=B3:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still shou=
ld
> be listed and let me know (either way).

 There is no 2.6.30.1 to see if it has been fixed and i have not tested
2.6.31-rc1 (too early for me) so i think it should be still listed

>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13362
> Subject		: rt2x00: slow wifi with correct basic rate bitmap
> Submitter	: Alejandro Riveira <ariveira-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-05-22 13:32 (38 days old)
>=20
>=20
