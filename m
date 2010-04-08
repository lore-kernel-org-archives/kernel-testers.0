From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15733] Crash when accessing nonexistent GTT entries in i915
Date: Fri,  9 Apr 2010 01:04:36 +0200 (CEST)
Message-ID: <onZ81XwyNTD.A.eyB.8DmvLB@chimera>
References: <cjwJ7Pf9h0L.A.9pB.1DmvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cjwJ7Pf9h0L.A.9pB.1DmvLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Zhenyu Wang <zhenyuw@linux.intel.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.32 and 2.6.33.

The following bug entry is on the current list of known regressions
introduced between 2.6.32 and 2.6.33.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15733
Subject		: Crash when accessing nonexistent GTT entries in i915
Submitter	: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date		: 2010-03-10 22:09 (30 days old)
Message-ID	: <1268258994.2183.14.camel@carter>
References	: http://marc.info/?l=linux-kernel&m=126825901326111&w=4
Handled-By	: Zhenyu Wang <zhenyuw@linux.intel.com>
		  Andrew Morton <akpm@linux-foundation.org>

