From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #22172] alsa-util.c: snd_pcm_avail_delay() returned strange values: delay 0 is less than avail 32
Date: Sun, 19 Dec 2010 13:50:26 +0100 (CET)
Message-ID: <xqq2Z3iR9HJ.A.MVG.k1fDNB@chimera>
References: <ZRNlsjykcOD.A.b-F.20fDNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <ZRNlsjykcOD.A.b-F.20fDNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Tobias <devnull@plzk.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.35 and 2.6.36.

The following bug entry is on the current list of known regressions
introduced between 2.6.35 and 2.6.36.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22172
Subject		: alsa-util.c: snd_pcm_avail_delay() returned strange values: delay 0 is less than avail 32
Submitter	: Tobias <devnull@plzk.org>
Date		: 2010-11-06 09:33 (44 days old)

