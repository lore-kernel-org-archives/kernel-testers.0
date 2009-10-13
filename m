From: Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [Bug #14264] ehci problem - mouse dead on scroll
Date: Tue, 13 Oct 2009 11:35:03 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0910131132150.3169-100000@iolanthe.rowland.org>
References: <L6tb-VyKHZK.A.QvC.nzl0KB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760311AbZJMPfn@vger.kernel.org>
In-Reply-To: <L6tb-VyKHZK.A.QvC.nzl0KB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Oliver Neukum <oliver@neukum.org>, Volker Armin Hemmann <volkerarmin@googlemail.com>

On Mon, 12 Oct 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14264
> Subject		: ehci problem - mouse dead on scroll
> Submitter	: Volker Armin Hemmann <volkerarmin@googlemail.com>
> Date		: 2009-09-12 7:46 (30 days old)
> References	: http://marc.info/?l=linux-kernel&m=125274202707893&w=4
> Handled-By	: Alan Stern <stern@rowland.harvard.edu>

This is probably a hardware problem in the mouse or the Logitech
receiver.  It affected both EHCI and OHCI, and it was not reproducible
with a different mouse.  But Volker hasn't reported any results since
the end of September.

Volker, another good test would be to try plugging your mouse into 
someone else's computer.

Alan Stern
