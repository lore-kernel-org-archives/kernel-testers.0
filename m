From: Arkadiusz Miskiewicz <a.miskiewicz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: R: [Bug #14886] Asus P2B-DS not detected as SMP moterboard
Date: Wed, 27 Jan 2010 07:21:33 +0100
Message-ID: <201001270721.55739.a.miskiewicz@gmail.com>
References: <5550914.425471263201351807.JavaMail.defaultUser@defaultHost> <20100126155330.GA4231@rainbow> <20100127113520.596bd07c@feng-i7>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:message-id;
        bh=NUSBGYJFJeiVLD5Po4zqoOTD+3Kir34o94sh3+bOxJI=;
        b=GX60lJgGz8ZwGtryag7lawoUOjHekPpDdtC+YkFoTF+Dg+1ZVjGiRsnu+/mZuiwF+1
         lKQuacC3p3MI+zhviQc6xXtxZnlmizEaEwEN6LsaPxlIw3Y/scjJAprWfCa+xnNLXrIV
         ZhDjntNcTCUjAOGkcLQ0B2XmFJNYLdG2abXlM=
In-Reply-To: <20100127113520.596bd07c@feng-i7>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="macroman"
To: Feng Tang <feng.tang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Dmitry Artamonow <mad_soft-aPYA7nAdAYY@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "flinco-VGgt2q2+T+FeoWH0uzbU5w@public.gmane.org" <flinco-VGgt2q2+T+FeoWH0uzbU5w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Brown, Len" <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Wednesday 27 of January 2010, Feng Tang wrote:
> On Tue, 26 Jan 2010 23:53:30 +0800
>=20
> Dmitry Artamonow <mad_soft-aPYA7nAdAYY@public.gmane.org> wrote:
> > Hi!
> > I'm also using P2B-DS and can confirm that starting with kernel 2.6=
=2E32
> > SMP stopped working (and don't work still - tested with current git
> > v2.6.33-rc5-238-g158c168) The issue seems to have something to do
> > with the fact that ACPI is blacklisted on P2B-DS. I used to
> > workaround this bug on newer kernels (>=3D2.6.32) by passing
> > "acpi=3Dforce" in kernel arguments. Finally, yesterday I found some
> > time to write simple automated bisection script and leaved it to ru=
n
> > on machine overnight. Here's result:
> > -------------------------------------------------------------------=
------
> > -- e5b8fc6ac158f65598f58dba2c0d52ba3b412f52 is the first bad commit
> > commit e5b8fc6ac158f65598f58dba2c0d52ba3b412f52 Author: Len Brown
> > <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org> Date:   Tue Jul 7 23:22:58 2009 -0400
> >=20
> >     ACPI: check acpi_disabled in acpi_table_parse() and
> >=20
> > acpi_table_parse_entries()
> >=20
> >     Allow consumers of the
> >=20
> > acpi_table_parse()/acpi_table_parse_entries() API to gracefully
> > handle the acpi_disabled=3D1 case via return value rather than chec=
king
> > the global flag themselves.
> >=20
> >     Signed-off-by: Feng Tang <feng.tang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> >     Signed-off-by: Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> >=20
> > -------------------------------------------------------------------=
------
> > --
>=20
> Hi Dmitry,
>=20
> That commit is
> diff --git a/drivers/acpi/tables.c b/drivers/acpi/tables.c
> index 646d39c..f336bca 100644
> --- a/drivers/acpi/tables.c
> +++ b/drivers/acpi/tables.c
> @@ -213,6 +213,9 @@ acpi_table_parse_entries(char *id,
>         unsigned long table_end;
>         acpi_size tbl_size;
>=20
> +       if (acpi_disabled)
> +               return -ENODEV;
> +
>         if (!handler)
>                 return -EINVAL;
>=20
> @@ -277,6 +280,9 @@ int __init acpi_table_parse(char *id,
> acpi_table_handler handler) struct acpi_table_header *table =3D NULL;
>         acpi_size tbl_size;
>=20
> +       if (acpi_disabled)
> +               return -ENODEV;
> +
>         if (!handler)
>                 return -EINVAL;
>=20
> Which only enforces the "acpi_disabled" check and should have no
> logical problem.
>=20
> And I guess your platform is blacklisted and acpi_disabled is set to =
1,
> while it still need parse ACPI tables to get SMP info. So I would sug=
gest
> to add a "acpi=3Dforce" for your case.

Is there a force ht-only option? acpi=3Dht doesn't work.

> Thanks,
> Feng


--=20
Arkadiusz Mi=C5=9Bkiewicz        PLD/Linux Team
arekm / maven.pl            http://ftp.pld-linux.org/
