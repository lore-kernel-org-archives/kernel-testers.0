From: Nick Bowler <nbowler-7BP4RkwGw0uXmMXjJBpWqg@public.gmane.org>
Subject: Re: [Bug #16265] Why is kslowd accumulating so much CPU time?
Date: Fri, 23 Jul 2010 10:41:43 -0400
Message-ID: <20100723144143.GA14650@elliptictech.com>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
 <tneGvaw1wLL.A.21B.E4XSMB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <tneGvaw1wLL.A.21B.E4XSMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>

On 13:47 Fri 23 Jul     , Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16265
> Subject		: Why is kslowd accumulating so much CPU time?
> Submitter	: Theodore Ts'o <tytso-3s7WtUTddSA@public.gmane.org>
> Date		: 2010-06-09 18:36 (45 days old)
> First-Bad-Commit: http://git.kernel.org/linus/fbf81762e385d3d45acad057b654d56972acf58c
> Message-ID	: <E1OMQ88-0002a1-Gb-UK71uKi2zisAobODsErMgNi2O/JbrIOy@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127610857819033&w=4

I actually haven't been able to reproduce with kernels since a couple
weeks ago (still reproducible if I go back to 2.6.35-rc3, though).
Seems to be fixed somehow, can anyone else confirm?

-- 
Nick Bowler, Elliptic Technologies (http://www.elliptictech.com/)
