From: Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>
Subject: Re: [Bug #28562] [BUG] usb problems in .38-rc3+
Date: Mon, 28 Mar 2011 07:10:52 -0400
Message-ID: <201103280710.53406.edt@aei.ca>
References: <lDYNS4ATQ-N.A._aD.9m5jNB@chimera> <20110327205727.3abd06b5@katamari> <201103280955.48254.oneukum@suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201103280955.48254.oneukum-l3A5Bk7waGM@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: Oliver Neukum <oneukum-l3A5Bk7waGM@public.gmane.org>
Cc: Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mikko Vinni <mmvinni-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Monday 28 March 2011 03:55:48 Oliver Neukum wrote:
> Am Montag, 28. M=E4rz 2011, 02:57:27 schrieb Chuck Ebbert:
> > On Sun, 27 Mar 2011 22:27:34 +0200 (CEST)
> > "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> >=20
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D28562
> > > Subject		: [BUG] usb problems in .38-rc3+
> > > Submitter	: Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>
> > > Date		: 2011-02-05 19:17 (51 days old)
> > > Message-ID	: <201102051417.58953.edt-Yad3+ZauZac@public.gmane.org>
> > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D1296933914176=
07&w=3D2
>=20
> Have you tested with USB autosuspend disabled?

Yes.  The problem is understood.  It can be bypassed by doing a 'hcicon=
fig -a', which
puts the device in a state where it works.  As far as I know its not fi=
xed yet.

See the thread: re "bluetooth disabled" and "[BUG] usb problems in .38-=
rc3+"

Thanks
Ed Tomlinson
