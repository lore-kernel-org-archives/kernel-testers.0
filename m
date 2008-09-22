From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [Bug #11552] Disabling IRQ #23
Date: Mon, 22 Sep 2008 06:53:46 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0809220651080.13379-100000@netrider.rowland.org>
References: <dd18b0c30809211616g658b50c8k2ea9f9953f1de96f@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <dd18b0c30809211616g658b50c8k2ea9f9953f1de96f-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>

On Sun, 21 Sep 2008, Justin Mattock wrote:

> From over here, I did a bad install
> of isight-firmware-tools, causing hal and udev
> to clash.  After making sure the package was either
> using hal or udev, there is no message of disable irq #23.
> If its not too much trouble is there a way to verify that this was
> the case, i.g. if udev creates a dev, then hal creates the same device
> will this cause ehci_hcd to have messages of this kind? If so
> then thats what happened, if not then theres something else causing this.

You didn't read what I wrote earlier, did you?  The "HC died" message 
should NEVER occur!  It doesn't matter what games you play with hal and 
udev -- it should NEVER occur.  Not ever.

And since the "HC died" is what causes IRQ #23 to be disabled, that 
shouldn't happen either.

Alan Stern
