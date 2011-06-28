From: Martin <marogge-53koH/AXb86i2/dY4+mD5w@public.gmane.org>
Subject: Re: [Bug #37752] Kernel Panic in drm_vblank_put+0x13/0x50 on P4 HT machine with 82915G/GV/910GL Integrated Graphics Controller
Date: Tue, 28 Jun 2011 22:23:40 +0200
Message-ID: <201106282223.40536.marogge@onlinehome.de>
References: <fvHbBUhG0PD.A.IGE.HM7BOB@chimera> <Rm1pgFxEGUF.A._PE.UM7BOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Rm1pgFxEGUF.A._PE.UM7BOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Monday 27 June 2011 00:35:16 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=37752
> Subject		: Kernel Panic in drm_vblank_put+0x13/0x50 on P4 HT machine 
with
> 82915G/GV/910GL Integrated Graphics Controller Submitter	: Martin Rogge
> <marogge-53koH/AXb86i2/dY4+mD5w@public.gmane.org>
> Date		: 2011-06-17 13:02 (10 days old)

As far as I can see the bug is still present in the 2.6.39 line. However. I 
have good news. Out of a whim I've been trying 3.0-rc4 and the panic has not 
occurred in a few days.

I can try and bisect which commit fixed the issue. I guess I have to reverse 
the semantics of good and bad for this one. Don't tell the clergy.

Anyway, since it takes a while to establish the absence of a panic, don't 
expect any results soon.

Martin
