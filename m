From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15033] drm: gem_object_free without struct_mutex
Date: Sun, 10 Jan 2010 23:32:58 +0100 (CET)
Message-ID: <omZ8aBZReyD.A.zcG.3MlSLB@chimera>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15033
Subject		: drm: gem_object_free without struct_mutex
Submitter	: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
Date		: 2009-12-30 19:45 (12 days old)
References	: http://marc.info/?l=linux-kernel&m=126220236201529&w=4
Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

