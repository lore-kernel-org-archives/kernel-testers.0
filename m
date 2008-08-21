From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11313] Plugging HDMI causes "unable to handle kernel paging request"
Date: Thu, 21 Aug 2008 20:34:37 +0200
Message-ID: <200808212034.38792.rjw@sisk.pl>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik> <b170af450808201327q48b5b2e0n319c89b0fc1759b6@mail.gmail.com> <48ADB041.9040806@goop.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48ADB041.9040806-TSDbQ3PG+2Y@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>
Cc: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, Hugh Dickens <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>

On Thursday, 21 of August 2008, Jeremy Fitzhardinge wrote:
> Rafa=C5=82 Mi=C5=82ecki wrote:
> > I added full dmesg 5 minutes after adding grepped:
> > http://bugzilla.kernel.org/attachment.cgi?id=3D17331
> >  =20
>=20
> OK, I think I see the problem (pasted from bugzilla comment):
>=20
> >>>>
> Some notes as I pick through all the evidence so far:
>=20
> - the crash is specifically because there are reserved bits set in th=
e pmd
> - the pmd is b02a00043a6001a3 in both cases
> - the vaddr is ffff88013a600000 in the first crash, and
>                ffff81013a6d1c00 in the second
>   corresponding to the same large-page pmd mapping of phys page 0x13a=
600000
> - this maps to e820 entry
>  BIOS-e820: 0000000100000000 - 0000000140000000 (usable)
> - the corresponding boot-time mapping is
>=20
> init_memory_mapping
>  0100000000 - 0140000000 page 2M
> kernel direct mapping tables up to 140000000 @ b000-11000
>                                                ^^^^^^^^^^
> addr 100000000 reusing pgd 201880 0000000000202063
> last_map_addr: 140000000 end: 140000000
>=20
> !!! and the memory allocated for this pagetable is:
>   #5 [0000008000 - 000000b000]          PGTABLE =3D=3D> [0000008000 -=
 000000b000]
>   #6 [000000b000 - 000000c000]          PGTABLE =3D=3D> [000000b000 -=
 000000c000]
>                                                      ^^^^^^^^^^^^^^^^=
^^^^^^^
>=20
> IOW, it's mapping using b000-11000, but it has only reserved b000 - c=
000
>=20
> Also, this is right in the middle of the ISA area, which seems risky.
> <<<<
>=20
> Bug #11237 shows the same symptom, so I'm pretty confident they're du=
ps now.

I have marked #11313 as a duplicate of #11237.  Please use the latter o=
ne from
now on.

Thanks,
Rafael
