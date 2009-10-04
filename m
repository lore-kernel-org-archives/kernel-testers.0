From: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Subject: Re: [Bug #14256] kernel BUG at fs/ext3/super.c:435
Date: Sun, 4 Oct 2009 19:38:25 +0200
Message-ID: <19144.56721.786457.979953@pilspetsen.it.uu.se>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
	<COE24pZSBH.A.ot.9MTxKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <COE24pZSBH.A.ot.9MTxKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>

Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14256
> Subject		: kernel BUG at fs/ext3/super.c:435
> Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> Date		: 2009-09-21 7:29 (11 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D125351816109264&w=3D4

The exact same bug (same cause, same symptom) just hit me again in 2.6.32-rc1.
