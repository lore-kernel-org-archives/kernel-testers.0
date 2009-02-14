From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12265] FPU emulation broken in 2.6.28-rc8 ?
Date: Sun, 15 Feb 2009 00:23:35 +0100
Message-ID: <20090214232335.GG20477@elte.hu>
References: <sTyoMUwdm9B.A.QCH.U40lJB@chimera> <ROx6X68CGJG.A.kaB.Y50lJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <ROx6X68CGJG.A.kaB.Y50lJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rogier Wolff <R.E.Wolff-bu/CaDbLbdHGjfRZg6uqBA@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12265
> Subject		: FPU emulation broken in 2.6.28-rc8 ?
> Submitter	: Rogier Wolff <R.E.Wolff-bu/CaDbLbdHGjfRZg6uqBA@public.gmane.org>
> Date		: 2008-12-17 8:56 (60 days old)
> References	: http://marc.info/?l=linux-kernel&m=122950463030747&w=4

Should be fixed in -rc5 by:

  d315760: x86: fix math_emu register frame access

Rogier, can you confirm?

	Ingo
