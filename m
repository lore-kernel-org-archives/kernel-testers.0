From: Paul Bolle <pebolle@tiscali.nl>
Subject: Re: [Bug #41092] INFO: trying to register non-static key
 (sync_inodes_sb)
Date: Tue, 30 Aug 2011 13:53:27 +0200
Message-ID: <1314705207.1989.6.camel@x61.thuisdomein>
References: <Sm7qbRR0zn.A.yAG.LepWOB@chimera>
	 <gUVi6eNP8RE.A.nQG.fepWOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <gUVi6eNP8RE.A.nQG.fepWOB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>

On Sun, 2011-08-28 at 21:01 +0200, Rafael J. Wysocki wrote:
> Please verify if it still should
> be listed and let the tracking team know (either way).

From comment #2:
> [...] please note that the 3.0.1 kernel I
> triggered this issue with seems to be the first I ran on this machine that has
> CONFIG_LOCKDEP set. So on this machine this issue - if it's more than a one
> time goof - would never have showed up in the logs [...].

At this moment I see little reason to track this bug entry as a
regression.


Paul Bolle
