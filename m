From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #42683] WARN... Device 'cpu1' does not have a release() function, it is broken and must be fixed. when doing 'xl vcpu-set <guest_id> 1'
Date: Sun,  4 Mar 2012 21:31:31 +0100 (CET)
Message-ID: <hq7dqombK_C.A.1gF.fG9UPB@chimera>
References: <FNlNbnGKWLP.A.dME.3F9UPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <FNlNbnGKWLP.A.dME.3F9UPB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Konrad Rzeszutek Wilk <konrad.wilk-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 3.2.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42683
Subject		: WARN... Device 'cpu1' does not have a release() function, it is broken and must be fixed. when doing 'xl vcpu-set <guest_id> 1'
Submitter	: Konrad Rzeszutek Wilk <konrad.wilk-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2012-01-23 18:06 (42 days old)
Message-ID	: <20120123180601.GA24553-6K5HmflnPlqSPmnEAIUT9EEOCMrvLtNR@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=132734233916154&w=2

