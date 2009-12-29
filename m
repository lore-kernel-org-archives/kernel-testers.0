From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14656] Oops at __rmqueue+0x98 with 2.6.32-rc6
Date: Tue, 29 Dec 2009 16:28:46 +0100 (CET)
Message-ID: <srmJ8vMxKPH.A.ykD.fxhOLB@chimera>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Lucas C. Villa Real" <lucasvr-9gmU7qdNRpmhPH1hqNUYSQ@public.gmane.org>, "reiserfs-devel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org"@ogre.sisk.pl

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14656
Subject		: Oops at __rmqueue+0x98 with 2.6.32-rc6
Submitter	: Lucas C. Villa Real <lucasvr-9gmU7qdNRpmhPH1hqNUYSQ@public.gmane.org>
Date		: 2009-11-19 3:48 (41 days old)
References	: http://marc.info/?l=linux-kernel&m=125860255229092&w=4

