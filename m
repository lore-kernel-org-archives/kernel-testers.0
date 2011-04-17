From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #29852] 2.6.38-rc5: nfsd: page allocation failure. spinlock trylock failure on UP
Date: Sun, 17 Apr 2011 15:52:09 +0200 (CEST)
Message-ID: <IqJL5EkbqD.A.lyF.a5uqNB@chimera>
References: <sam8u5dLkaB.A.afE.53uqNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <sam8u5dLkaB.A.afE.53uqNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Alexander Beregalov <a.beregalov@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.37 and 2.6.38.

The following bug entry is on the current list of known regressions
introduced between 2.6.37 and 2.6.38.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=29852
Subject		: 2.6.38-rc5: nfsd: page allocation failure. spinlock trylock failure on UP
Submitter	: Alexander Beregalov <a.beregalov@gmail.com>
Date		: 2011-02-21 20:33 (56 days old)
Message-ID	: <AANLkTi=14N_c_B7mLY0H8Dt8pte6C0mjFnVuC37e44Hs@mail.gmail.com>
References	: http://marc.info/?l=linux-netdev&m=129832042402668&w=2

