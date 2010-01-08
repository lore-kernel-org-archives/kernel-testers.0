From: Andrew Watts <akwatts-DaQTI0RpDDMAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14742] 2.6.32 new menu idle governor causes very high CPU temp
Date: Fri, 8 Jan 2010 07:53:02 -0800 (PST)
Message-ID: <689201.38382.qm@web111005.mail.gq1.yahoo.com>
References: <srmJ8vMxKPH.A.mAD.CxhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024; t=1262965982; bh=lCEUYatrrgzsYvXzNjG0PA8d47pcrHnfGomav16xHKY=; h=Message-ID:X-YMail-OSG:Received:X-Mailer:Date:From:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding; b=irL/PLFwhvP5ykgLOrDieWt0bJ4HWJ1T4WCi5oHa88uaWg85/glFV5Tyod2jhrelr/78VaMvKtPKoCka6UqaTcXEtan/MHGilKPK62xuNFnhiqzCniDTt3H06sblRiMFL61ycvse1KWDOZFhUYPWc2l6kbEozT3U/CJuAJB+QEQ=
In-Reply-To: <srmJ8vMxKPH.A.mAD.CxhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, akwatts-DaQTI0RpDDMAvxtiuMwx3w@public.gmane.org

All:

Though there has been no activity on this bug since my last comment on =
12/7/09, the issue remains unresolved. I have confirmed that the proble=
m occurs only on linux using the new menu idle governor code (69d25870f=
20c4b2563304f2b79c5300dd60a067e) . The HW performs perfectly well eithe=
r: (a) in linux with the old idle governor code or (b) under windows XP=
=2E

~Andy

--- On Tue, 12/29/09, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> Subject: [Bug #14742] 2.6.32 new menu idle governor causes very high =
CPU temp
> To: "Linux Kernel Mailing List" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
> Cc: "Kernel Testers List" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, akwatts@y=
mail.com, "Arjan van de Ven" <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> Date: Tuesday, December 29, 2009, 3:28 PM
> This message has been generated
> automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>=20
> The following bug entry is on the current list of known
> regressions
> introduced between 2.6.31 and 2.6.32.=A0 Please verify
> if it still should
> be listed and let me know (either way).
>=20
>=20
> Bug-Entry=A0=A0=A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D147=
42
> Subject=A0=A0=A0 =A0=A0=A0 : 2.6.32 new
> menu idle governor causes very high CPU temp
> Submitter=A0=A0=A0 :=A0 <akwatts-DaQTI0RpDDMAvxtiuMwx3w@public.gmane.org>
> Date=A0=A0=A0 =A0=A0=A0 : 2009-12-05
> 17:24 (25 days old)
>=20
>=20
>=20


     =20
