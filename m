From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #22782] 2.6.36: general protection fault during lockfs lockspace removal
Date: Fri, 19 Nov 2010 00:53:44 +0100 (CET)
Message-ID: <t78YtCSuOqN.A.0WF.u3b5MB@chimera>
References: <tTUH_XeInOH.A.dMF.c3b5MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <tTUH_XeInOH.A.dMF.c3b5MB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, "nik-Jp3n8lUXroTtwjQa/ONI9g@public.gmane.org" <nik-Jp3n8lUXroTtwjQa/ONI9g@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.35 and 2.6.36.

The following bug entry is on the current list of known regressions
introduced between 2.6.35 and 2.6.36.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22782
Subject		: 2.6.36: general protection fault during lockfs lockspace removal
Submitter	: nik-Jp3n8lUXroTtwjQa/ONI9g@public.gmane.org <nik-Jp3n8lUXroTtwjQa/ONI9g@public.gmane.org>
Date		: 2010-11-12 12:05 (7 days old)

