From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: [Bug #12417] glx performance drop with: "x86: PAT: implement
 track/untrack of pfnmap regions for x86 - v3"
Date: Tue, 20 Jan 2009 10:09:55 +0100
Message-ID: <497594E3.4040205@fisher-privat.net>
References: <0GOi9pntEoL.A.iGF.B9QdJB@chimera> <2QN7KFic7LG.A.Ie.A-QdJB@chimera> <20090120074758.GB26284@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090120074758.GB26284-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Suresh Siddha <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Ingo Molnar schrieb:
> * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.28.  Please verify if it still should be listed and let me know
>> (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12417
>> Subject		: glx performance drop with: "x86: PAT: implement track/untrack of pfnmap regions for x86 - v3"
>> Submitter	: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
>> Date		: 2009-01-06 18:46 (14 days old)
>> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=5899329b19100c0b82dc78e9b21ed8b920c9ffb3
>> References	: http://marc.info/?l=linux-kernel&m=123126782822696&w=4
>> Handled-By	: Pallipadi, Venkatesh <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> 
> is it still broken with the current lineup of x86 fixes:
> 
>   git pull git://git.kernel.org/pub/scm/linux/kernel/git/tip/linux-2.6-tip.git x86-fixes-for-linus
> 
> ?
> 
> 	Ingo

I migrated now to the next ubuntu versio, hope it do no hava mach 
difference.
There is no warnings in dmesg about mtrr or pat, no xorg crashes with 
glxx but same pure performace. With enabled or disabled drm i get ~300fps

	Alexey
