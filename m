From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #26612] BUG in fs/inode.c:429
Date: Sun,  6 Mar 2011 13:40:38 +0100 (CET)
Message-ID: <sUKqYsqyJ4N.A.12G.KA4cNB@chimera>
References: <dtUMITvTCCN.A.uuF.y-3cNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <dtUMITvTCCN.A.uuF.y-3cNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Florian Kriener <florian-bhrbqVfTjYdAfugRpC6u6w@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=26612
Subject		: BUG in fs/inode.c:429
Submitter	: Florian Kriener <florian-bhrbqVfTjYdAfugRpC6u6w@public.gmane.org>
Date		: 2011-01-06 16:35 (60 days old)
Message-ID	: <201101061735.40060.florian-bhrbqVfTjYdAfugRpC6u6w@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=129433235223735&w=2

