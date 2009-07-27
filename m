From: Alan Stern <stern@rowland.harvard.edu>
Subject: Re: [Bisected] [Bug #13821] Replugging USB serial converter uses
 new device node
Date: Mon, 27 Jul 2009 12:18:36 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0907271217441.5217-100000@iolanthe.rowland.org>
References: <87zlaqcec1.fsf@tac.ki.iif.hu>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752953AbZG0QSh@vger.kernel.org>
In-Reply-To: <87zlaqcec1.fsf@tac.ki.iif.hu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ferenc Wagner <wferi@niif.hu>
Cc: "Carlos R. Mafra" <crmafra2@gmail.com>, Greg KH <greg@kroah.com>, Alan Cox <alan@lxorguk.ukuu.org.uk>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>, Kay Sievers <kay.sievers@vrfy.org>, "Rafael J. Wysocki" <rjw@sisk.pl>

On Mon, 27 Jul 2009, Ferenc Wagner wrote:

> > Are you certain this really is a regression?  Under 2.6.30 and 2.6.27
> > the same thing happened if I unplugged a USB serial device while it was
> > in use.
> 
> My original report is about unplugging the USB servial device *after*
> using it.
> 
> > Can you check whether the device is still being used when you unplug 
> > it?  For instance, is there still a pppd process trying to communicate 
> > with the device?
> 
> I checked and rechecked that the pppd process is already dead by the
> time I unplug the device.  However, the minor number did not increase
> if I unplugged the device without using it beforehand, as expected.
> 
> > In short, it seems likely that this is not new behavior but rather the 
> > way usb-serial has worked all along.
> 
> I didn't experience this problem with 2.6.30: my ppp script was
> hardwired to use ttyUSB0 and it always worked.  Now with 2.6.31-rc3 it
> does not, as the device node keeps changing.
> 
> I'll test this with opening ttyUSB directly from the shell, instead of
> via pppd, and report back whether it makes a difference.

Another thing to check is whether this patch (not yet merged) fixes it:

	http://marc.info/?l=linux-usb&m=124825571403844&w=2

Alan Stern
