From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 03:27:05 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809250310190.4671@pegasus.suse.cz>
References: <20080923.150722.141587696.davem@davemloft.net>  <9929d2390809231512w160d221axa2923a6b293a041@mail.gmail.com>  <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>  <20080923.211215.193696086.davem@davemloft.net>  <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz>
 <21d7e9970809241722w7c3bb6a5w1af5801b7380169d@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970809241722w7c3bb6a5w1af5801b7380169d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Thu, 25 Sep 2008, Dave Airlie wrote:

> Well I'm out of the race, my attempts to re-write my eeprom using an 
> eeprom from an equivalent laptop have totally failed and my BIOS won't 
> boot anymore - so my laptop is == a brick.

Uh oh. Shouldn't we put something like the patch below in Linus' tree 
unless we get this sorted out? Otherwise more and more people who use -rc 
kernels will run into this, and will get their hardware [hopefully 
temporarily, but not all users are able to re-flash their network card 
EEPROMs, right] bricked.

I know that it is quite aggressive and is going to disable wired 
networking on a lot of systems that have been functioning properly, 
therefore RFC ...



From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: [PATCH] [RFC] E1000E: temporarily disable e1000e driver

E1000E: temporarily disable e1000e driver

There is a serious bug somewhere, that renders e1000e network cards 
unusable on certain hardware configurations by rewriting EEPROM with 0xff 
all over. Debugging this is not trivial, because:

- it is not yet even clear whether the bug is caused by userspace (new 
  version of xorg drivers, bad interaction with PAT, ...) or some bug in 
  kernel code; it's even not yet certain at which exact combination of 
  software versions and hardware configuration this started to trigger
- you have only one attempt to test potential fix. If the fix doesn't 
  work, the eeprom of the card is hosed

and therefore fixing this has potential to take some time.

The tool that will safely restore the previous contents of EEPROM is 
currently being written, but even this is not trivial (Dave Airlie has 
turned his notebook into brick while trying to restore the EEPROM 
contents).

Let's therefore mark this driver as broken (though it is very well 
possible that this particular driver is not at fault at all) until this 
gets resolved, so that users of -rc kernels don't get their network cards 
totally unusable.

References (information about sw/hw configurations of affected systems 
might be found in the bugzillas):

	http://lkml.org/lkml/2008/8/8/123
	http://lkml.org/lkml/2008/9/22/23

	http://bugzilla.kernel.org/show_bug.cgi?id=11382

	https://bugzilla.novell.com/show_bug.cgi?id=425480
	https://bugzilla.redhat.com/show_bug.cgi?id=459202
	https://bugs.launchpad.net/ubuntu/+source/linux/+bug/263555
	https://qa.mandriva.com/show_bug.cgi?id=44147

Signed-off-by: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>

--- 

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 4a11296..2d7a7f2 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -1938,7 +1938,7 @@ config E1000_DISABLE_PACKET_SPLIT
 
 config E1000E
 	tristate "Intel(R) PRO/1000 PCI-Express Gigabit Ethernet support"
-	depends on PCI && (!SPARC32 || BROKEN)
+	depends on PCI && BROKEN
 	---help---
 	  This driver supports the PCI-Express Intel(R) PRO/1000 gigabit
 	  ethernet family of adapters. For PCI or PCI-X e1000 adapters,
