From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #20182] 2.6.36-rc7: NULL pointer dereference in ehci_clear_tt_buffer_complete
Date: Sun, 17 Oct 2010 23:29:02 +0200
Message-ID: <201010172329.02356.rjw@sisk.pl>
References: <TP5BfCZNRXD.A._8.uj1uMB@chimera> <7N-qxsaxKCN.A.2vB.Nk1uMB@chimera> <4CBB6884.7040003@s5r6.in-berlin.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4CBB6884.7040003@s5r6.in-berlin.de>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Stefan Richter <stefanr@s5r6.in-berlin.de>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Alan Stern <stern@rowland.harvard.edu>, David Brownell <david-b@pacbell.net>, linux-usb@vger.kernel.org

On Sunday, October 17, 2010, Stefan Richter wrote:
> Rafael J. Wysocki wrote:
> > The following bug entry is on the current list of known regressions
> > from 2.6.35.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20182
> > Subject		: 2.6.36-rc7: NULL pointer dereference in ehci_clear_tt_buffer_complete
> 
> The bug could not be reproduced so far but might be real nonetheless.
> Alan Stern proposed a fix patch:
> <Pine.LNX.4.44L0.1010131011160.2311-100000@iolanthe.rowland.org>
> http://lkml.org/lkml/2010/10/13/178

Thanks, I've updated the bug with the patch information.

Rafael
