From: Stephan von Krawczynski <skraw@ithnet.com>
Subject: Re: [Bug #13648] nfsd: page allocation failure
Date: Mon, 27 Jul 2009 13:04:20 +0200
Message-ID: <20090727130420.1514cf5c.skraw@ithnet.com>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera>
	<H5-1lZIIeYK.A.HXG.DXObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756055AbZG0LE0@vger.kernel.org>
In-Reply-To: <H5-1lZIIeYK.A.HXG.DXObKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, David Rientjes <rientjes@google.com>, Justin Piszcz <jpiszcz@lucidpixels.com>

On Sun, 26 Jul 2009 22:45:33 +0200 (CEST)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13648
> Subject		: nfsd: page allocation failure
> Submitter	: Justin Piszcz <jpiszcz@lucidpixels.com>
> Date		: 2009-06-22 12:08 (35 days old)
> References	: http://lkml.org/lkml/2009/6/22/309
> 		  http://marc.info/?l=linux-kernel&m=124748600712853&w=4
> 

This is no regression between 2.6.29 and 2.6.30.
In fact we could reproduce the problem with kernel versions:

2.6.27.26 < X <= 2.6.30.3

(Meaning 2.6.27.26 is the last one _not_ showing the problem).

-- 
Regards,
Stephan
