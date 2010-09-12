From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #17742] 2.6.36-rc2-git5: Oops in snd_pcm_substream_proc_status_read()
Date: Sun, 12 Sep 2010 20:14:29 +0200 (CEST)
Message-ID: <0c5PAlgnPrH.A.UMB.3rRjMB@chimera>
References: <EP3NUDNWMO.A.O0.rrRjMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <EP3NUDNWMO.A.O0.rrRjMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.35.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=17742
Subject		: 2.6.36-rc2-git5: Oops in snd_pcm_substream_proc_status_read()
Submitter	: Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2010-09-01 8:19 (12 days old)
Message-ID	: <20100901041924.23a8a865@katamari>
References	: http://marc.info/?l=linux-kernel&m=128332930703451&w=2
		  https://bugzilla.redhat.com/show_bug.cgi?id=628404
		  https://bugzilla.redhat.com/show_bug.cgi?id=628404#c5
Handled-By	: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>
Patch		: http://mailman.alsa-project.org/pipermail/alsa-devel/2010-September/031275.html

