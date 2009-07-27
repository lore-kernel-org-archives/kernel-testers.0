From: Peter Zijlstra <a.p.zijlstra@chello.nl>
Subject: Re: [Bug #13730] hitting lockdep limits...
Date: Mon, 27 Jul 2009 08:21:40 +0200
Message-ID: <1248675700.6987.1416.camel@twins>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
	 <3zAHs5O6maO.A.c9D.3HObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752898AbZG0GTX@vger.kernel.org>
In-Reply-To: <3zAHs5O6maO.A.c9D.3HObKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Daniel J Blueman <daniel.blueman@gmail.com>

On Sun, 2009-07-26 at 22:28 +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13730
> Subject		: hitting lockdep limits...
> Submitter	: Daniel J Blueman <daniel.blueman@gmail.com>
> Date		: 2009-07-05 18:19 (22 days old)
> References	: http://marc.info/?l=linux-kernel&m=124681799023782&w=4
> 


Is this still a problem after?

commit b0a5b83ee0fce9dbf8ff5fe1f8c9ae7dfafe458c
Author: Ingo Molnar <mingo@elte.hu>
Date:   Tue Jun 16 16:11:14 2009 +0200

    dma-debug: Put all hash-chain locks into the same lock class

