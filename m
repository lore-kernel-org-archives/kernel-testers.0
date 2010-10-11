From: Marc Aurele La France <tsi@ualberta.ca>
Subject: Re: [Bug #20002] x86_64 2.6.35.* kernels and Intel Xeon X5550
Date: Mon, 11 Oct 2010 13:33:15 -0600 (Mountain Daylight Time)
Message-ID: <alpine.WNT.1.10.1010111327090.1620@tsi>
References: <pyPtebg28EI.A.ZPH.NvgsMB@chimera> <yeAD7A8RDxC.A.dVH.UvgsMB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <yeAD7A8RDxC.A.dVH.UvgsMB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>

On Sun, 10 Oct 2010, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.

> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> be listed and let the tracking team know (either way).

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20002
> Subject	: x86_64 2.6.35.* kernels and Intel Xeon X5550
> Submitter	: Marc Aurele La France <tsi@ualberta.ca>
> Date		: 2010-10-07 17:17 (4 days old)
> Message-ID	: <alpine.WNT.2.00.1010071055420.1672@cluij.ucs.ualberta.ca>
> References	: http://marc.info/?l=linux-kernel&m=128647187628706&w=2

Yes, this is still an issue.  I'm still trying to track it down.  I've 
generated a series of 2.6.35-rc[1-6] kernels, which I will try tomorrow 
(after today's statuatory holiday).

Thanks.

Marc.

+----------------------------------+----------------------------------+
|  Marc Aurele La France           |  work:   1-780-492-9310          |
|  Academic Information and        |  fax:    1-780-492-1729          |
|    Communications Technologies   |  email:  tsi@ualberta.ca         |
|  352 General Services Building   +----------------------------------+
|  University of Alberta           |                                  |
|  Edmonton, Alberta               |    Standard disclaimers apply    |
|  T6G 2H1                         |                                  |
|  CANADA                          |                                  |
+----------------------------------+----------------------------------+
