From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #35062] Suspend to ram stopped working after commit of " intel-iommu: Unlink domain from iommu "
Date: Sun, 15 May 2011 00:30:08 +0200 (CEST)
Message-ID: <HA8urZ3ZRcP.A.B4B.94vzNB@chimera>
References: <So1vU2GC7XM.A.5wB.44vzNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <So1vU2GC7XM.A.5wB.44vzNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Alex Williamson <alex.williamson@redhat.com>, David Woodhouse <David.Woodhouse@intel.com>, Donald Dutile <ddutile@redhat.com>, optiluca@gmail.com

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.38.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=35062
Subject		: Suspend to ram stopped working after commit of " intel-iommu: Unlink domain from iommu "
Submitter	:  <optiluca@gmail.com>
Date		: 2011-05-14 11:08 (1 days old)
First-Bad-Commit: http://git.kernel.org/linus/a97590e56d0d58e1dd262353f7cbd84e81d8e600

