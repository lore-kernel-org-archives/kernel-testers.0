From: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #14887] suspend doesn't work on X200s
Date: Wed, 30 Dec 2009 12:17:45 +0100
Message-ID: <20091230111745.GC4489@kernel.dk>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.Zg.inhOLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <NJVdobuNFNK.A.Zg.inhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>

On Tue, Dec 29 2009, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14887
> Subject		: suspend doesn't work on X200s
> Submitter	: Andrew Lutomirski <luto-3s7WtUTddSA@public.gmane.org>
> Date		: 2009-12-22 0:45 (8 days old)
> References	: http://marc.info/?l=linux-kernel&m=126144274102396&w=4

Works fine for me on an x200s. The only issue I seem to have is that
sometimes it suspends immediately upon resume again, presumably the lid
close event is re-triggered (or something to that extent). Apart from
that, 2.6.32 and current -git works fine for me.

-- 
Jens Axboe
