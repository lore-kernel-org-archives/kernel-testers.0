From: Meelis Roos <mroos@linux.ee>
Subject: Re: [Bug #42776] OF-related boot crash in 3.3.0-rc3-00188-g3ec1e88
Date: Mon, 5 Mar 2012 09:26:01 +0200 (EET)
Message-ID: <alpine.SOC.1.00.1203050925000.22265@math.ut.ee>
References: <FNlNbnGKWLP.A.dME.3F9UPB@chimera> <hq7dqombK_C.A.M0E.KG9UPB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <hq7dqombK_C.A.M0E.KG9UPB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>

> Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42776
> Subject		: OF-related boot crash in 3.3.0-rc3-00188-g3ec1e88
> Submitter	: Meelis Roos <mroos@linux.ee>
> Date		: 2012-02-13 7:45 (21 days old)
> Message-ID	: <alpine.SOC.1.00.1202130942030.1488@math.ut.ee>
> References	: http://marc.info/?l=linux-kernel&m=132911916331615&w=2
> 		  http://marc.info/?l=linux-kernel&m=132993294018762&w=2

Works in 3.3-rc6. The patch is like a workaround if understand correctly 
but it cures the problem.

-- 
Meelis Roos (mroos@linux.ee)
