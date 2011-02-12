From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #28052] [BUG] 2.6.38-rc2: Circular Locking Dependency
Date: Sun, 13 Feb 2011 00:05:18 +0100 (CET)
Message-ID: <8H3lez1sawF.A.OqH.3AxVNB@chimera>
References: <NMZS1i37KEE.A.1eG.6_wVNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <NMZS1i37KEE.A.1eG.6_wVNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Knut Petersen <Knut_Petersen-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.37.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=28052
Subject		: [BUG] 2.6.38-rc2: Circular Locking Dependency
Submitter	: Knut Petersen <Knut_Petersen-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>
Date		: 2011-01-24 9:25 (20 days old)
Message-ID	: <4D3D45A3.7040809-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=129586118515443&w=2

