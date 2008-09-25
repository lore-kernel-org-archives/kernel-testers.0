From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 10:22:49 +1000
Message-ID: <21d7e9970809241722w7c3bb6a5w1af5801b7380169d@mail.gmail.com>
References: <20080923.150722.141587696.davem@davemloft.net>
	 <9929d2390809231512w160d221axa2923a6b293a041@mail.gmail.com>
	 <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>
	 <20080923.211215.193696086.davem@davemloft.net>
	 <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=QqePBAQP632ImHARytDcICDVL/muGP3w3VdpWwW5zlA=;
        b=RPHc0qI0h2RoH4f+tpgqnNQ9wFugirl9zOuq6zhIrb6ylUzrztyPvzTWCscjRIJROw
         V/7uSdg61DcHSBDPRzLr2fIrGMHBlBeRZ77mZqP3zhIaaaBYEuhGeCu3uHTnm1tWLhIg
         hWwCRjy4EEXqdvOC+kk+5b87AtohkB0orVeaU=
In-Reply-To: <alpine.LNX.1.10.0809250110070.4671-JCEl3tv+2Z8CVLCxKZUutA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Thu, Sep 25, 2008 at 9:15 AM, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org> wrote:
> On Tue, 23 Sep 2008, David Miller wrote:
>
>> I did some snooping around, and while doing so I noticed that the PCI
>> mmap code for x86 doesn't do one bit of range checking on the size, or
>> any other aspect of the request, wrt. the MMIO regions actually mapped
>> in the BARs of the PCI device.
>
> Ugh, indeed. Added Ingo and Jesse to CC.
>
>> Yikes!
>>
>> It just does a reserve_memtype() on the address range, and says "ok".
>>
>> So if, for example, the X server tries to mmap() more than an MMIO bar
>> actually maps, the kernel lets the user do this.
>>
>> It would be very interesting to add the appropriate checks to
>> pci_mmap_page_range() in arch/x86/pci/i386.c, anyone who wants to do
>> this can use the code in arch/sparc64/kernel/pci.c:
>> __pci_mmap_make_offset() as a guide, and see what happens.
>
> Absolutely. Or we can even do some dirty hackery in userspace, like
> LD_PRELOADing X server and checking mmaps() that are close to MMIO regions
> of affected devices.
>
>> If the MMIO space regions of the video cards sit right before the
>> E1000E ones on the effected systems, that would pretty much
>> convince me that this is the kind of problem we are having here.
>
> Unfortunately, looking at the lspci outputs that are in
> https://bugzilla.novell.com/show_bug.cgi?id=425480 it seems to me that the
> MMIO regions are quite far away from each other.
>

Yup on my laptop these were far away and I wondered what could mangle
things that badly.

Well I'm out of the race, my attempts to re-write my eeprom using an
eeprom from an equivalent laptop
have totally failed and my BIOS won't boot anymore - so my laptop is == a brick.

Dave.
