From: Jan Seiffert <kaffeemonster-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #36962] [Regression 2.6.39][nouveau][bisected?] leaving
 fullscreen XV "crashes" with KDE desktop effects enabled
Date: Mon, 13 Jun 2011 03:14:44 +0200
Message-ID: <BANLkTinhdxrttCpGBtCMOZDYJJhAR=1zQRnew3t2=SxUYCSiNA@mail.gmail.com>
References: <9NVbY1BZ_5D.A.2lE.jzS9NB@chimera>
	<kTLfM29CaqB.A.xtE.szS9NB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Mg+Mckg1/tWz/Q5thKGPFTA4CgeTvxOKxicaKybMmkA=;
        b=yIVdcV2O6G/6JzOR2ddvm7DFQS2scxBIChDvIzdCfk3AyqcD0UNRflyOqQnmxmP2Yp
         +apdFP3nYnI98/9EcZPxtvPTRp41RG23eW5WeSIzFMqB9D6LovILeV35Oq00aj/fWlXU
         EzpWxfoHI7RiACjb3jKYyduW0vptZmX2AHE4w=
In-Reply-To: <kTLfM29CaqB.A.xtE.szS9NB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

2011/6/12 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39. =C2=A0Please verify if it still=
 should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D36962
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : [Regression 2.6.39][nouveau][bi=
sected?] leaving fullscreen XV "crashes" with KDE desktop effects enabl=
ed
> Submitter =C2=A0 =C2=A0 =C2=A0 : Jan Seiffert <kaffeemonster@googlema=
il.com>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2011-05-25 2:32 (19 d=
ays old)
> Message-ID =C2=A0 =C2=A0 =C2=A0: <BANLkTimd6nvXTbn2hM+cKDNKFpxzsQLHog=
@mail.gmail.com>
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D130629073407685&w=3D2
>
>
>

Not resolved, so should still be listed.

Changes since last test:
KDE-Version +=3D 0.0.1 =3D=3D 4.6.3
Only changes color/form of visible corruption, does not change X11 hang

With 2.6.39.1, leaving fullscreen XV creates heavy corruption, closing
mplayer lets X11 hang. Machine still alive, can be remote rebooted,
this makes it to the logs:
[drm] nouveau 0000:01:00.0: PGRAPH - DATA_ERROR INVALID_VALUE
[drm] nouveau 0000:01:00.0: PGRAPH - DATA_ERROR
[drm] nouveau 0000:01:00.0: PGRAPH - ch 2 (0x0000aa0000) subc 3 class
0x5039 mthd 0x0224 data 0x21949000
[drm] nouveau 0000:01:00.0: VM: trapped read at 0x002000f000 on ch 2
[0x00000aa0] PFIFO/PFIFO_READ/SEMAPHORE reason: DMAOBJ_LIMIT
[drm] nouveau 0000:01:00.0: PGRAPH - ILLEGAL_MTHD
[drm] nouveau 0000:01:00.0: PGRAPH - ch 2 (0x0000aa0000) subc 3 class
0x5039 mthd 0x0800 data 0x00000000
=2E.. (and so on)

With 3.0.0-rc2+ (git from hour ago), leaving fullscreen XV creates
heavy corruption, closing mplayer lets X11 "half-hang" (unusable, but
could switch to console, this is new), any other draw (opening the
KDE.Menu) lets it totally hang, machine still alive, could be remote
rebooted, this makes it to the logs:
[drm] nouveau 0000:01:00.0: PGRAPH - DATA_ERROR BEGIN_END_ACTIVE
[drm] nouveau 0000:01:00.0: PGRAPH - DATA_ERROR
[drm] nouveau 0000:01:00.0: PGRAPH - ch 2 (0x0000aa0000) subc 5 class
0x8297 mthd 0x1360 data 0x00000001
[drm] nouveau 0000:01:00.0: VM: trapped write at 0x002000f004 on ch 2
[0x00000aa0] PFIFO/PFIFO_READ/SEMAPHORE reason: DMAOBJ_LIMIT
[drm] nouveau 0000:01:00.0: PGRAPH - DATA_ERROR BEGIN_END_ACTIVE
[drm] nouveau 0000:01:00.0: PGRAPH - DATA_ERROR
[drm] nouveau 0000:01:00.0: PGRAPH - ch 2 (0x0000aa0000) subc 5 class
0x8297 mthd 0x1340 data 0x00008006
[drm] nouveau 0000:01:00.0: PGRAPH - DATA_ERROR BEGIN_END_ACTIVE

Greetings
Jan
