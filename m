From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #42629] recvmsg sleeping from invalid context
Date: Fri, 24 Feb 2012 00:06:33 +0100 (CET)
Message-ID: <JM4ZOHxb-FL.A.FCH.jhsRPB@chimera>
References: <1qKPXd1RqtP.A.wjG.ShsRPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1qKPXd1RqtP.A.wjG.ShsRPB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Dave Jones <davej@redhat.com>

This message has been generated automatically as a part of a report
of regressions introduced between 3.1 and 3.2.

The following bug entry is on the current list of known regressions
introduced between 3.1 and 3.2.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=42629
Subject		: recvmsg sleeping from invalid context
Submitter	: Dave Jones <davej@redhat.com>
Date		: 2012-01-13 18:24 (42 days old)
Message-ID	: <20120113182401.GA25885@redhat.com>
References	: http://marc.info/?l=linux-kernel&m=132647921304184&w=2

