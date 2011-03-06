From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #24982] Inconsistent DPMS handling with 2.6.37 DRM
Date: Sun,  6 Mar 2011 13:40:36 +0100 (CET)
Message-ID: <sUKqYsqyJ4N.A.JhH.iB4cNB@chimera>
References: <dtUMITvTCCN.A.uuF.y-3cNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <dtUMITvTCCN.A.uuF.y-3cNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>, Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=24982
Subject		: Inconsistent DPMS handling with 2.6.37 DRM
Submitter	: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>
Date		: 2010-12-16 16:32 (81 days old)
Handled-By	: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>
		  Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=40392
		  https://patchwork.kernel.org/patch/530921/

