From: Fabio Comolli <fabio.comolli@gmail.com>
Subject: Re: [Bug #13943] WARNING: at net/mac80211/mlme.c:2292 with ath5k
Date: Mon, 12 Oct 2009 09:24:02 +0200
Message-ID: <b637ec0b0910120024h463c78e5l67f646f262e0c13c@mail.gmail.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	 <L6tb-VyKHZK.A.n4E.T1l0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754532AbZJLHYl@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=gDKBcvFx+9a8i5g38ZhfnJHiLizMEl8Se+GWO0kqiGM=;
        b=kf7EgncgMCUePBC7Vqoq4m3ILgaDRSntGLBRIVYH3+daEZGZQjRpiJzuggbd73DTY+
         OYZ/QA8XzlDSRw8IJGAY6UWSrccn3VTcuy/DWg3/q11lfbyn+AUFUrnE/df6/I7fi8LA
         4e/DlYm1VeR8X5QC+jDui9yPka+5NYnihIM/0=
In-Reply-To: <L6tb-VyKHZK.A.n4E.T1l0KB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, "Luis R. Rodriguez" <mcgrof@gmail.com>

Actually I switched to -32rc so I can't test it anymore... Sorry. I
can confirm it for 2.6.31.1.

Regards,
=46abio

On Mon, Oct 12, 2009 at 1:01 AM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31. =C2=A0Please verify if it still=
 should
> be listed and let me know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D13943
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : WARNING: at net/mac80211/mlme.c=
:2292 with ath5k
> Submitter =C2=A0 =C2=A0 =C2=A0 : Fabio Comolli <fabio.comolli@gmail.c=
om>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-08-06 20:15 (67 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D124958978600600&w=3D4
>
>
>
