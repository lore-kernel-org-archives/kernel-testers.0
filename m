From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16294] [Q35 bisected] hang at init of i915 driver
Date: Fri, 23 Jul 2010 13:47:30 +0200 (CEST)
Message-ID: <tneGvaw1wLL.A.9fB.v3XSMB@chimera>
References: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Lupw7pePXBO.A.fZH.G2XSMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Chris Wilson <"email addresshidden"@ogre.sisk.pl>, Eric Anholt <"email addresshidden"@ogre.sisk.pl>, Kees Cook <kees-oSa+0FWJbaXR7s880joybQ@public.gmane.org>, Tim Gardner <tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16294
Subject		: [Q35 bisected] hang at init of i915 driver
Submitter	: Kees Cook <kees-oSa+0FWJbaXR7s880joybQ@public.gmane.org>
Date		: 2010-06-25 18:20 (29 days old)
First-Bad-Commit: http://git.kernel.org/linus/f1befe71fa7a79ab733011b045639d8d809924ad
Handled-By	: Tim Gardner <tim.gardner-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>
Patch		: https://patchwork.kernel.org/patch/111130/

