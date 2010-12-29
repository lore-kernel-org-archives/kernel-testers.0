From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #25012] BUG: i915 causes NULL pointer dereference in 2.6.37-rc5-git4
Date: Thu, 30 Dec 2010 00:07:01 +0100 (CET)
Message-ID: <sV7shrPOroO.A.UEF.b-7GNB@chimera>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <96DQe4a_2tH.A.4RE.497GNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Chris Wilson <chris@chris-wilson.co.uk>, =?utf-8?q?T=C3=B5nu=20Raitviir?= <jussuf@linux.ee>

This message has been generated automatically as a part of a summary re=
port
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.36.  Please verify if it still should be listed and let the tr=
acking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D25012
Subject		: BUG: i915 causes NULL pointer dereference in 2.6.37-rc5-git4
Submitter	: T=C3=B5nu Raitviir <jussuf@linux.ee>
Date		: 2010-12-15 12:48 (15 days old)
=46irst-Bad-Commit: http://git.kernel.org/linus/da79de97d254145dcb7c08c=
978b1093eac15ec9c
Message-ID	: <alpine.DEB.2.00.1012151238570.4797@jbbyvx.ohzcpyho.rr>
References	: http://www.spinics.net/lists/dri-devel/msg06282.html
Handled-By	: Chris Wilson <chris@chris-wilson.co.uk>
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=3D41502

