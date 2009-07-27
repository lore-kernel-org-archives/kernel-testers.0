From: "Carlos R. Mafra" <crmafra2@gmail.com>
Subject: Re: [Bisected] [Bug #13821] Replugging USB serial converter uses
	new device node
Date: Mon, 27 Jul 2009 19:22:54 +0200
Message-ID: <20090727172254.GA19576@Pilar.aei.mpg.de>
References: <87zlaqcec1.fsf@tac.ki.iif.hu> <Pine.LNX.4.44L0.0907271217441.5217-100000@iolanthe.rowland.org> <20090727164857.GA8908@Pilar.aei.mpg.de> <20090727175525.20ac4869@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753692AbZG0RYC@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20090727175525.20ac4869@lxorguk.ukuu.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan@lxorguk.ukuu.org.uk>
Cc: Alan Stern <stern@rowland.harvard.edu>, Ferenc Wagner <wferi@niif.hu>, Greg KH <greg@kroah.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>, Kay Sievers <kay.sievers@vrfy.org>, "Rafael J. Wysocki" <rjw@sisk.pl>

On Mon 27.Jul'09 at 17:55:25 +0100, Alan Cox wrote:
> > > Another thing to check is whether this patch (not yet merged) fixes it:
> > > 
> > > 	http://marc.info/?l=linux-usb&m=124825571403844&w=2
> > 
> > No, unfortunately it does not fix it. I've just tested it.
> 
> I wouldn't expect it to.
> 
> In the ppp case you have this occuring on an unplug
> 
> 	USB layer
> 		unplug
> 		hangup tty
> 	PPPD
> 		SIGHUP
> 		ouch
> 		log stuff
> 		close down
> 
> However at the same time that PPPD is logging stuff and closing down th
> USB layer is going to see the replug if you just unplug/replug quickly
> and in that case you will get ttyUSB1. That aspect is timing dependant.

Ok, so how long is "quickly" here? During bisection I typically waited ~30 secs 
and there was no pppd listed on 'ps aux' when I reconnected it.

> If everything has closed down and given the port back before you replug
> it you should get ttyUSB0 again.
> #

I don't know what to say. I believe in you, of course, but I am not 
seeing what you expect. For example, after sending the last email
I unplugged it and went back to work until I read this reply of
yours. So I did this,

[mafra@Pilar:5-pts-tree-level]$ ls /dev/ttyU*
ls: cannot access /dev/ttyU*: No such file or directory

which is OK, because the stick was not plugged in all this time. So
then I plugged it and got this,

[mafra@Pilar:5-pts-tree-level]$ ls /dev/ttyU*
/dev/ttyUSB1  /dev/ttyUSB2

And it took a lot longer than 30 secs this time, more than 5 minutes
for sure (and I don't see anything suspect in the output of 'ps aux').

And the fact that is, reverting your commit made things work under
the same testing conditions.

Do you have any suggestions as to what I should do between unplugging
and plugging it back?
