From: Michael Cree <mcree@orcon.net.nz>
Subject: Re: [Bug #25432] Alpha fails to build with gcc 4.4
Date: Tue, 08 Feb 2011 21:24:07 +1300
Message-ID: <4D50FDA7.3050803@orcon.net.nz>
References: <e9vOd5LzdBK.A.dyD.h6eSNB@chimera> <-tcJxClTQPH.A.TLF.d8eSNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <-tcJxClTQPH.A.TLF.d8eSNB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Ben Hutchings <ben@decadent.org.uk>

On 03/02/11 13:05, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> introduced between 2.6.36 and 2.6.37.  Please verify if it still should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=25432
> Subject		: Alpha fails to build with gcc 4.4
> Submitter	: Ben Hutchings<ben@decadent.org.uk>
> Date		: 2010-12-22 01:55 (43 days old)

Fixed by commit e2609f6aa2dce5d960ea1fe32f57524c315dede5.

Cheers
Michael.
