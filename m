From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13700] usb error flood in dmesg, makes kde use plenty of cpu - bisected
Date: Sun, 26 Jul 2009 22:28:20 +0200 (CEST)
Message-ID: <3zAHs5O6maO.A.ejE.GIObKB@chimera>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754410AbZGZX1S@vger.kernel.org>
In-Reply-To: <Jya1GruKQpD.A.16.2GObKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Daniel Mack <daniel@caiaq.de>, Greg Kroah-Hartman <gregkh@suse.de>, jouni susiluoto <jouni.susiluoto@helsinki.fi>, Takashi Iwai <tiwai@suse.de>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13700
Subject		: usb error flood in dmesg, makes kde use plenty of cpu - bisected
Submitter	: jouni susiluoto <jouni.susiluoto@helsinki.fi>
Date		: 2009-07-03 21:13 (24 days old)

