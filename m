From: Peter =?iso-8859-1?q?H=FCwe?= <PeterHuewe-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: Oops after unloading staging/panel/panel.ko
Date: Wed, 7 Jul 2010 04:50:49 +0200
Message-ID: <201007070450.49479.PeterHuewe@gmx.de>
References: <201007070313.38814.PeterHuewe@gmx.de> <201007070338.50023.PeterHuewe@gmx.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201007070338.50023.PeterHuewe-Mmb7MZpHnFY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: devel-tBiZLqfeLfOHmIFyCCdPziST3g8Odh+X@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>, Willy Tarreau <w@1wt.eu>

Am Mittwoch 07 Juli 2010 03:38:49 schrieb Peter H=FCwe:
> Here is another oops trace caused by the same problem.

I think I've tracked it down.

parport_release and parport_unregister_device get called twice while un=
loading=20
the module - after the first call the handle isn't valid anymore and th=
us=20
causes the oops.

I'll send a patch soon.

Peter
