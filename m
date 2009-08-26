From: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Bug #14030] Kernel NULL pointer dereference at 0000000000000008,
 pty-related
Date: Tue, 25 Aug 2009 17:16:40 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0908251716050.3218@localhost.localdomain>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <_yaHeGjHEzG.A.D2G.3sGlKB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756565AbZHZARc@vger.kernel.org>
In-Reply-To: <_yaHeGjHEzG.A.D2G.3sGlKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, "Eric W. Biederman" <ebiederm@xmission.com>



On Tue, 25 Aug 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14030
> Subject		: Kernel NULL pointer dereference at 0000000000000008, pty-related
> Submitter	: Eric W. Biederman <ebiederm@xmission.com>
> Date		: 2009-08-20 5:46 (6 days old)
> References	: http://marc.info/?l=linux-kernel&m=125074724623423&w=4
> Handled-By	: Linus Torvalds <torvalds@linux-foundation.org>
> Patch		: http://patchwork.kernel.org/patch/43679/

This is now committed as 5c58ceff103d8a654f24769bb1baaf84a841b0cc. 

		Linus
