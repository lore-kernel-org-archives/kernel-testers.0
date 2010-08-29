From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16626] Machine hangs with EIP at skb_copy_and_csum_dev
Date: Mon, 30 Aug 2010 00:24:52 +0200 (CEST)
Message-ID: <4AUWBNzTkbD.A.ey.cGueMB@chimera>
References: <4LwrqITm-eJ.A.r8G.eFueMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4LwrqITm-eJ.A.r8G.eFueMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <eric.dumazet@gmail.com>, Jarek Poplawski <jarkao2@gmail.com>, Jarek Poplawski <jarkao2@gmail.com>, Plamen Petrov <pvp-lsts@fs.uni-ruse.bg>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.35.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16626
Subject		: Machine hangs with EIP at skb_copy_and_csum_dev
Submitter	: Plamen Petrov <pvp-lsts@fs.uni-ruse.bg>
Date		: 2010-08-19 09:57 (11 days old)
Handled-By	:  Eric Dumazet <eric.dumazet@gmail.com>

