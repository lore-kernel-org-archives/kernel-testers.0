From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12419] possible circular locking dependency on i915 dma
Date: Sun, 11 Jan 2009 12:16:28 +0100 (CET)
Message-ID: <oWTznAnH9BI.A.GUH.IHfaJB@chimera>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Wang Chen <wangchen-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12419
Subject		: possible circular locking dependency on i915 dma
Submitter	: Wang Chen <wangchen-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>
Date		: 2009-01-08 14:11 (4 days old)
References	: http://marc.info/?l=linux-kernel&m=123142399720125&w=4

