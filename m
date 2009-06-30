From: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 29 Jun 2009 21:06:53 -0500
Message-ID: <4A49733D.9030602@lwfinger.net>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net> <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; q=dns/txt; d=att.net; s=dkim01;
      i=larry.finger-fOdFMYwuEsI@public.gmane.org; a=rsa-sha256; c=relaxed/relaxed;
      t=1246327610; h=Content-Transfer-Encoding:Content-Type:
     In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:
     Message-ID; bh=t9gJxI91bsfdbvIXuxpm0r6c9JuWgDiLkezI2Yipt8E=; b=S9z
     ABla+LjG06RIz781xHFejDkP2LmFHvol5HkeVc8rwOX2LsB7C5C0zIYNoS3vJgrm7Hw
     Vecy1115S7zxVTTQ==
In-Reply-To: <alpine.DEB.2.00.0906291642520.17663-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

David Rientjes wrote:
> On Mon, 29 Jun 2009, Larry Finger wrote:
> 
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13319
>>> Subject		: Page allocation failures with b43 and p54usb
>>> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
>>> Date		: 2009-04-29 21:01 (61 days old)
>>> References	: http://marc.info/?l=linux-kernel&m=124103897101088&w=4
>>> 		  http://lkml.org/lkml/2009/6/7/136
>>> Handled-By	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
>> The cause of these failures has been determined. The wireless
>> subsystem frequently requests buffers of size 4096, but when SLUB
>> debugging is enabled and the debug info is added, the request becomes
>> of order 1 and memory becomes fragmented.
>>
>> A controversial "fix" in which SLUB debugging was disabled for
>> allocations where adding such debugging info would increase the order
>> was discussed and tried. With a quick look at the commit list for
>> Linus's tree, I don't see that such a patch is available, but I will
>> be corrected if I missed it.
>>
> 
> I'd disagree with disabling slub debugging by default for caches where 
> oo_order(s->min) increases as the result of using it.  This particular 
> page allocation failure is happening for, presumably, kmalloc-4096, and 
> the system has 4K pages.  Disabling debugging for that cache (and any of 
> its aliases) implicitly will lead to errors going undiagnosed as a result.

If the current behavior is not changed, I will be forced to disable
SLUB debugging, which will explicitly lead to errors that are
undiagnosed. It seems better to me to debug when you can, but turn off
debugging in cases like this.

Larry
