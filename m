From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 13:51:23 +1000
Message-ID: <21d7e9970809242051x17785159ya7510d92f705f3cf@mail.gmail.com>
References: <20080923.150722.141587696.davem@davemloft.net>
	 <9929d2390809231512w160d221axa2923a6b293a041@mail.gmail.com>
	 <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>
	 <20080923.211215.193696086.davem@davemloft.net>
	 <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz>
	 <21d7e9970809241722w7c3bb6a5w1af5801b7380169d@mail.gmail.com>
	 <alpine.LNX.1.10.0809250310190.4671@pegasus.suse.cz>
	 <48DAF75D.4050908@garzik.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=FmiUIRc+1UQBmtbHnB9nmhhm787nxpxrNUoogef5iV4=;
        b=SZECwgt8u8bbNXABVXrCbqMobtgpJDlc2ZPvGT0ZyDCMnC6WIloLzDQUPi+fSlZSe4
         xucakAWwEN1xNHthlwLGGxKJK/Wm6ByomqsADj5kUmkXqmVZqkwYs5fdlPJDUPMrTveg
         MMThUren9Xhd8C++lBSSkGklpHx9+sKcozXRI=
In-Reply-To: <48DAF75D.4050908-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
Cc: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Thu, Sep 25, 2008 at 12:28 PM, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org> wrote:
> Jiri Kosina wrote:
>>
>> On Thu, 25 Sep 2008, Dave Airlie wrote:
>>
>>> Well I'm out of the race, my attempts to re-write my eeprom using an
>>> eeprom from an equivalent laptop have totally failed and my BIOS won't boot
>>> anymore - so my laptop is == a brick.
>>
>> Uh oh. Shouldn't we put something like the patch below in Linus' tree
>> unless we get this sorted out? Otherwise more and more people who use -rc
>> kernels will run into this, and will get their hardware [hopefully
>> temporarily, but not all users are able to re-flash their network card
>> EEPROMs, right] bricked.
>>
>> I know that it is quite aggressive and is going to disable wired
>> networking on a lot of systems that have been functioning properly,
>> therefore RFC ...
>>
>>
>>
>> From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
>> Subject: [PATCH] [RFC] E1000E: temporarily disable e1000e driver
>>
>> E1000E: temporarily disable e1000e driver
>
> That seems a bit drastic, particularly when the debugging was beginning to
> point to another culprit.
>
> We have equal case at this point to disable r8169 and i915_drm, no?
>

No we actually are more likely unable to do anything from the kernel,
if its happening from userspace

firstly we need a reflash utility that is safe, otherwise people who
have the issue can't reproduce it,
and people who don't have the issue don't want to play with it.

I think e1000e may enable a BAR or something that causes the issue to
break this hw., I haven't seen it broken on any
machine where e1000e wasn't loaded yet. Again the r8169 might be the
same issue, but it maybe because the bar was enabled.

Dave.
