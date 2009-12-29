From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14925] sky2 panic under load
Date: Tue, 29 Dec 2009 16:10:00 +0100 (CET)
Message-ID: <NJVdobuNFNK.A.k-G.PnhOLB@chimera>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Berck E. Nash" <flyboy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Berck Nash <flyboy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Daniel Hazelton <dhazelton-A0c1cCSExh1eoWH0uzbU5w@public.gmane.org>, Michael Breuer <mbreuer-P//MSfjsEjDQT0dZR+AlfA@public.gmane.org>, "netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org"@ogre.sisk.pl, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14925
Subject		: sky2 panic under load
Submitter	: Berck E. Nash <flyboy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2009-12-21 23:52 (9 days old)
References	: http://marc.info/?l=linux-kernel&m=126143955730347&w=4
		  http://marc.info/?l=linux-kernel&m=126160893126548&w=4
Handled-By	: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

