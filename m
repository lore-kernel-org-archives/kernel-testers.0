From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15244] PROBLEM: hda-intel divide by zero kernel crash in azx_position_ok()
Date: Mon, 15 Feb 2010 00:38:33 +0100 (CET)
Message-ID: <4un6Gst5rKB.A.TVH.1iIeLB@chimera>
References: <Z5cmiqDComP.A.gyF.OiIeLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Z5cmiqDComP.A.gyF.OiIeLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jody Bruchon <jody-CwlhuK3P8e+1Z/+hSey0Gg@public.gmane.org>, Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15244
Subject		: PROBLEM: hda-intel divide by zero kernel crash in azx_position_ok()
Submitter	: Jody Bruchon <jody-CwlhuK3P8e+1Z/+hSey0Gg@public.gmane.org>
Date		: 2010-02-06 0:32 (9 days old)
References	: http://marc.info/?l=linux-kernel&m=126541276028173&w=2
Handled-By	: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>
		  Jody Bruchon <jody-CwlhuK3P8e+1Z/+hSey0Gg@public.gmane.org>

