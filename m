From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16137] Ooops in BTRFS in 2.6.34 / x86_64 when mounting subvolume by name
Date: Sun, 13 Jun 2010 16:49:05 +0200 (CEST)
Message-ID: <YPGdyfWGvNK.A.-YG.p5OFMB@chimera>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, armin walland <a.walland-3PHDqMh92CpBDgjK7y7TUQ@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16137
Subject		: Ooops in BTRFS in 2.6.34 / x86_64 when mounting subvolume by name
Submitter	: armin walland <a.walland-3PHDqMh92CpBDgjK7y7TUQ@public.gmane.org>
Date		: 2010-05-27 12:27 (18 days old)
Message-ID	: <201005271428.01239.a.walland-3PHDqMh92CpBDgjK7y7TUQ@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=127496434110736&w=2

