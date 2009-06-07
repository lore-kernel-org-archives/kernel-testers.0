From: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Sun, 07 Jun 2009 10:19:27 -0400
Message-ID: <4A2BCC6F.8090004@redhat.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>	 <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net> <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <84144f020906070640rf5ab14nbf66d3ca7c97675f-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org

Pekka Enberg wrote:
> Hi Larry,
> 
> On Sun, Jun 7, 2009 at 4:10 PM, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org> wrote:
>> Rafael J. Wysocki wrote:
>>> This message has been generated automatically as a part of a report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.29.  Please verify if it still should be listed and let me know
>>> (either way).
>>>
>>>
>>> Bug-Entry     : http://bugzilla.kernel.org/show_bug.cgi?id=13319
>>> Subject               : Page allocation failures with b43 and p54usb
>>> Submitter     : Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
>>> Date          : 2009-04-29 21:01 (40 days old)
>>> References    : http://marc.info/?l=linux-kernel&m=124103897101088&w=4
>>> Handled-By    : Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
>> This bug is extremely difficult to pin down. I cannot reproduce it at
>> will. The system has to be up for a long time, which is difficult with
>> testing the late RC's of 2.6.30 and the code in wireless-testing so
>> that new bugs don't end up in 2.6.31-RCX. That said, it still was in
>> 2.6.30-RC6 and I'm not aware of any changes since that would fix it.
>>
>> My operating kernel is patched with additional diagnostics to help me
>> understand why a kmalloc request for a buffer of 1390 bytes suddenly
>> ends up as an O(1) request. Unfortunately, I don't have any answers.
> 
> Looking at the out-of-memory trace, there's still memory available but
> the pskb_expand_head() allocation is GFP_ATOMIC so there's not much
> the page allocator can do here. The amount of memory consumed by
> inactive_file is pretty high so maybe the problem is related to the
> recent mm/vmscan.c changes. Lets copy some more mm developers and see
> if they can help out.

That is a very strange trace.  The Mem-Info indicates
that the system has more than enough memory free, and
also enough memory in higher-order free blocks.

This would indicate a bug somewhere in the page
allocator - this memory should have been given to this
allocation request.

-- 
All rights reversed.
