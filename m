From: "Kok, Auke" <auke-jan.h.kok-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13371] s2disk hangs with kernel 2.6.29 and later, SATA,
 Gigabyte EG45M-DS2H - culprit found
Date: Tue, 26 May 2009 10:36:21 -0700
Message-ID: <4A1C2895.7090902@intel.com>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <20090525171305.GA5855@arbonne.lan> <20090525230259.GA5098@vilya> <200905260136.33724.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905260136.33724.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thadeu Lima de Souza Cascardo <cascardo-DmMZpsCg3uxeGPcbtGPokg@public.gmane.org>, "Kirsher, Jeffrey T" <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Rafael J. Wysocki wrote:
> On Tuesday 26 May 2009, Richard Atterer wrote:
>> Hello,
>>
>> "Jerry" contacted me off-list with information about the root of the 
>> problem - many thanks indeed!!!
>>
>> It turns out that the e100 driver is responsible. (The motherboard actually 
>> has a r8169 chip, but I added an old Intel PCI ethernet card I own.)
>>
>> By rmmoding e100 before s2disk, the problem goes away. Jerry mentions that 
>> he once saw a message about e100 failing to load its microcode - I never 
>> saw such a message.
>>
>> The most recent e100 commit ac7c992 by Thadeu Lima de Souza Cascardo (Apr 
>> 28) made some changes to the behaviour in the case of shutdown vs. suspend, 
>> maybe the problem is there? (But note that during bisecting, I tested 
>> kernels older than that commit, and not all of them worked.) Before that, 
>> f902283 (Mar 3 2008) mentions suspend in the log message.
> 
> OK, thanks for the information.  I'll have a look at the e100 suspend-resume
> code, but I really don't think commit ac7c992 is at fault here.

adding Jeff Kirsher to the Cc, who currently maintains the e100 driver.

Auke
