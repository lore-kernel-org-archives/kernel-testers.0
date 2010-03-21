From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15319] [BUG]: Possibe recursive locking detected in sysfs
Date: Sun, 21 Mar 2010 21:30:49 +0100 (CET)
Message-ID: <hTwaxgnIZ2O.A.iYE.FPopLB@chimera>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Eric Biederman <ebiederm@aristanetworks.com>, John Kacur <jkacur@redhat.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.32 and 2.6.33.

The following bug entry is on the current list of known regressions
introduced between 2.6.32 and 2.6.33.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15319
Subject		: [BUG]: Possibe recursive locking detected in sysfs
Submitter	: John Kacur <jkacur@redhat.com>
Date		: 2010-02-11 17:11 (39 days old)
Message-ID	: <520f0cf11002110911t3f125649v73062e9851e2cfb3@mail.gmail.com>
References	: http://marc.info/?l=linux-kernel&m=126590832432598&w=2
Handled-By	: Eric Biederman <ebiederm@aristanetworks.com>

