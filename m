From: Krzysztof Halasa <khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 18:26:27 +0200
Message-ID: <m38wtgw5sc.fsf@maximus.localdomain>
References: <20080923.150722.141587696.davem@davemloft.net>
	<9929d2390809231512w160d221axa2923a6b293a041@mail.gmail.com>
	<alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>
	<20080923.211215.193696086.davem@davemloft.net>
	<alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz>
	<21d7e9970809241722w7c3bb6a5w1af5801b7380169d@mail.gmail.com>
	<48DB12C9.5080104@gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48DB12C9.5080104-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> (Jesse Brandeburg's message of "Wed\, 24 Sep 2008 21\:25\:45 -0700")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Brandeburg <jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org

Jesse Brandeburg <jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> writes:

> I'm really sorry to hear that, I wonder if the laptop has an
> "emergency bios update" mode like many PCs used to through a jumper.
> Dave A., let us know if you make any recovery progress.

I guess it's more about the E1000's serial configuration EEPROM, the
registers seem to live in BAR0 (EECD and for reading perhaps EERD).
Corrupted EEPROM (and thus PCI config registers) can easily result in
a dead machine.

I will be writing a tool for writing 82541PI EEPROMs on a custom
board soon (unless there is one available, for Linux, of course),
I only have to fight non-working JTAG first :-)

> I plan to try some random writes tomorrow to my BAR1 space and see if
> my flash gets erased.

I'm not sure it's the flash that is corrupted. Anyway booting the
laptop should be quite easy (physically disabling the EEPROM on boot
should do the trick), though it would require taking the machine
apart.
-- 
Krzysztof Halasa
