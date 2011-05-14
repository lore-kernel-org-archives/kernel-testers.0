From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #28422] kref and apparmor panic in 2.6.38-rc2.
Date: Sun, 15 May 2011 00:39:17 +0200 (CEST)
Message-ID: <SFkDk2sBn_E.A.ioE.bTwzNB@chimera>
References: <Zsp7lN2vZ2O.A.J7C.bQwzNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Zsp7lN2vZ2O.A.J7C.bQwzNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Tao Ma <tm-d1IQDZat3X0@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.37 and 2.6.38.

The following bug entry is on the current list of known regressions
introduced between 2.6.37 and 2.6.38.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=28422
Subject		: kref and apparmor panic in 2.6.38-rc2.
Submitter	: Tao Ma <tm-d1IQDZat3X0@public.gmane.org>
Date		: 2011-01-31 10:06 (104 days old)
Message-ID	: <4D46899B.80302-d1IQDZat3X0@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=129646840303149&w=2

