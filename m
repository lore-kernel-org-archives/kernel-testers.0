From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Fri, 26 Sep 2008 00:45:57 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809260042380.3389@pegasus.suse.cz>
References: <20080923.150722.141587696.davem@davemloft.net>  <200809251156.10648.jbarnes@virtuousgeek.org>  <alpine.LNX.1.10.0809252218470.3389@pegasus.suse.cz>  <200809251236.12287.jbarnes@virtuousgeek.org>  <alpine.LNX.1.10.0809252234400.3389@pegasus.suse.cz>
  <21d7e9970809251406gb2bdacbuf9ff1bde3d118cdb@mail.gmail.com>  <4807377b0809251442x67e4e9eia706b70ae1c177ca@mail.gmail.com> <21d7e9970809251445s216efcc3kaba639d5e29c51aa@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970809251445s216efcc3kaba639d5e29c51aa-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Jesse Brandeburg <jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Fri, 26 Sep 2008, Dave Airlie wrote:

> >> I'd target three areas PAT, pciaccess and e1000e itself.
> > ubuntu has CONFIG_X86_PAT disabled for at least i386 arch, maybe that
> > is relevant.
> It rules out PAT I suppose, they have seen the issue as well.

I wasn't able to rule out PAT from the suse bugreports POV, as we have PAT 
enabled both for 32bit and 64bit x86.

If Ubuntu has it disabled also for 64bit x86 (where do these guys have 
.config files to check?), I think we can definitely rule out PAT, as there 
has been at least one report from Ubuntu user on this very issue.

-- 
Jiri Kosina
SUSE Labs
