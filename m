From: ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org (Eric W. Biederman)
Subject: Re: [Bug #11201] kernel BUG at arch/x86/kernel/io_apic_64.c:357!
Date: Sun, 10 Aug 2008 12:51:51 -0700
Message-ID: <m1wsior6lk.fsf@frodo.ebiederm.org>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
	<cX_-nNkxKaF.A.AGD.iEjnIB@albercik>
	<m1sktdsmyy.fsf@frodo.ebiederm.org> <489F31FC.9040104@zytor.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <489F31FC.9040104-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org> (H. Peter Anvin's message of "Sun,
	10 Aug 2008 11:22:52 -0700")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

"H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org> writes:

> Eric W. Biederman wrote:
>> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
>>
>>> This message has been generated automatically as a part of a report
>>> of recent regressions.
>>>
>>> The following bug entry is on the current list of known regressions
>>> from 2.6.26.  Please verify if it still should be listed and let me know
>>> (either way).
>>
>> Yep.  There is a patch in -mm.  It seems the process is to wait for Thomas &
>> Ingo to get back before we send this to Linus.
>>
>
> Yes, unfortunately I still don't have enough testing resources to want to push
> this upstream.  I'm queuing it up for submission, though.

No problem.  I don't expect any problems as it is a simple reversion of the
definition of NR_IRQS on x86_64 to what we had before everything was merged
into irq_vectors.h and the x86_64 bits got lost.

With the result that NR_IRQS varies in practice between 244 and 4096
depending on how many cpus you have.  We have had NR_IRQS that large on
x86_64 for a year or better now so I don't expect any practical problems.

The long term fix will obviously be kill NR_IRQS.  But that is not a 2.6.27
term project.

Eric
