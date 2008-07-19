From: "Vegard Nossum" <vegard.nossum@gmail.com>
Subject: Re: linux-next: Tree for July 18: warning at kernel/lockdep.c:2068 trace_hardirqs_on_caller
Date: Sun, 20 Jul 2008 01:11:36 +0200
Message-ID: <19f34abd0807191611y7cabf405iad307ba79591e04f@mail.gmail.com>
References: <20080718195352.e562a00f.sfr@canb.auug.org.au>
	 <200807190928.33978.m.kozlowski@tuxland.pl>
	 <19f34abd0807190255x304173d4wf2bfabb2d5bce511@mail.gmail.com>
	 <19f34abd0807190559y2fe5ebf9h7095793e82de3122@mail.gmail.com>
	 <20080719221723.GB5578@suse.de>
	 <19f34abd0807191527u61c5ed61kffe2279c8d46915d@mail.gmail.com>
	 <19f34abd0807191544nfd73be5nf7dde4b61992a7e8@mail.gmail.com>
	 <20080719225817.GA6264@suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-next-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=cW3SdygZG91ZhCwYBOqa6OoDwfsLMZpg/kFbwFsGgzg=;
        b=DCF/fGOeM1oejxQ+V+aiEL1Yr1l1KJGmYUqZFQEKM1VFdECo0fwe6Y+S3hGftjbzfM
         jlwOSl/aMw1lt243Et69dgoQG1ByztqX4eKbXJ2T/c33L93+LqZ2em5wxR7dQte9i1Xo
         6kSNrSprN4bvAXV79nLYDTkRpCRucULBQ3VAo=
In-Reply-To: <20080719225817.GA6264@suse.de>
Content-Disposition: inline
Sender: linux-next-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Greg KH <gregkh@suse.de>
Cc: Mariusz Kozlowski <m.kozlowski@tuxland.pl>, Dave Hansen <haveblue@us.ibm.com>, Stephen Rothwell <sfr@canb.auug.org.au>, kernel-testers@vger.kernel.org, linux-next@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, Pekka Enberg <penberg@cs.helsinki.fi>, Bernhard Walle <bwalle@suse.de>, Ingo Molnar <mingo@elte.hu>, Vivek Goyal <vgoyal@redhat.com>

On Sun, Jul 20, 2008 at 12:58 AM, Greg KH <gregkh@suse.de> wrote:
>> firmware_map_add_early() is using bootmem for the allocation. So yes,
>> I guess it should possible to use kobjects here. That said, this code
>> is in fact fairly recent:
>>
>> commit 69ac9cd629ca96e59f34eb4ccd12d00b2c8276a7
>> Author: Bernhard Walle <bwalle@suse.de>
>> Date:   Fri Jun 27 13:12:54 2008 +0200
>>
>>     sysfs: add /sys/firmware/memmap
>>
>> I'll add the Cc. I still have a feeling that the kobject patch should
>> expect to run even when slab is not available.
>
> I never has been expected to do so in the past, so odds are, lots of
> things might break :(

Yeah. Maybe you should withdraw your ack? :-D

    Signed-off-by: Bernhard Walle <bwalle@suse.de>
    Acked-by: Greg KH <gregkh@suse.de>
    Acked-by: Vivek Goyal <vgoyal@redhat.com>
    Cc: kexec@lists.infradead.org
    Cc: yhlu.kernel@gmail.com
    Signed-off-by: Ingo Molnar <mingo@elte.hu>

I'm sorry for having been a bit rash earlier -- it's the combination
of the patches that produce the failure; they both seem okay on their
own. On the other hand, this is what -next is for, isn't it?

Maybe the firmware memmap code can simply run a little later in the
boot sequence?


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
