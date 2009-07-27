From: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bisected] [Bug #13821] Replugging USB serial converter uses
	new device node
Date: Mon, 27 Jul 2009 14:01:42 +0200
Message-ID: <20090727120142.GA13407@Pilar.aei.mpg.de>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.p7C.WHObKB@chimera> <20090727022623.GA6614@Pilar.aei.mpg.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090727022623.GA6614-8NNKxJcwqxqHjx4iBuKRcg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>, Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Mon 27.Jul'09 at  4:26:23 +0200, Carlos R. Mafra wrote:
> 
> So I bisected it to commit 335f8514f200e63d689113d29cb7253a5c282967
> ("tty: Bring the usb tty port structure into more use"), from Alan
> Cox.
> 
> I did not double check if reverting it from -rc4 fixes the issue,
> but I noticed that this patch touches drivers/usb/serial/option.c, which
> is the driver I used to test this problem.

It doesn't revert cleanly from -rc4, but I solved the conflicts in
option.c and usb-serial.c (I wanted to learn how to do it) 
and the problem gets fixed indeed.
