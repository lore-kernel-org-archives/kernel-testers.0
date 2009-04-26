From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #13114] USB storage (usbstick) automount woes
Date: Mon, 27 Apr 2009 01:15:23 +0200
Message-ID: <200904270115.23850.rjw@sisk.pl>
References: <Pine.LNX.4.44L0.0904261457540.24895-100000@netrider.rowland.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753980AbZDZXPi@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44L0.0904261457540.24895-100000@netrider.rowland.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Greg Kroah-Hartman <gregkh@suse.de>, Mike Galbraith <efault@gmx.de>

On Sunday 26 April 2009, Alan Stern wrote:
> On Sat, 25 Apr 2009, Rafael J. Wysocki wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13114
> > Subject		: USB storage (usbstick) automount woes
> > Submitter	: Mike Galbraith <efault@gmx.de>
> > Date		: 2009-04-09 9:26 (17 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=e6e244b6cb1f70e7109381626293cd40a8334ed3
> > References	: http://marc.info/?l=linux-kernel&m=123926928907568&w=4
> > Handled-By	: Alan Stern <stern@rowland.harvard.edu>
> 
> This has been fixed by commit dfc15e8955338fedf5c5d15622c4042c1e4ee332.

Thanks, closed.

Rafael
