From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #22682] [oops, 2.6.37-rc1] Unpacking initramfs failed, oops in free_init_pages()
Date: Fri, 19 Nov 2010 00:42:47 +0100 (CET)
Message-ID: <ATV3yiK8i4C.A.Q6D._hb5MB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.36.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22682
Subject		: [oops, 2.6.37-rc1] Unpacking initramfs failed, oops in free_init_pages()
Submitter	: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>
Date		: 2010-11-03 1:54 (16 days old)
Message-ID	: <20101103015427.GA31163@dastard>
References	: http://marc.info/?l=linux-kernel&m=128874930119723&w=2

