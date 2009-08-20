From: =?UTF-8?Q?Martin=2D=C3=89ric_Racine?= <q-funk@iki.fi>
Subject: Re: [Bug #13941] x86 Geode issue
Date: Thu, 20 Aug 2009 10:33:50 +0300
Message-ID: <11fae7c70908200033k7c28561eh28e1195ce4a692f8@mail.gmail.com>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera>
	 <ADSuNT6McuD.A.R0.COIjKB@chimera>
Reply-To: q-funk@iki.fi
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753964AbZHTHdw@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:reply-to:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=4tjJZs+1N87JDNMq047i/IP2B+chjv4lErdJQi3h9XM=;
        b=SrVAM9UlePKTXh+CqdRlZS5qZbghvlK+ITCePWuLEw1dYWzc0U4TJkPn3nafhM/CEA
         9OpPM6+rJOGLhDOp5pVDIiJqmQviLqY6tbXtLfiS4G0H9qIyNfi0Tucdpt1eKParqFin
         5ocCLIAKSsK1HtGo/J98vNwTulhGJ7PVjoY60=
In-Reply-To: <ADSuNT6McuD.A.R0.COIjKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Al Viro <viro@zeniv.linux.org.uk>

Yes, it's still valid.

Screenshots of the crash have been provided. Is anything else missing
for the LKML to be able to debug and fix this?

On Wed, Aug 19, 2009 at 11:26 PM, Rafael J. Wysocki<rjw@sisk.pl> wrote:
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
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-08-03 12:58 (17 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D124930434732481&w=3D4
>
>
>
