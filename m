From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 18:37:19 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809241836180.4671@pegasus.suse.cz>
References: <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>  <20080924.003638.71148740.davem@davemloft.net>  <21d7e9970809240159u6db747eex51892061846b2251@mail.gmail.com>  <20080924.020116.193720569.davem@davemloft.net>
 <21d7e9970809240216m4a93a339sb51a5928fcb5f6fb@mail.gmail.com> <alpine.LNX.1.10.0809241829500.4671@pegasus.suse.cz>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LNX.1.10.0809241829500.4671-JCEl3tv+2Z8CVLCxKZUutA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Wed, 24 Sep 2008, Jiri Kosina wrote:

> Dave (Airlie, too many Daves on CC here really), do you by any chance 
> see any recent change in kernel intel graphic parts of DRM be causing 
> this breakage?

BTW, why is the PAT fix implented in commit 242e3df80 needed only for 
radeons?

-- 
Jiri Kosina
SUSE Labs
