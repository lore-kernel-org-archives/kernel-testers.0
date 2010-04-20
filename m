From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15719] virtio_net causing kernel BUG when running under VirtualBox
Date: Tue, 20 Apr 2010 05:19:23 +0200 (CEST)
Message-ID: <YeFfFNFyTSF.A.sRH.jRSzLB@tosh>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Shirley Ma <mashirle-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>, Shirley Ma <xma-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>, =?utf-8?q?Thomas=20M=C3=BCller?= <thomas-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>

This message has been generated automatically as a part of a summary re=
port
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.33.  Please verify if it still should be listed and let the tr=
acking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15719
Subject		: virtio_net causing kernel BUG when running under VirtualBox
Submitter	: Thomas M=C3=BCller <thomas-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>
Date		: 2010-03-27 14:32 (24 days old)
=46irst-Bad-Commit: http://kernel.org/git/linus/9ab86bbcf8be755256f0a5e=
994e0b38af6b4d399
Message-ID	: <4BAE1707.2050803-5bHTHlrcoh6zQB+pC5nmwQ@public.gmane.org>
References	: http://marc.info/?l=3Dlinux-kernel&m=3D126970039227740&w=3D=
4
Handled-By	: Shirley Ma <mashirle-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>

