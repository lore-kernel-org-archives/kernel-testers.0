From: "Kok, Auke" <auke-jan.h.kok-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 13:45:01 -0700
Message-ID: <48DBF84D.6020905@intel.com>
References: <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz> <20080923.211215.193696086.davem@davemloft.net> <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com> <20080924.003638.71148740.davem@davemloft.net> <20080924191022.GC2591@phobos.i.cabal.ca> <alpine.LNX.1.10.0809250036090.4671@pegasus.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LNX.1.10.0809250036090.4671-JCEl3tv+2Z8CVLCxKZUutA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Cc: Kyle McMartin <kyle-pfcGkIkfWfAsA/PxXw9srA@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

Jiri Kosina wrote:
> On Wed, 24 Sep 2008, Kyle McMartin wrote:
> 
>> I've been working on a patch to detect (using a timer and checking at
>>  up/down) whether or not the flash has been corrupted, and, if it is
>> rewrite it with the saved good copy (which obviously only helps if
>> it's the same boot.)
> 
> Thanks, looks interesting e1000e hack that might possibly be of some help.
> 
> BUT! please have a look at
> 
> 	http://lkml.org/lkml/2008/9/24/133
> 
> Looks like this device got a lot of 0xff written somewhere in its config 
> space, right? But it isn't Intel card at all.

I asked that person and he said reverting to an older kernel made it work again,
also there is a fix out as romieu pointed out as well, so this seems to be a
different bug for now.

Auke
