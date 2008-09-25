From: Jesse Brandeburg <jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 21:25:45 -0700
Message-ID: <48DB12C9.5080104@gmail.com>
References: <20080923.150722.141587696.davem@davemloft.net>	 <9929d2390809231512w160d221axa2923a6b293a041@mail.gmail.com>	 <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>	 <20080923.211215.193696086.davem@davemloft.net>	 <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz> <21d7e9970809241722w7c3bb6a5w1af5801b7380169d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=LuM6HZi4wTsQZ723vTXaObMRLUsVzRiVDowkicEMu5Y=;
        b=uOtaNesx5gYuctiPxEbZVQwRVYyX40vpiIPUxmlxZzB6CNzlC68ECWjHJjRM1A3GkW
         knsoDIex8p4TDJtEL8zczmyIhvcjO4Gc9QdUtR8CPV2+zbI23SuIV7TBPO18xBqUMUpu
         a7wkICdKU5UY8fE9fEZsqm3WNDm5e7FOSjqHE=
In-Reply-To: <21d7e9970809241722w7c3bb6a5w1af5801b7380169d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org

Dave Airlie wrote:
>>> If the MMIO space regions of the video cards sit right before the
>>> E1000E ones on the effected systems, that would pretty much
>>> convince me that this is the kind of problem we are having here.
>> Unfortunately, looking at the lspci outputs that are in
>> https://bugzilla.novell.com/show_bug.cgi?id=425480 it seems to me that the
>> MMIO regions are quite far away from each other.

on my ich9 based system the e1000e BAR1 regions are back to back with 
both the vga memory map and the audio mem, either of which could be the 
mangler, but more likely vga device (say X maybe) since it is mapped 
directly in front of the e1000e BAR1 space.

> Yup on my laptop these were far away and I wondered what could mangle
> things that badly.
> 
> Well I'm out of the race, my attempts to re-write my eeprom using an
> eeprom from an equivalent laptop
> have totally failed and my BIOS won't boot anymore - so my laptop is == a brick.

I'm really sorry to hear that, I wonder if the laptop has an "emergency 
bios update" mode like many PCs used to through a jumper.  Dave A., let 
us know if you make any recovery progress.

I plan to try some random writes tomorrow to my BAR1 space and see if my 
flash gets erased.

Jesse
