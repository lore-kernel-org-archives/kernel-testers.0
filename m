From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11829] Kernel 2.6.26.5 -&gt; 2.6.27.2 [USB REGRESSION] (USB -&gt; D_STATE)
Date: Sun,  9 Nov 2008 20:43:22 +0100 (CET)
Message-ID: <4B0Eqx89uNG.A.kYC.vZ1FJB@chimera>
References: <A3oCZU7cpuO.A.ChB.ZZ1FJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <A3oCZU7cpuO.A.ChB.ZZ1FJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>, Mike Isely <isely-2vzrQ03IO+5eoWH0uzbU5w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.26 and 2.6.27.

The following bug entry is on the current list of known regressions
introduced between 2.6.26 and 2.6.27.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11829
Subject		: Kernel 2.6.26.5 -&gt; 2.6.27.2 [USB REGRESSION] (USB -&gt; D_STATE)
Submitter	: Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>
Date		: 2008-10-19 11:26 (22 days old)
References	: http://marc.info/?l=linux-kernel&m=122441560120027&w=4
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
		  Mike Isely <isely-2vzrQ03IO+5eoWH0uzbU5w@public.gmane.org>
Patch		: http://linuxtv.org/hg/~mcisely/pvrusb2/rev/0bb411d8d2e4

