From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #25822] [BUG] kernel BUG at mm/truncate.c:479! on 2.6.37-rc8
Date: Mon, 21 Feb 2011 23:37:07 +0100 (CET)
Message-ID: <f14qsMvj2tF.A.05D.TduYNB@chimera>
References: <JwKd6rET8XO.A._ZC.gbuYNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <JwKd6rET8XO.A._ZC.gbuYNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Gurudas Pai <gurudas.pai-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Miklos Szeredi <mszeredi-AlSwsSmVLrQ@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=25822
Subject		: [BUG] kernel BUG at mm/truncate.c:479! on 2.6.37-rc8
Submitter	: Gurudas Pai <gurudas.pai-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2010-12-29 6:58 (55 days old)
Message-ID	: <4D1AD935.1020504-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=129360511222037&w=2
Handled-By	: Miklos Szeredi <mszeredi-AlSwsSmVLrQ@public.gmane.org>
Patch		: https://lkml.org/lkml/2010/12/29/131
		  https://lkml.org/lkml/2011/1/20/163

