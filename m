From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #33792] lockdep trace when unplugging usb audio (.39rc4)
Date: Sun, 15 May 2011 00:30:07 +0200 (CEST)
Message-ID: <HA8urZ3ZRcP.A.5lC.u5vzNB@chimera>
References: <So1vU2GC7XM.A.5wB.44vzNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <So1vU2GC7XM.A.5wB.44vzNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.38.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=33792
Subject		: lockdep trace when unplugging usb audio (.39rc4)
Submitter	: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2011-04-19 18:07 (26 days old)
Message-ID	: <20110419180745.GA438-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=130323648920431&w=2

