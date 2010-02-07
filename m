From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14949] drm_vm.c:drm_mmap: possible circular locking dependency detected
Date: Sun,  7 Feb 2010 23:28:48 +0100 (CET)
Message-ID: <445R0ey9hAI.A.4bC._pzbLB@chimera>
References: <4Ht3jFrT7uE.A.JI.-nzbLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4Ht3jFrT7uE.A.JI.-nzbLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Borislav Petkov <petkovbb@googlemail.com>, DRI <dri-devel@lists.sourceforge.net>, "Eric W. Biederman" <ebiederm@aristanetworks.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14949
Subject		: drm_vm.c:drm_mmap: possible circular locking dependency detected
Submitter	: Borislav Petkov <petkovbb@googlemail.com>
Date		: 2009-12-26 9:45 (44 days old)
References	: http://marc.info/?l=linux-kernel&m=126182073616279&w=4
Handled-By	: Eric W. Biederman <ebiederm@aristanetworks.com>
Patch		: http://patchwork.kernel.org/patch/70461/

