From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14949] drm_vm.c:drm_mmap: possible circular locking dependency detected
Date: Sun, 10 Jan 2010 23:32:56 +0100 (CET)
Message-ID: <omZ8aBZReyD.A.NSH.MNlSLB@chimera>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754299Ab0AJWlX@vger.kernel.org>
In-Reply-To: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Borislav Petkov <petkovbb@googlemail.com>, DRI <dri-devel@lists.sourceforge.net>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14949
Subject		: drm_vm.c:drm_mmap: possible circular locking dependency detected
Submitter	: Borislav Petkov <petkovbb@googlemail.com>
Date		: 2009-12-26 9:45 (16 days old)
References	: http://marc.info/?l=linux-kernel&m=126182073616279&w=4

