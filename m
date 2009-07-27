From: "Carlos R. Mafra" <crmafra2@gmail.com>
Subject: Re: [Bisected] [Bug #13821] Replugging USB serial converter uses
	new device node
Date: Mon, 27 Jul 2009 18:20:44 +0200
Message-ID: <20090727162044.GA9657@Pilar.aei.mpg.de>
References: <Pine.LNX.4.44L0.0907271131100.5217-100000@iolanthe.rowland.org> <87zlaqcec1.fsf@tac.ki.iif.hu>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753085AbZG0QVx@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <87zlaqcec1.fsf@tac.ki.iif.hu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ferenc Wagner <wferi@niif.hu>
Cc: Alan Stern <stern@rowland.harvard.edu>, Greg KH <greg@kroah.com>, Alan Cox <alan@lxorguk.ukuu.org.uk>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>, Kay Sievers <kay.sievers@vrfy.org>, "Rafael J. Wysocki" <rjw@sisk.pl>

On Mon 27.Jul'09 at 17:53:18 +0200, Ferenc Wagner wrote:
> Alan Stern <stern@rowland.harvard.edu> writes:
> >
> > Are you certain this really is a regression?  Under 2.6.30 and 2.6.27
> > the same thing happened if I unplugged a USB serial device while it was
> > in use.
> 
> My original report is about unplugging the USB servial device *after*
> using it.

Yes, I did this:

     1) plug the surfstick
     2) connect to the internert (with draknetcenter)
     3) disconnect (and wait a bit)
     4) unplug the surfstick (and wait a bit)

Then when I plug it again, the devices created are /dev/ttyUSB{1,2} instead
of /dev/ttyUSB{0,1}.

That breaks 'draknetcenter', because if I try to connect again it
says that /dev/ttyUSB0 can not be found.

And during the bisection, for the commits which were marked "good", there
was no problem to reconnect and 'draknetcenter' was happy (although perhaps
it should not be so dependent on /dev/tttyUSB0 only, but that is another
story).
