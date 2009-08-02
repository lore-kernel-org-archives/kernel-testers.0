From: Alejandro Riveira =?UTF-8?B?RmVybsOhbmRleg==?= 
	<ariveira-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13362] rt2x00: slow wifi with correct basic rate bitmap
Date: Sun, 2 Aug 2009 15:45:46 +0200
Message-ID: <20090802154546.55418e52@varda>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera>
	<H5-1lZIIeYK.A.cJ.jYObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=HRHHXjPmHQQjF30wyRsjX4T1pKrOfmI4B+kHUZCx/Z0=;
        b=L3xdIcjwKmgYzbd8Ypy/TcbJsArW/QklYaZIQZYlanNB6D6159hiR6+DVgqwSlDIoP
         wLNXISPIxuSny13/p5w5F7KHUJ5tsfD68/DOyHMiKJX+cNSr0YmxQ6lShmV0NzaVidiM
         WhtO3b1WTkNXi91U/Iy4B4uhTpDdvcOi/CkhU=
In-Reply-To: <H5-1lZIIeYK.A.cJ.jYObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Wright <chrisw-69jw2NvuJkxg9hUCZPvPmw@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

El Sun, 26 Jul 2009 22:45:27 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> escribi=C3=B3:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still shou=
ld
> be listed and let me know (either way).

 Sorry for the delay i did not have the time to test 2.6.31-rc* until n=
ow.
Tried 2.6.31-rc5 the problem persist. The revert still fixes the issue;=
 so
the bug should be still present.

>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13362
> Subject		: rt2x00: slow wifi with correct basic rate bitmap
> Submitter	: Alejandro Riveira <ariveira-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-05-22 13:32 (66 days old)
>=20
>=20

Thanks;
Alejandro
