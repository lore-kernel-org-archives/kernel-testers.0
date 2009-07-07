From: Alejandro Riveira =?UTF-8?B?RmVybsOhbmRleg==?= 
	<ariveira-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13362] rt2x00: slow wifi with correct basic rate bitmap
Date: Tue, 7 Jul 2009 12:06:51 +0200
Message-ID: <20090707120651.063e1b1a@varda>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera>
	<bXZeuxPQAWE.A.Nd.YBpUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=S96p8PA34ygB7J85OjfdGBLgLBsyraKRlLjyAzZ6eJI=;
        b=lRkHYEg1OFVPDyoVJzXNuuHD9p1w3S7zQg0ayQVG9Hpxq+37B/Hhc9DGetDIuqCBZM
         PT8heOa2lK3aH0zbp+8kbx25j2sf40p3xU7/kAcJUhxT5yrUQbXmdVgr5kpDFQag+tn+
         YAbD2s79Gtyeer9WxEcoM6VO7fA60OnEdrrGo=
In-Reply-To: <bXZeuxPQAWE.A.Nd.YBpUKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Wright <chrisw-69jw2NvuJkxg9hUCZPvPmw@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

El Tue,  7 Jul 2009 02:00:38 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> escribi=C3=B3:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still shou=
ld
> be listed and let me know (either way).
>=20

 It should be still listed 2.6.30.1 does not fix it. still not tried
2.6.31-rc* though.

>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13362
> Subject		: rt2x00: slow wifi with correct basic rate bitmap
> Submitter	: Alejandro Riveira <ariveira-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-05-22 13:32 (46 days old)
>=20
>=20
