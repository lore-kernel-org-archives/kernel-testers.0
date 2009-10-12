From: Chuck Ebbert <cebbert@redhat.com>
Subject: Re: [Bug #14143] OOPS when setting nr_requests for md devices
Date: Mon, 12 Oct 2009 10:21:24 -0400
Message-ID: <20091012102124.2b574d21@katamari.usersys.redhat.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
	<L6tb-VyKHZK.A.0sD.N0l0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756846AbZJLOX1@vger.kernel.org>
In-Reply-To: <L6tb-VyKHZK.A.0sD.N0l0KB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, aCaB <acab@clamav.net>

On Mon, 12 Oct 2009 01:01:05 +0200 (CEST)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14143
> Subject		: OOPS when setting nr_requests for md devices
> Submitter	: aCaB <acab@clamav.net>
> Date		: 2009-09-08 08:48 (34 days old)
> 

Fixed in 2.6.32 by commit b8a9ae77 ("block: don't assume device has a
request list backing in nr_requests store")

Also in 2.6.31.1
