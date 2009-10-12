From: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14372] Wireless not working after suspend-resume
Date: Mon, 12 Oct 2009 20:48:54 +0200
Message-ID: <b637ec0b0910121148g34f46481n1d5d4edb67b0ac55@mail.gmail.com>
References: <zJ_pXHNwoHC.A.akB.Aal0KB@chimera>
	 <r-4Wjt4coy.A.TPD.dal0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=SCatXZ3/zy8Uk64XeVN9+pUDOF0zLGDFM6ZQ+8ECeoA=;
        b=ExudixBcOlR9rer0QFENNsSfBrF4U69419s2+mtGj/7mlZJk+J3Ds2fCWfkzKWTI4H
         dUYbaWYTehC7r2wjiu/DMTEjeysvml/FdYkfCBrJsDs53u8iJGCjNxuXDdCMghuNfzGN
         ybZAJx0HhEkTW9zoANV3/tgp/9i9r7qnd74Dc=
In-Reply-To: <r-4Wjt4coy.A.TPD.dal0KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Still present with -rc4.

Error is:

[  690.547660] wlan0: direct probe to AP 00:11:95:09:2c:e0 (try 1)
[  690.550064] wlan0: direct probe responded
[  690.550074] wlan0: authenticate with AP 00:11:95:09:2c:e0 (try 1)
[  690.551629] wlan0: authenticated
[  690.551663] wlan0: associate with AP 00:11:95:09:2c:e0 (try 1)
[  690.553289] wlan0: RX AssocResp from 00:11:95:09:2c:e0 (capab=3D0x45=
1
status=3D12 aid=3D1)
[  690.553298] wlan0: AP denied association (code=3D12)

rfkill-ing the device off and then on fixes the problem.

=46abio




On Mon, Oct 12, 2009 at 12:22 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D14372
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Wireless not working after susp=
end-resume
> Submitter =C2=A0 =C2=A0 =C2=A0 : Fabio Comolli <fabio.comolli@gmail.c=
om>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-10-03 15:36 (9 d=
ays old)
> References =C2=A0 =C2=A0 =C2=A0: http://lkml.org/lkml/2009/10/3/91
>
>
>
