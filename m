From: Borislav Petkov <bp@alien8.de>
Subject: Re: [Bug #16054] UML broken for CONFIG_SLAB
Date: Sun, 13 Jun 2010 18:07:57 +0200
Message-ID: <20100613160757.GB5623@liondog.tnic>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
 <YPGdyfWGvNK.A.KHH.75OFMB@chimera>
 <AANLkTikKQBrH6rvsj-6chzYqd8NUsmEQBGD2jvTvpJVf@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=alien8.de; s=alien8;
	t=1276445280; bh=eVhD/PNPQ5+MxWEvMe9aVuAmOmuvAeWxzDlj62uoxFo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:In-Reply-To; b=jws6bZri7dOk
	9xUUpztPnlT2m5pBP64dgzAJ0/RAs6fNOqWw9UQIr9t7vsNBB2dTk3Z6w/xzOy3+cI8
	N3xywMIyWrQKwwOE3zWnBeoR9K7Y5+VMH4NVC3qPeO7efUrXxcAtkRfvbgEtRakroy1
	EYLAhpKSBhiGaFVabo70QYw7I=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=alien8.de; s=alien8;
	t=1276445280; bh=eVhD/PNPQ5+MxWEvMe9aVuAmOmuvAeWxzDlj62uoxFo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Transfer-Encoding:In-Reply-To; b=jws6bZri7dOk
	9xUUpztPnlT2m5pBP64dgzAJ0/RAs6fNOqWw9UQIr9t7vsNBB2dTk3Z6w/xzOy3+cI8
	N3xywMIyWrQKwwOE3zWnBeoR9K7Y5+VMH4NVC3qPeO7efUrXxcAtkRfvbgEtRakroy1
	EYLAhpKSBhiGaFVabo70QYw7I=
Content-Disposition: inline
In-Reply-To: <AANLkTikKQBrH6rvsj-6chzYqd8NUsmEQBGD2jvTvpJVf@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Parag Warudkar <parag.lkml@gmail.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>

=46rom: Parag Warudkar <parag.lkml@gmail.com>
Date: Sun, Jun 13, 2010 at 11:35:34AM -0400

> On Sun, Jun 13, 2010 at 10:49 AM, Rafael J. Wysocki <rjw@sisk.pl> wro=
te:
> >
> >
> > Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bu=
g.cgi?id=3D16054
> > Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : UML broken for CONFIG_SLAB
> > Submitter =C2=A0 =C2=A0 =C2=A0 : Parag Warudkar <parag.lkml@gmail.c=
om>
> > Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-05-23 21:40 (2=
2 days old)
> > Message-ID =C2=A0 =C2=A0 =C2=A0: <alpine.DEB.2.00.1005231149100.605=
@parag-laptop>
> > References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel=
&m=3D127465083806617&w=3D2
>=20
> Borislav,
>=20
> I believe both of the issues I encountered that are part of this bug
> entry (missing/superfluous slab inclusion issues and cfq related boot
> crash due to popcnt/hweight stuff) have a known fix [1] but I am not
> sure if any of it actually landed in -git. Quick search through
> git.kernel.org log doesn't show anything relevant.

I don't know whether the SLAB issue is related but
the hweight fix is in -tip and hasn't gone mainline yet:
http://git.kernel.org/tip/055c47272b8f5679d08ccc57efea3cb4aaeb5fc6

--=20
Regards/Gruss,
    Boris.
