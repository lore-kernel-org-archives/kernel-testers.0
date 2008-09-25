From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 22:45:24 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809252243090.3389@pegasus.suse.cz>
References: <20080923.150722.141587696.davem@davemloft.net> <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz> <200809241726.58628.jbarnes@virtuousgeek.org> <200809251243.43441.jbarnes@virtuousgeek.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200809251243.43441.jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Thu, 25 Sep 2008, Jesse Barnes wrote:

> Here's a patch that adds range checking to the sysfs mappings at least.  
> This patch should catch the case where X (or some other process) tries 
> to map beyond the specific BAR it's (supposedly) trying to access, 
> making things safer in general.  FWIW both my F9 and development 
> versions of X start up fine with this patch applied.

Good. We will use this on affected machines after we start some real 
debugging of this.

> +	/*
> +	 * Make sure the range the user is trying to map falls within
> +	 * the resource
> +	 */
> +	if (map_offset + map_len > pci_resource_len(pdev, i))
> +		return -EINVAL;
> +

At least for debugging purposes I'd propose to put a printk() there with 
process name, and the range it tries to map.

Thanks,

-- 
Jiri Kosina
SUSE Labs
