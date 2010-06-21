From: Sachin Sant <sachinp@in.ibm.com>
Subject: Re: [Bug #16178] 2.6.35-rc2 : OOPS with LTP memcg regression test
 run.
Date: Mon, 21 Jun 2010 10:15:08 +0530
Message-ID: <4C1EEE54.9000902@in.ibm.com>
References: <lc60d4toGTL.A.QzD._LpHMB@chimera> <W8JfMs9cZw.A.O8F.UNpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <W8JfMs9cZw.A.O8F.UNpHMB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> know (either way).
>   
This has been fixed by commit 386f40.
This was yet another instance of memory corruption caused by issue
related to ASCII while space pattern.

>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16178
> Subject		: 2.6.35-rc2 : OOPS with LTP memcg regression test run.
> Submitter	: Sachin Sant <sachinp@in.ibm.com>
> Date		: 2010-06-06 15:18 (15 days old)
> Message-ID	: <4C0BB98E.9030101@in.ibm.com>
> References	: http://marc.info/?l=linux-kernel&m=127583683912607&w=2
>
>
>   


-- 

---------------------------------
Sachin Sant
IBM Linux Technology Center
India Systems and Technology Labs
Bangalore, India
---------------------------------
