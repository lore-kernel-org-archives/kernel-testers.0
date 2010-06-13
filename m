From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15909] open("a/",O_NOFOLLOW) fails with ELOOP if "a" is a symbolic link to a directory.
Date: Sun, 13 Jun 2010 16:48:58 +0200 (CEST)
Message-ID: <YPGdyfWGvNK.A.KL.C7OFMB@chimera>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Jan Kara <jack@suse.cz>, Marius Tolzmann <tolzmann@molgen.mpg.de>, Miklos Szeredi <mszeredi@suse.cz>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15909
Subject		: open("a/",O_NOFOLLOW) fails with ELOOP if "a" is a symbolic link to a directory.
Submitter	: Marius Tolzmann <tolzmann@molgen.mpg.de>
Date		: 2010-05-05 13:01 (40 days old)
Handled-By	: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
		  Jan Kara <jack@suse.cz>
Patch		: https://patchwork.kernel.org/patch/99291/

