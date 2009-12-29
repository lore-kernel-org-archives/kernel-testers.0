From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14949] drm_vm.c:drm_mmap: possible circular locking dependency detected
Date: Tue, 29 Dec 2009 16:10:04 +0100 (CET)
Message-ID: <NJVdobuNFNK.A.DpF.6mhOLB@chimera>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14949
Subject		: drm_vm.c:drm_mmap: possible circular locking dependency detected
Submitter	: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Date		: 2009-12-26 9:45 (4 days old)
References	: http://marc.info/?l=linux-kernel&m=126182073616279&w=4

