From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Sun, 7 Jun 2009 17:32:52 +0300
Message-ID: <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net>
	 <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com>
	 <4A2BCC6F.8090004@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=aY+jfeH0MbAmXABVnWHUMIiGldEbLsQbneuvCEiPV9U=;
        b=kJAqfFDrhGyhLhW0S7mQhdl0sHN1DdNxuvsn1EyOsB21etvMGVlQ5nHGEiH81C360M
         HDlRKQxVtk/6g1qDNf7NJ6KZaw76ktgeQNxd+0QiTGhKyBRqpQLrcumsW+204h/g6ufJ
         WTLFd/6cvc6FlYowiPZfVbNHAgUViJ7zzwO+c=
In-Reply-To: <4A2BCC6F.8090004-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Sun, Jun 7, 2009 at 5:19 PM, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:
> Pekka Enberg wrote:
>>
>> Hi Larry,
>>
>> On Sun, Jun 7, 2009 at 4:10 PM, Larry Finger <Larry.Finger@lwfinger.=
net>
>> wrote:
>>>
>>> Rafael J. Wysocki wrote:
>>>>
>>>> This message has been generated automatically as a part of a repor=
t
>>>> of recent regressions.
>>>>
>>>> The following bug entry is on the current list of known regression=
s
>>>> from 2.6.29. =A0Please verify if it still should be listed and let=
 me know
>>>> (either way).
>>>>
>>>>
>>>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D1=
3319
>>>> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0 : Page allocation failures wit=
h b43 and p54usb
>>>> Submitter =A0 =A0 : Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
>>>> Date =A0 =A0 =A0 =A0 =A0: 2009-04-29 21:01 (40 days old)
>>>> References =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D1241038=
97101088&w=3D4
>>>> Handled-By =A0 =A0: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
>>>
>>> This bug is extremely difficult to pin down. I cannot reproduce it =
at
>>> will. The system has to be up for a long time, which is difficult w=
ith
>>> testing the late RC's of 2.6.30 and the code in wireless-testing so
>>> that new bugs don't end up in 2.6.31-RCX. That said, it still was i=
n
>>> 2.6.30-RC6 and I'm not aware of any changes since that would fix it=
=2E
>>>
>>> My operating kernel is patched with additional diagnostics to help =
me
>>> understand why a kmalloc request for a buffer of 1390 bytes suddenl=
y
>>> ends up as an O(1) request. Unfortunately, I don't have any answers=
=2E
>>
>> Looking at the out-of-memory trace, there's still memory available b=
ut
>> the pskb_expand_head() allocation is GFP_ATOMIC so there's not much
>> the page allocator can do here. The amount of memory consumed by
>> inactive_file is pretty high so maybe the problem is related to the
>> recent mm/vmscan.c changes. Lets copy some more mm developers and se=
e
>> if they can help out.
>
> That is a very strange trace. =A0The Mem-Info indicates
> that the system has more than enough memory free, and
> also enough memory in higher-order free blocks.
>
> This would indicate a bug somewhere in the page
> allocator - this memory should have been given to this
> allocation request.

Aha, I always have difficulties deciphering the traces. But lets
invite Mel to the party then!

                        Pekka
