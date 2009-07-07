From: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Subject: Re: [Bug #13726] fio sync read 4k block size 35% regression
Date: Tue, 07 Jul 2009 14:06:42 +0800
Message-ID: <1246946802.2560.532.camel@ymzhang>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
	 <dWkuWjWDsSB.A.lME.S0oUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <dWkuWjWDsSB.A.lME.S0oUKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Tue, 2009-07-07 at 02:01 +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me k=
now
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13726
> Subject		: fio sync read 4k block size 35% regression
> Submitter	: Zhang, Yanmin <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
> Date		: 2009-07-01 11:25 (6 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3D51daa88ebd8e0d437289f589af29d4b39379ea76
> References	: http://lkml.org/lkml/2009/6/30/679
> Handled-By	: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
=46engguang,

I'm still working on it now. The new testing against 2.6.31-rc2 is ongo=
ing.
fio sync/mmap read has new behavior. I did collect some data. But sudde=
nly
with new created data, the fio_sync_read_4k regression disappeared, whi=
le
fio_mmap_read is still there. Originally, the testing and bisect were s=
table.
Let me check what happens firstly.

Just update.
=EF=BB=BF
How did you test your new readahead patches before sending to LKML?

Yanmin

