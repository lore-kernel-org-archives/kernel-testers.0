From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #42821] alpha: futex regression bisected
Date: Sun, 11 Mar 2012 22:31:16 +0100 (CET)
Message-ID: <C6gS2DkSgiG.A.AyB.6tRXPB@chimera>
References: <WuYv90FoNpB.A.O8.ktRXPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <WuYv90FoNpB.A.O8.ktRXPB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Michael Cree <mcree@orcon.net.nz>, Michel Lespinasse <walken@google.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 3.2.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42821
Subject		: alpha: futex regression bisected
Submitter	: Michael Cree <mcree@orcon.net.nz>
Date		: 2012-02-20 8:20 (21 days old)
First-Bad-Commit: http://git.kernel.org/linus/8d7718aa082aaf30a0b4989e1f04858952f941bc
Message-ID	: <4F420256.2090600@orcon.net.nz>
References	: http://marc.info/?l=linux-kernel&m=132972606917069&w=2

