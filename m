From: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH -v2] x86/pci: print ioh resources only
Date: Thu, 28 Jan 2010 13:06:32 -0800
Message-ID: <4B61FC58.1030101@kernel.org>
References: <201001261902.13911.rjw@sisk.pl> <20100126101752.78196900@jbarnes-piketon> <4B5F735B.2040308@kernel.org> <alpine.LFD.2.00.1001271748300.3570@localhost.localdomain> <20100127192409.79af96db@jbarnes-piketon> <20100128040226.GB8964@jgarrett.org> <20100128082432.05a97ebc@jbarnes-piketon> <4B61D7C4.1050405@kernel.org> <alpine.LFD.2.00.1001281052510.22433@localhost.localdomain> <4B61E116.6050208@kernel.org> <20100128193027.GA13741@dspnet.fr.eu.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100128193027.GA13741-dF3JGIbHi9Ffir3NkZym1w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Olivier Galibert <galibert-e+AXbWqSrlAAvxtiuMwx3w@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>, Rafael J. Wysocki

On 01/28/2010 11:30 AM, Olivier Galibert wrote:
> On Thu, Jan 28, 2010 at 11:10:14AM -0800, Yinghai Lu wrote:
>>
>> don't use them for peer pci root bus resource yet.
>> so could cross check _CRS results
>>
>> -v2: dont put info struct in stack according to Linus.
>>      because that is kbytes big
> 
> No kfree?

thanks.

anyway Jesse don't need print out.

YH
