From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Wed, 03 Jun 2009 23:25:15 +0200
Message-ID: <1244064315.22576.5.camel@johannes.local>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
	 <200906031116.05114.rjw@sisk.pl> <1244062874.22576.4.camel@johannes.local>
	 <200906032305.07551.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-lpuU9u7L+CoCht5DDRWe"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200906032305.07551.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-lpuU9u7L+CoCht5DDRWe
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

[can you please turn off html email?]


> Can you please send me /proc/interrupts from the affected box?

$ cat /proc/interrupts=20
            CPU0       CPU1      =20
   0:    1820687          0   IO-APIC-edge      timer
   7:          1          0   IO-APIC-edge   =20
   9:      38721          0   IO-APIC-fasteoi   acpi
  16:        940          0   IO-APIC-fasteoi   HDA Intel
  17:        517          0   IO-APIC-fasteoi   ohci_hcd:usb4
  18:     289829          0   IO-APIC-fasteoi   ohci_hcd:usb3
  19:    2035671          0   IO-APIC-fasteoi   ehci_hcd:usb2
  20:         32          0   IO-APIC-fasteoi   ehci_hcd:usb1
  25:     515569          0   PCI-MSI-edge      ahci
  26:          0          0   PCI-MSI-edge      eth0
 NMI:          0          0   Non-maskable interrupts
 LOC:     152936     638337   Local timer interrupts
 SPU:          0          0   Spurious interrupts
 RES:     317238     581858   Rescheduling interrupts
 CAL:         43        128   Function call interrupts
 TLB:      60645      53553   TLB shootdowns
 TRM:          0          0   Thermal event interrupts
 THR:          0          0   Threshold APIC interrupts
 ERR:          1
 MIS:          0

johannes

--=-lpuU9u7L+CoCht5DDRWe
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJKJuo4AAoJEODzc/N7+Qmatq0QAM8Cu2HS8Xg+YJdspCcejiVC
4xzY6zH+upZZr4eg9I03nhrbHODt0o5rAmKsBv3M4Iy1NlM9KoTQIdTia77a2t6S
r7/gtnPZ3e4SiTTiTfDou4WDjwXaMLM80MYAhGs5EFtQDjpiGicpWOn21eyIcmun
f8bypCpCix8FyhZ9yXMrvwse4dLSWig2kxyE8WgsDoNy5/MiMNdyk/oP6MEFJeTE
osCN0H89IHwTHmWCkTWMyICxBzA5zaU7QpKBabWCmAlpbo0d9FPiRyBfjXCthur+
m3EoRVyVlrb5xEhtj1k/4O+3oT2sOcXVV9TTry1NsmMcCxaLcMG/99VaDP7gLKoW
Bi52tgxYVyL0CPFB4lwdhLiyHDk6TKr2soUPBfBgaw5KzcTyK9T5pjFkkUls4007
vYU8J7H2PMZa6Vfyq6N0gfCO+JWJkKP7TEcscUoFvlf0hZsinZeC+OvxckcGXzfv
uuQDVQjEX+6qXbI1PmdaZsCp/b+Hw2lmWh4H4o82c+gZaXP+PfF0bDi4a0hSoGsw
qRcfMquOYD3ht4TQnlkLddBbwZwJ1BnJpBXAmrQhG0P7T7KVSx3I+TjSLe05+G5q
xwzEj+PJEpyXDokA+2buHlp4YZ7s2/OtWSBfb7rr0rl0w7NTpFPdogbcaKjMjn1+
ZdkTbecWEUuJ+MSbCa2p
=lINr
-----END PGP SIGNATURE-----

--=-lpuU9u7L+CoCht5DDRWe--
