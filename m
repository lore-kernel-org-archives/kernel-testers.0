From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13809] oprofile: possible circular locking dependency detected
Date: Sun, 26 Jul 2009 22:28:24 +0200 (CEST)
Message-ID: <3zAHs5O6maO.A.YTD.eHObKB@chimera>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754525AbZGZXTc@vger.kernel.org>
In-Reply-To: <Jya1GruKQpD.A.16.2GObKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Jerome Marchand <jmarchan@redhat.com>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13809
Subject		: oprofile: possible circular locking dependency detected
Submitter	: Jerome Marchand <jmarchan@redhat.com>
Date		: 2009-07-22 13:35 (5 days old)

