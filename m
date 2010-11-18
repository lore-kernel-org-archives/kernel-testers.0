From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #23062] kvm segfaults on 2.6.36-64bit kernel with 32 bit userspace
Date: Fri, 19 Nov 2010 00:53:46 +0100 (CET)
Message-ID: <t78YtCSuOqN.A.ETF.o3b5MB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Jorge Boncompte <jorge-hjL/uWR+mxo@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.35 and 2.6.36.

The following bug entry is on the current list of known regressions
introduced between 2.6.35 and 2.6.36.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=23062
Subject		: kvm segfaults on 2.6.36-64bit kernel with 32 bit userspace
Submitter	: Jorge Boncompte <jorge-hjL/uWR+mxo@public.gmane.org>
Date		: 2010-11-17 11:59 (2 days old)
First-Bad-Commit: http://git.kernel.org/linus/9581d442b905

