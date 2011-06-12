From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #33842] NULL pointer dereference in ip_fragment
Date: Sun, 12 Jun 2011 23:12:08 +0200 (CEST)
Message-ID: <kTLfM29CaqB.A.K5F.f1S9NB@chimera>
References: <9NVbY1BZ_5D.A.2lE.jzS9NB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <9NVbY1BZ_5D.A.2lE.jzS9NB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Tomas Carnecky <tom-ix/z9KG6G0Jl57MIdRCFDg@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.38 and 2.6.39.

The following bug entry is on the current list of known regressions
introduced between 2.6.38 and 2.6.39.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=33842
Subject		: NULL pointer dereference in ip_fragment
Submitter	: Tomas Carnecky <tom-ix/z9KG6G0Jl57MIdRCFDg@public.gmane.org>
Date		: 2011-04-23 07:51 (51 days old)

