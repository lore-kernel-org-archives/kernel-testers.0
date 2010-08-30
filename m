From: Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #17041] 2.6.36-rc1 hangs during XFS barrier test for /
Date: Mon, 30 Aug 2010 06:36:47 +0200
Message-ID: <AANLkTikzDgHsPsUQMdb87R8dG61CBBekxBfhbuguLEPX@mail.gmail.com>
References: <4LwrqITm-eJ.A.r8G.eFueMB@chimera>
	<4AUWBNzTkbD.A.FI.7FueMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=eXakFY0IZeF7WyWoLf/djKW64/cfiVpqXkPh53gGRw8=;
        b=g3E9tvuhaqTxgdEol6tm8CKTCWbh02hQk+wvJx2NNg/hG9yZoFxgHkaX9LQCf8yUXH
         FLI/t6sxPy8pImRf2VUNZjNRzijJ052fampRxpdvCBQo1znBArQkjWAdhJV1Zn8afDwU
         7Bod7x6COtPJLCEyPFltHi+Ko2fk3iIsihde0=
In-Reply-To: <4AUWBNzTkbD.A.FI.7FueMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, Aug 30, 2010 at 12:36 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.35. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
17041
> Subject =A0 =A0 =A0 =A0 : 2.6.36-rc1 hangs during XFS barrier test fo=
r /
> Submitter =A0 =A0 =A0 : Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-08-20 (10 days old)
> Message-ID =A0 =A0 =A0: <AANLkTim1PXibiY98GUdMj-UZLTav+n7GAnJ0Mjn6_5a=
3@mail.gmail.com>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D128231=
691708710&w=3D2

As noted in comment #1 in this Bug, this was the same Bug as
http://marc.info/?l=3Dlinux-kernel&m=3D128208298507451&w=3D2
It is fixed as of 2.6.36-rc2.

You can close this Bug as fixed.

Thanks, Torsten
