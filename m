From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Sun, 7 Jun 2009 16:40:24 +0300
Message-ID: <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=rbb7B4/ysTNESWxvxybgBgfWb4bWn8qE6qt8WcF+le0=;
        b=Z7pk5GBeH/wmo4hOtALYX/6spovQTmG8KzHwvPLil/cYW8txyNI/C8UYZ2gAUxqYed
         rZWWdNyXQEGoVNiBZOnToWOuBEKo2LzjBQhkDYHAQ8LB0pBhLWz9gP9zXPslhf1+H2aa
         3HKBdOQDnQeEgn/nDG1qdwBJyOSwthHMv1zEk=
In-Reply-To: <4A2BBC30.2030300-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org

Hi Larry,

On Sun, Jun 7, 2009 at 4:10 PM, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org=
> wrote:
> Rafael J. Wysocki wrote:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.29. =A0Please verify if it still should be listed and let m=
e know
>> (either way).
>>
>>
>> Bug-Entry =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D133=
19
>> Subject =A0 =A0 =A0 =A0 =A0 =A0 =A0 : Page allocation failures with =
b43 and p54usb
>> Submitter =A0 =A0 : Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
>> Date =A0 =A0 =A0 =A0 =A0: 2009-04-29 21:01 (40 days old)
>> References =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124103897=
101088&w=3D4
>> Handled-By =A0 =A0: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
>
> This bug is extremely difficult to pin down. I cannot reproduce it at
> will. The system has to be up for a long time, which is difficult wit=
h
> testing the late RC's of 2.6.30 and the code in wireless-testing so
> that new bugs don't end up in 2.6.31-RCX. That said, it still was in
> 2.6.30-RC6 and I'm not aware of any changes since that would fix it.
>
> My operating kernel is patched with additional diagnostics to help me
> understand why a kmalloc request for a buffer of 1390 bytes suddenly
> ends up as an O(1) request. Unfortunately, I don't have any answers.

Looking at the out-of-memory trace, there's still memory available but
the pskb_expand_head() allocation is GFP_ATOMIC so there's not much
the page allocator can do here. The amount of memory consumed by
inactive_file is pretty high so maybe the problem is related to the
recent mm/vmscan.c changes. Lets copy some more mm developers and see
if they can help out.

                        Pekka
