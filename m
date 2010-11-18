From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #20162] [LogFS][2.6.36.rc7+] Kernel BUG at readwrite.c:1193
Date: Fri, 19 Nov 2010 00:53:35 +0100 (CET)
Message-ID: <t78YtCSuOqN.A.gGH.t4b5MB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Prasad Gajanan Joshi <prasadjoshi124-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Prasad Joshi <prasadjoshi124-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.35 and 2.6.36.

The following bug entry is on the current list of known regressions
introduced between 2.6.35 and 2.6.36.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20162
Subject		: [LogFS][2.6.36.rc7+] Kernel BUG at readwrite.c:1193
Submitter	: Prasad Joshi <prasadjoshi124-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-10-10 17:44 (40 days old)
Message-ID	: <AANLkTi=JkcuWBPo+X-i+9o-BJFVqjea1J3e=Mr=HvAWF-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=128673196203340&w=2
Handled-By	:  Prasad Gajanan Joshi <prasadjoshi124-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: https://bugzilla.kernel.org/show_bug.cgi?id=20162#c1

