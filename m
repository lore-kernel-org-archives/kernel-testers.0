From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #29852] 2.6.38-rc5: nfsd: page allocation failure. spinlock trylock failure on UP
Date: Sun, 27 Mar 2011 22:27:36 +0200 (CEST)
Message-ID: <40UNry85rJN.A.wxE.Jo5jNB@chimera>
References: <lDYNS4ATQ-N.A._aD.9m5jNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <lDYNS4ATQ-N.A._aD.9m5jNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Alexander Beregalov <a.beregalov@gmail.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.37.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=29852
Subject		: 2.6.38-rc5: nfsd: page allocation failure. spinlock trylock failure on UP
Submitter	: Alexander Beregalov <a.beregalov@gmail.com>
Date		: 2011-02-21 20:33 (35 days old)
Message-ID	: <AANLkTi=14N_c_B7mLY0H8Dt8pte6C0mjFnVuC37e44Hs@mail.gmail.com>
References	: http://marc.info/?l=linux-netdev&m=129832042402668&w=2

