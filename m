From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: 2.6.27-rc5-git2: Reported regressions from 2.6.26
Date: Sat, 30 Aug 2008 14:32:56 -0700 (PDT)
Message-ID: <20080830.143256.62760515.davem@davemloft.net>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

=46rom: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Date: Sat, 30 Aug 2008 21:46:30 +0200 (CEST)

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11409
> Subject		: build issue #564 for v2.6.27-rc4 : undefined reference to =
`NS8390p_init'
> Submitter	: Toralf F=F6rster <toralf.foerster-Mmb7MZpHnFY@public.gmane.org>
> Date		: 2008-08-22 8:33 (9 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D121939410214677&w=
=3D4
> Handled-By	: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
> Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121943097320451&w=3D4

Should be fixed by:

commit d3d7b53d1ae46534cd73e1073a5c29e3b61a0552
Author: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Date:   Fri Aug 22 19:24:15 2008 +0100

    [netdrvr] fix build issue: undefined reference to `NS8390p_init'
   =20
    Signed-off-by: Alan 'pass the paper bags' Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
    Signed-off-by: Jeff Garzik <jgarzik-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
