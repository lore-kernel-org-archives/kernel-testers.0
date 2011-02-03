From: Matthias Hopf <mat-qKTPc7LU+kGzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #26932] [SNB mobile] Oops in DRM intel driver, esp.
 during S3/S4 stress test
Date: Thu, 3 Feb 2011 14:35:24 +0100
Message-ID: <20110203133524.GB5123@suse.de>
References: <e9vOd5LzdBK.A.dyD.h6eSNB@chimera>
 <-tcJxClTQPH.A.AWE.Q7eSNB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <-tcJxClTQPH.A.AWE.Q7eSNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On Feb 03, 11 01:05:28 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.36 and 2.6.37.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.36 and 2.6.37.  Please verify if it still should
> be listed and let the tracking team know (either way).

The original issue of this bug is not a regression. Though during trying
to reproduce with the latest kernel I stumbled over two regressions (one
regarding frame buffer compression, already fixed in intel-drm-fixes,
one regarding S3 trampoline code and NX, fix available, bug 27472).

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=26932
> Subject		: [SNB mobile] Oops in DRM intel driver, esp. during S3/S4 stress test
> Submitter	: Matthias Hopf <mat-qKTPc7LU+kGzQB+pC5nmwQ@public.gmane.org>
> Date		: 2011-01-17 11:45 (17 days old)

Matthias

-- 
Matthias Hopf <mhopf-l3A5Bk7waGM@public.gmane.org>      __        __   __
Maxfeldstr. 5 / 90409 Nuernberg   (_   | |  (_   |__          mat-qKTPc7LU+kGzQB+pC5nmwQ@public.gmane.org
Phone +49-911-74053-715           __)  |_|  __)  |__  R & D   www.mshopf.de
