From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #13833] Kernel Oops when trying to suspend with ubifs mounted on block2mtd mtd device
Date: Tue, 28 Jul 2009 00:43:50 +0200
Message-ID: <200907280043.51688.rjw@sisk.pl>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.gfC.QHObKB@chimera> <20090727091623.GA16229@yamamaya.is-a-geek.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755499AbZG0WnS@vger.kernel.org>
In-Reply-To: <20090727091623.GA16229@yamamaya.is-a-geek.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Tobias Diedrich <ranma@tdiedrich.de>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, David Brownell <david-b@pacbell.net>, David Woodhouse <David.Woodhouse@intel.com>, Eric Miao <eric.y.miao@gmail.com>, Pavel Machek <pavel@ucw.cz>

On Monday 27 July 2009, Tobias Diedrich wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> 
> 
> Well, the patch reverting the commit still applies to 2.6.31-rc4, so
> I assume the issue persists,but I have not tried an unpatched
> 2.6.31-rc4.

Thanks for the update.

Rafael
