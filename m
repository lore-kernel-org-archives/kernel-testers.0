From: Alejandro Riveira =?UTF-8?B?RmVybsOhbmRleg==?= 
	<ariveira-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13362] [mac80211 ] Wifi Network Slownes Bisected
Date: Sun, 31 May 2009 00:39:41 +0200
Message-ID: <20090531003941.4891c859@varda>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
	<LEcEO2518_I.A.9zD.8IbIKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type:content-transfer-encoding;
        bh=m++wBCSDlv5Vz23Fapcv8E6luW1TGg+Y77xpSiaghUo=;
        b=IwE/d+caNkxcQWXKrleJ8CVMAb0wqHdpXBkeyVd+JTPEBKvl/qY1VLy77JESX5A3Ie
         H/th/PIEEzCiBukJ69zo8lOFSkgw44nwtLDgkyJ0CDzX3bZscD7rxDqfcQF8zvJ8Gpqv
         XnmB74a20fpCji/3HzZef9Aam8OwNDadMD/w4=
In-Reply-To: <LEcEO2518_I.A.9zD.8IbIKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Wright <chrisw-69jw2NvuJkxg9hUCZPvPmw@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

El Sat, 30 May 2009 21:37:34 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> escribi=C3=B3:

> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me k=
now
> (either way).

 It should be listed.

>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13362
> Subject		: [mac80211 ] Wifi Network Slownes Bisected
> Submitter	: Alejandro Riveira <ariveira-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-05-22 13:32 (9 days old)
>=20
>=20
