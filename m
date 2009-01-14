From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: RE: [Bug #12417] glx performance drop with: "x86: PAT: implement
 track/untrack of pfnmap regions for x86 - v3"
Date: Tue, 13 Jan 2009 23:51:24 -0800
Message-ID: <7E82351C108FA840AB1866AC776AEC4643D0530C@orsmsx505.amr.corp.intel.com>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
 <oWTznAnH9BI.A.dnH.OHfaJB@chimera> <496D968C.4050405@fisher-privat.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <496D968C.4050405-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Content-Language: en-US
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, "Siddha, Suresh B" <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org" <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>


>-----Original Message-----
>From: Alexey Fisher [mailto:bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org] 
>Sent: Tuesday, January 13, 2009 11:39 PM
>To: Rafael J. Wysocki
>Cc: Linux Kernel Mailing List; Kernel Testers List; H. Peter 
>Anvin; Pallipadi, Venkatesh; Siddha, Suresh B
>Subject: Re: [Bug #12417] glx performance drop with: "x86: 
>PAT: implement track/untrack of pfnmap regions for x86 - v3"
>
>Rafael J. Wysocki schrieb:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>> 
>> The following bug entry is on the current list of known regressions
>> from 2.6.28.  Please verify if it still should be listed and 
>let me know
>> (either way).
>> 
>> 
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12417
>> Subject		: glx performance drop with: "x86: PAT: 
>implement track/untrack of pfnmap regions for x86 - v3"
>> Submitter	: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
>> Date		: 2009-01-06 18:46 (6 days old)
>> First-Bad-Commit: 
>http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.gi
>t;a=commit;h=5899329b19100c0b82dc78e9b21ed8b920c9ffb3
>> References	: http://marc.info/?l=linux-kernel&m=123126782822696&w=4
>> Handled-By	: Pallipadi, Venkatesh <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>> 
>> 
>> --
>> To unsubscribe from this list: send the line "unsubscribe 
>kernel-testers" in
>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>
>There is no more warnings on the xorg start, but x server will 
>completly
>freeze on glxgears.
>

Yes. But, that is a different bug with DRM changes. This fix just unmasks the bug now.

http://bugzilla.kernel.org/show_bug.cgi?id=12418

Thanks,
Venki--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
