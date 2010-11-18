From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #22552] AMD boot freeze bisected to b126b4703afa4010b161784a43650337676dd03b
Date: Fri, 19 Nov 2010 00:42:45 +0100 (CET)
Message-ID: <ATV3yiK8i4C.A.xhE.Pib5MB@chimera>
References: <sKkKYVppECN.A.KhC.Phb5MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sKkKYVppECN.A.KhC.Phb5MB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Borislav Petkov <bp-HnHVZv34qLXYtjvyW6yDsg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.36.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22552
Subject		: AMD boot freeze bisected to b126b4703afa4010b161784a43650337676dd03b
Submitter	: Borislav Petkov <bp-HnHVZv34qLXYtjvyW6yDsg@public.gmane.org>
Date		: 2010-11-02 17:03 (17 days old)
First-Bad-Commit: http://git.kernel.org/linus/b126b4703afa4010b161784a43650337676dd03b
Message-ID	: <20101102170335.GC24927@aftab>
References	: http://marc.info/?l=linux-kernel&m=128871752109913&w=2

