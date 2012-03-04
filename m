From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #42629] recvmsg sleeping from invalid context
Date: Sun,  4 Mar 2012 22:21:16 +0100 (CET)
Message-ID: <mQVKgxJpvQC.A.7mG.w79UPB@chimera>
References: <QW36V-vSgyB.A.YIG.i79UPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <QW36V-vSgyB.A.YIG.i79UPB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 3.1 and 3.2.

The following bug entry is on the current list of known regressions
introduced between 3.1 and 3.2.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42629
Subject		: recvmsg sleeping from invalid context
Submitter	: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2012-01-13 18:24 (52 days old)
Message-ID	: <20120113182401.GA25885-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=132647921304184&w=2

