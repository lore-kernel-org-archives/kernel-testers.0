From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16322] WARNING: at /arch/x86/include/asm/processor.h:1005 read_measured_perf_ctrs+0x5a/0x70()
Date: Sun, 26 Sep 2010 22:33:09 +0200 (CEST)
Message-ID: <UfOptYFtL6C.A.YdD.5C7nMB@chimera>
References: <onxdOCF6lb.A.vKB.a_6nMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <onxdOCF6lb.A.vKB.a_6nMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, boris64 <bugzilla.kernel.org-ro/BP3KN3ujR7s880joybQ@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.34 and 2.6.35.

The following bug entry is on the current list of known regressions
introduced between 2.6.34 and 2.6.35.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16322
Subject		: WARNING: at /arch/x86/include/asm/processor.h:1005 read_measured_perf_ctrs+0x5a/0x70()
Submitter	: boris64 <bugzilla.kernel.org-ro/BP3KN3ujR7s880joybQ@public.gmane.org>
Date		: 2010-07-01 13:54 (88 days old)
Handled-By	: H. Peter Anvin <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>

