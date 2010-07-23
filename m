From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16256] tpm_tis breaks suspend/hibernate on kernels > 2.6.34
Date: Fri, 23 Jul 2010 13:47:29 +0200 (CEST)
Message-ID: <tneGvaw1wLL.A.sGC.Q4XSMB@chimera>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, David Safford <safford@watson.ibm.com>, Helmut Schaa <helmut.schaa@googlemail.com>, James Morris <jmorris@namei.org>, Rajiv Andrade <srajiv@linux.vnet.ibm.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16256
Subject		: tpm_tis breaks suspend/hibernate on kernels > 2.6.34
Submitter	: Helmut Schaa <helmut.schaa@googlemail.com>
Date		: 2010-06-20 11:15 (34 days old)
First-Bad-Commit: http://git.kernel.org/linus/225a9be24d799aa16d543c31fb09f0c9ed1d9caa
Handled-By	: Helmut Schaa <helmut.schaa@googlemail.com>
Patch		: http://marc.info/?l=tpmdd-devel&m=127609160616162&w=2

