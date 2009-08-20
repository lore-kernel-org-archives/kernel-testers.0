From: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13943] WARNING: at net/mac80211/mlme.c:2292 with ath5k
Date: Thu, 20 Aug 2009 08:54:28 +0200
Message-ID: <b637ec0b0908192354o36e8c99qfff7718f26bdfd7b@mail.gmail.com>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera>
	 <ADSuNT6McuD.A.Kp._NIjKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Gk+bsyuaiJMuCxV+p3ID8i8U9RxSgxCYj7Cj6l6dERA=;
        b=Io94zo0FJsHd0AyhkwFEJwzQp6/JMLL10erqyzuZN089g6k+1SpT21+A6R+dQeFVkf
         0EAXXyTuooEh3sQ3d7a6bkyfDmtTbCp1Rfi7IqJUbqRq/XHLdcWDoMUH1XqIcuYbM+xg
         eCZQHKLRDF/JFbniTuc06UNWYnsgiVBsnlmyU=
In-Reply-To: <ADSuNT6McuD.A.Kp._NIjKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Luis R. Rodriguez" <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This bug is still present (also in wireless-testing).

On Wed, Aug 19, 2009 at 10:26 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
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
cgi?id=3D13943
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : WARNING: at net/mac80211/mlme.c=
:2292 with ath5k
> Submitter =C2=A0 =C2=A0 =C2=A0 : Fabio Comolli <fabio.comolli@gmail.c=
om>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-08-06 20:15 (14 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D124958978600600&w=3D4
>
>
>
