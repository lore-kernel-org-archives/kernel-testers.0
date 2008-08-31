From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [regression] usb: sometimes dead keyboard after boot
Date: Sat, 30 Aug 2008 22:21:20 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0808302202250.514-100000@netrider.rowland.org>
References: <200808301640.21043.elendil@planet.nl>
Mime-Version: 1.0
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808301640.21043.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Kernel development list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, 30 Aug 2008, Frans Pop wrote:

> The patch seems to do exactly what I was looking for! Details further 
> down, but first some other comments.
> 
> 
> My first boot with your patch was with brltty still enabled. The log 
> showed the right result, but I wanted to get a cleaner log without all 
> the USB suspend/resume noise caused by brltty. So I disabled brltty's 
> init script and rebooted.
> 
> This gave a totally unexpected result: ehci now got loaded and initialized 
> _before_ uhci which of course avoids the problem altogether (see attached 
> log: dmesg_ehci-first). So apparently brltty's init script was 
> responsible not only for the suspend/resume noise, but also influenced 
> the load order of the two USB drivers.
> And apparently when things are left alone ehci _will_ be loaded before 
> uhci, but that does not match what you described in earlier mails as it 
> means the PCI bus order isn't followed. Confusing...

It _is_ confusing.  There's so much going on at boot time, with tons of
processes all trying to run at once...  Small changes can have
unexpectedly large effects.

What I said before was that the UHCI controllers are discovered and
registered before the EHCI controller.  That's different from the order
in which the drivers are loaded, however; driver loading is managed
by the hotplug infrastructure in userspace, which is outside the
kernel's control.  If your drivers had been built into the kernel
instead of as separate modules, then they would be probed in order of 
discovery -- which would mean ehci-hcd would _always_ come after 
uhci-hcd, not what you want.

(Actually even this might not be true any more.  There are patches in 
development which make certain parts of the kernel initialization, 
including driver probing, run in parallel threads rather than 
serially.)

> Anyway, this meant that to test your patch I had to try to get uhci to 
> load first again. This turned out to be simple: just adding uhci_hcd 
> in /etc/modules did the trick. The result is in dmesg_uhci-first.
> 
> That log shows what was desired, at least 3-1 and 4-1 get disconnected 
> cleanly and I get no error messages to the console. Yay!
> 
> I added two extra printk's around the usb_wait_for_khubd_idle call to show 
> the exact effect of the wait (look for "khubd_idle" in two messages). 
> These seem to show what was wanted: both keyboard and mouse are detected 
> during the wait.

So it worked as intended.

> But it also shows a few events on bus 3 and 4 that happen after I get 
> khubd_idle that seem to indicate the probe on that bus is not completely 
> finished and that could maybe still cause "problems". But maybe I'm just 
> reading it wrong and those events are part of the lead up to the 
> disconnects for the hand-off.

Both statements are correct.  The initialization of the devices on 
buses 3 and 4 _was_ complete.  But the drivers were loaded later, so 
driver probing and/or normal driver operation were in progress when 
ehci-hcd interrupted things.  Initialization != probing.

Remember what I said earlier, that EHCI initialization would interfere 
with _any_ ongoing operations on the companion controllers?  Now you're 
seeing that effect in action.

> Anyway, I'm quite happy with the result, so:
> Tested-by: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>

I still regard this more as a band-aid than anything else.  In fact, it 
should (in theory) be _safer_ to interrupt things during device 
initialization than later, after the driver has started up.  So I'm not 
at all certain the patch should be merged.

Tomorrow I'll try asking for comments from other people on the mailing
list...

Alan Stern

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
