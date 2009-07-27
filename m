From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [Bisected] [Bug #13821] Replugging USB serial converter uses
 new device node
Date: Mon, 27 Jul 2009 11:34:55 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0907271131100.5217-100000@iolanthe.rowland.org>
References: <20090727022623.GA6614@Pilar.aei.mpg.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090727022623.GA6614-8NNKxJcwqxqHjx4iBuKRcg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>, Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Mon, 27 Jul 2009, Carlos R. Mafra wrote:

> On Sun 26.Jul'09 at 22:28:27 +0200, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13821
> > Subject		: Replugging USB serial converter uses new device node
> > Submitter	: Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>
> > Date		: 2009-07-18 20:04 (9 days old)
> > References	: http://marc.info/?l=linux-kernel&m=124794754015776&w=4
> 
> I was scanning the regressions list and noticed that I could reproduce
> this bug.
> 
> So I bisected it to commit 335f8514f200e63d689113d29cb7253a5c282967
> ("tty: Bring the usb tty port structure into more use"), from Alan
> Cox.
> 
> I did not double check if reverting it from -rc4 fixes the issue,
> but I noticed that this patch touches drivers/usb/serial/option.c, which
> is the driver I used to test this problem.
> 
> If there is anything else I can do (give more info, test patches etc),
> please let me know.

Are you certain this really is a regression?  Under 2.6.30 and 2.6.27
the same thing happened if I unplugged a USB serial device while it was
in use.

Can you check whether the device is still being used when you unplug 
it?  For instance, is there still a pppd process trying to communicate 
with the device?  If there is, what happens if you kill all the 
processes using the serial device before you unplug it?

In short, it seems likely that this is not new behavior but rather the 
way usb-serial has worked all along.

Alan Stern
