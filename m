From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13232] ext3/4 with synchronous writes gets wedged by Postfix
Date: Sun,  7 Jun 2009 12:06:22 +0200 (CEST)
Message-ID: <AN6kEAA5GQ.A.NkB.9j7KKB@chimera>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sIiXQlfwS3D.A.81.dj7KKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Author: Theodore Ts'o" <tytso-3s7WtUTddSA@public.gmane.org>, David Watson <kernel-nospam-yvBcC19sZ6P0OyVTGvYuXB2eb7JE58TQ@public.gmane.org>, Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.28 and 2.6.29.

The following bug entry is on the current list of known regressions
introduced between 2.6.28 and 2.6.29.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13232
Subject		: ext3/4 with synchronous writes gets wedged by Postfix
Submitter	: David Watson <kernel-nospam-yvBcC19sZ6P0OyVTGvYuXB2eb7JE58TQ@public.gmane.org>
Date		: 2009-05-03 19:46 (36 days old)

