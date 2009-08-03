From: =?ISO-8859-1?Q?Fr=E9d=E9ric_Weisbecker?= <fweisbec@gmail.com>
Subject: Re: [Bug #13813] Hangups in n_tty_read()
Date: Mon, 3 Aug 2009 03:15:10 +0200
Message-ID: <c62985530908021815s547ac3aavb0d7a70c683ae79b@mail.gmail.com>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera>
	 <iZB3Pj-uj3M.A.xaD.RdgdKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754070AbZHCBP2@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=mdoT9sGB7he+sHPbmJ+lJgtGrSiA18LmiBc1uVxYnyo=;
        b=m7YnfjFa7Xf/oXlN/53prqWLCh7clvBfb56Bx4uEccX4Ir7Fb2fHUIZWbpxxL1RNsg
         83AuV863LpZHaK1VH6RXO3Cvw5JliKiU9flYxhDn4ahgjw5j9xz2J1TeX8ZqfyW72gRI
         YvypDsIbRn3u7qjQUQNxppc7tsJvZGiybuo/I=
In-Reply-To: <iZB3Pj-uj3M.A.xaD.RdgdKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Johannes Weiner <hannes@cmpxchg.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alan Cox <alan@lxorguk.ukuu.org.uk>, "Rafael J. Wysocki" <rjw@sisk.pl>

2009/8/2 Rafael J. Wysocki <rjw@sisk.pl>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13813
> Subject =A0 =A0 =A0 =A0 : Hangups in n_tty_read()
> Submitter =A0 =A0 =A0 : Johannes Weiner <hannes@cmpxchg.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-07-16 18:48 (18 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124777=
019920579&w=3D4


Johannes,

Does it still happen with latest mainline?
Also, could you send us your .config ?

Thanks,
=46rederic.


>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at =A0http://www.tux.org/lkml/
>
