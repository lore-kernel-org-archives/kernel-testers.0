From: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
Subject: Re: [Bug #13371] s2disk hangs with kernel 2.6.29 and later, SATA,
	Gigabyte EG45M-DS2H
Date: Mon, 25 May 2009 19:13:05 +0200
Message-ID: <20090525171305.GA5855@arbonne.lan>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <200905251448.40907.bzolnier@gmail.com> <20090525134522.GA7805@arbonne.lan> <200905251630.21781.bzolnier@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200905251630.21781.bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, May 25, 2009 at 04:30:21PM +0200, Bartlomiej Zolnierkiewicz wro=
te:
> Hmm, we added ACPI NVS memory handling there and some machines seem
> to have trouble with it.  I think it would be worth to check it first=
=2E
>=20
> Richard, could you try s2disk on some recent 2.6.30-rc kernel while
> booting using "acpi_sleep=3Ds4_nonvs"?

I just tried that with 2.6.30-rc7, unfortunately it doesn't make any=20
difference.

It turns out that if I wait long enough (just over 1 minute) both durin=
g=20
suspend and resume, I *am* able to suspend and resume the machine. I ha=
ve=20
to manually turn it off or reset it though.

Another possibly interesting observation: My DVD writer apparently gets=
=20
reset before the 1-minute hang and my USB hub after the hang.

Cheers,

  Richard

--=20
  __   _
  |_) /|  Richard Atterer
  | \/=AF|  http://atterer.net
  =AF '` =AF
