From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #24582] Kernel Oops at tty_buffer_request_room when using pppd program (2.6.37-rc4)
Date: Mon, 21 Feb 2011 23:37:05 +0100 (CET)
Message-ID: <f14qsMvj2tF.A.RfE.ReuYNB@chimera>
References: <JwKd6rET8XO.A._ZC.gbuYNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <JwKd6rET8XO.A._ZC.gbuYNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, baoyb <baoyb@avit.org.cn>, Jiri Slaby <jslaby@suse.cz>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=24582
Subject		: Kernel Oops at tty_buffer_request_room when using pppd program (2.6.37-rc4)
Submitter	: baoyb <baoyb@avit.org.cn>
Date		: 2010-12-08 13:55 (76 days old)
Message-ID	: <EF6DDE218DB34702B1FA84D6CD7EA771@baoyb>
References	: http://marc.info/?l=linux-kernel&m=129181763525738&w=2
Handled-By	: Jiri Slaby <jslaby@suse.cz>
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=47872

