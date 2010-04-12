From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #15719] virtio_net causing kernel BUG when running under
 VirtualBox
Date: Mon, 12 Apr 2010 02:28:28 -0700 (PDT)
Message-ID: <20100412.022828.52192543.davem@davemloft.net>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera>
	<JVS2s9dmTsP.A.6eF.xsPvLB@chimera>
	<4BC2DC5A.6090007@mathtm.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4BC2DC5A.6090007-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: thomas-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org, mashirle-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org, xma-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org

=46rom: Thomas M=FCller <thomas-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>
Date: Mon, 12 Apr 2010 10:39:54 +0200

> Hi,
>=20
> a fix (commit 2c45cd43ff791cc4ab6a6332165ad53d7bcb3673) is included i=
n
> linux-next and net-next, but not (yet?) in linux-2.6.

This bug was only present in -next and net-next-2.6 to the best of
my knowledge, so the fix only showing up there is appropriate.
