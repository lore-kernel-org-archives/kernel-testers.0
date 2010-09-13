From: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #17772] Unable to locate IOAPIC for GSI *
Date: Sun, 12 Sep 2010 19:45:37 -0700
Message-ID: <4C8D9051.2070004@kernel.org>
References: <QnCvudbe2FD.A.XiE.DgSjMB@chimera> <p44oKaOqEDM.A.I2E.VgSjMB@chimera> <20100912202950.GA16751@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100912202950.GA16751-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: zersaa <zersaa-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Feng Tang <feng.tang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Eric W. Biederman" <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>

On 09/12/2010 01:29 PM, Ingo Molnar wrote:
> 
> * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
>> This message has been generated automatically as a part of a report
>> of regressions introduced between 2.6.34 and 2.6.35.
>>
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
>> be listed and let the tracking team know (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=17772
>> Subject		: Unable to locate IOAPIC for GSI *
>> Submitter	: zersaa <zersaa-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date		: 2010-09-04 21:28 (9 days old)
> 
> this is an error message introduced via ACPI commit:
> 
> | commit 2a4ab640d3c28c2952967e5f63ea495555bf2a5f
> | Author: Feng Tang <feng.tang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> | Date:   Tue Jul 7 23:01:15 2009 -0400
> |
> |     ACPI, x86: expose some IO-APIC routines when CONFIG_ACPI=n
> 
> It's not clear from the bugzilla entry whether it's just a new error 
> message, or an actual boot failure. It appears to me it's just a new 
> message - i.e. not a regression.
> 

can you post whole bootlog with "debug apic=debug"?

Thanks

Yinghai
