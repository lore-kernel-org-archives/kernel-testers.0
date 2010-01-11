From: Clemens Fruhwirth <clemens-Yy/aLhJqNSaEi8DpZVb4nw@public.gmane.org>
Subject: Re: [linux-pm] 2.6.33-rc3-git3: Reported regressions 2.6.31 -> 2.6.32
Date: Mon, 11 Jan 2010 17:47:38 +0100
Message-ID: <2f83750a1001110847r2b65b433q2ff6f6714d42861a@mail.gmail.com>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
	 <Pine.LNX.4.44L0.1001111008080.2873-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.1001111008080.2873-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, Jan 11, 2010 at 4:15 PM, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>=
 wrote:
> On Sun, 10 Jan 2010, Rafael J. Wysocki wrote:
>
>> Bug-Entry =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.cgi?id=
=3D14841
>> Subject =C2=A0 =C2=A0 =C2=A0 : unable to enumerate USB device on por=
t X after suspend/resume
>> Submitter =C2=A0 =C2=A0 : Fruhwirth Clemens <clemens-Yy/aLhJqNSaEi8DpZVb4nw@public.gmane.org>
>> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-12-19 11:45 (23 days o=
ld)
>
> This bug has been resolved as WILL NOT FIX. =C2=A0It ended up having =
nothing
> to do with suspend or resume, it was caused by strange behavior in th=
e
> device hardware.

Should we track "automatic fallback to USB 1.1" as feature request?
You already said that this isn't easily possible with the way the USB
stack is structured at the moment (connect-centric-view instead of
port-centric-view). However, Windows does that fallback and I'm afraid
that this is the default device testing scenario.
--=20
=46ruhwirth Clemens http://clemens.endorphin.org
