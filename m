From: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11201] kernel BUG at arch/x86/kernel/io_apic_64.c:357!
Date: Sun, 10 Aug 2008 11:22:52 -0700
Message-ID: <489F31FC.9040104@zytor.com>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>	<cX_-nNkxKaF.A.AGD.iEjnIB@albercik> <m1sktdsmyy.fsf@frodo.ebiederm.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <m1sktdsmyy.fsf-B27657KtZYmhTnVgQlOflh2eb7JE58TQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Eric W. Biederman" <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dhaval Giani <dhaval-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Eric W. Biederman wrote:
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
> 
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.26.  Please verify if it still should be listed and let me know
>> (either way).
> 
> Yep.  There is a patch in -mm.  It seems the process is to wait for Thomas &
> Ingo to get back before we send this to Linus. 
> 

Yes, unfortunately I still don't have enough testing resources to want 
to push this upstream.  I'm queuing it up for submission, though.

	-hpa
