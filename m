From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk-X3B1VOXEql0@public.gmane.org>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Thu, 13 Aug 2009 11:52:20 +0300
Message-ID: <11fae7c70908130152j21f9f183m4f1c49d91fc7a7f9@mail.gmail.com>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera>
	 <u1L1PAbl8zG.A.UBD.ej1fKB@chimera>
Reply-To: q-funk-X3B1VOXEql0@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=uMmJdumkM/llo2wF7N/vrOzkFRdhlBg/lIRL5Zta3Ns=;
        b=g7Ffo2RKFiJ+Up6M7FNrRHwC6v+0MFBhl5UivtuWfqehN2TyS2pHdVBk/uUNL9eocQ
         en4i9Xw6hBh+uhZ/oD2KWrfY4jkFaAee8vXngIiLDzj+uDH1zm79cYQBG0gcoVTb5Kyy
         O1ZDQXKhK/MXVHV5LB3ErHHMLm5ldwrB6f6tk=
In-Reply-To: <u1L1PAbl8zG.A.UBD.ej1fKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Yes, this bug is still valid.

Ubuntu kernel team member Leann Ogasawara and I are slowly bisecting
our way through the changes that took place since 2.6.30 to find the
commit that introduced this regression. Please stay tuned.

On Mon, Aug 10, 2009 at 12:10 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D13941
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : x86 Geode issue
> Submitter =C2=A0 =C2=A0 =C2=A0 : Martin-=C3=89ric Racine <q-funk@iki.=
fi>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-08-03 12:58 (7 d=
ays old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D124930434732481&w=3D4
>
>
>
