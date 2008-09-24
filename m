From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 18:56:01 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809241852230.4671@pegasus.suse.cz>
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
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Wed, 24 Sep 2008, Jonathan Corbet wrote:

> A data point, just in case it helps...  I've not had time to update my 
> desktop system, so this all-Intel, ICH9, e1000e-based box has been stuck 
> at 2.6.27-rc3.  It has rawhide as of shortly after the floodgates 
> reopened (but with my own kernel); that means X server 1.5.0 and i810 
> 2.4.2-3.
> It's happy as a clam. I'm not sure how often this problem bites, but it
> hasn't gotten me.

Thanks for the information.

Seems like it quite often triggers during the very first probing of 
graphics card during the initial X startup. Karsten is currently writing a 
tool that will safely restore the EEPROM contents to the card. When this 
gets done, testing will get much easier and hopefully we'll be able to 
isolate whether it is e1000e driver (I currently don't think so), DRM 
kernel code, or xorg 7.4 causing this.

Thanks,

-- 
Jiri Kosina
SUSE Labs
