From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 21:01:14 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809252057530.3389@pegasus.suse.cz>
References: <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz> <20080923.211215.193696086.davem@davemloft.net> <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com> <20080924.003638.71148740.davem@davemloft.net>
 <20080924102730.31ee305a@bike.lwn.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080924102730.31ee305a-vw3g6Xz/EtPk1uMJSBkQmQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jonathan Corbet <corbet-T1hC0tSOHrs@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Wed, 24 Sep 2008, Jonathan Corbet wrote:

> A data point, just in case it helps...  I've not had time to update my
> desktop system, so this all-Intel, ICH9, e1000e-based box has been stuck
> at 2.6.27-rc3.  It has rawhide as of shortly after the floodgates
> reopened (but with my own kernel); that means X server 1.5.0 and i810
> 2.4.2-3.

If any of you guys has Lenovo thinkpad (T60p ideally) with 8086:104b 
revision 3 card, could you please send me the respective "ethtool -e" 
dump?

Thanks,

-- 
Jiri Kosina
SUSE Labs
