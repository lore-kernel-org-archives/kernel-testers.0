From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13950] Oops when USB Serial disconnected while in use
Date: Fri, 2 Oct 2009 23:26:33 +0200
Message-ID: <200910022326.33270.rjw@sisk.pl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.VqC.POTxKB@chimera> <20091002214550.6727df5c@neptune.home>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091002214550.6727df5c-hY15tx4IgV39zxVx7UNMDg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: Bruno =?utf-8?q?Pr=C3=A9mont?= <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>

On Friday 02 October 2009, Bruno Pr=C3=A9mont wrote:
> On Thu, 01 October 2009 "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.30 and 2.6.31.
> >=20
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still
> > should be listed and let me know (either way).
> >=20
> >=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13950
> > Subject	: Oops when USB Serial disconnected while in
> > use Submitter	: Bruno Pr=C3=A9mont <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>
> > Date		: 2009-08-08 17:47 (55 days old)
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D124975432900466=
&w=3D4
> > Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
>=20
> This has been adressed with following commits:
>   41bd34ddd7aa46dbc03b5bb33896e0fa8100fe7b
>   usb-serial: change referencing of port and serial structures
>=20
>   f5b0953a89fa3407fb293cc54ead7d8feec489e4
>   usb-serial: put subroutines in logical order
>=20
>   8bc2c1b2daf95029658868cb1427baea2da87139
>   usb-serial: change logic of serial lookups
>=20
>   cc56cd0157753c04a987888a2f793803df661a40
>   usb-serial: acquire references when a new tty is installed
>=20
>   7e29bb4b779f4f35385e6f21994758845bf14d23
>   usb-serial: fix termios initialization logic
>=20
>   74556123e034c8337b69a3ebac2f3a5fc0a97032
>   usb-serial: rename subroutines
>=20
>   ff8324df1187b7280e507c976777df76c73a1ef1
>   usb-serial: add missing tests and debug lines
>=20
>   320348c8d5c9b591282633ddb8959b42f7fc7a1c
>   usb-serial: straighten out serial_open
>=20
> They went into 2.6.32-rc1 and are probably queued for 2.6.31.2 stable=
=2E

Thanks a lot for the detailed info, bug closed.

Rafael
