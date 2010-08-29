From: ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org (Eric W. Biederman)
Subject: Re: [Bug #16173] After uncompressing the kernel, at boot time, the server hangs.
Date: Sun, 29 Aug 2010 16:49:06 -0700
Message-ID: <m1wrr9asjx.fsf@fess.ebiederm.org>
References: <c1_O4wHrlB.A.63.mbueMB@chimera>
	<ByD_7B96czP.A.vDE.diueMB@chimera> <m11v9hc8a1.fsf@fess.ebiederm.org>
	<201008300128.34970.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201008300128.34970.rjw-KKrjLPT3xs0@public.gmane.org> (Rafael J. Wysocki's message of
	"Mon, 30 Aug 2010 01:28:34 +0200")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Hill <hilld-HTiBYHdybX7UkGsOFmftXw@public.gmane.org>, "H. Peter Anvin" <hpa-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>

"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:

> On Monday, August 30, 2010, Eric W. Biederman wrote:
>> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
>> 
>> > This message has been generated automatically as a part of a report
>> > of regressions introduced between 2.6.34 and 2.6.35.
>> >
>> > The following bug entry is on the current list of known regressions
>> > introduced between 2.6.34 and 2.6.35.  Please verify if it still should
>> > be listed and let the tracking team know (either way).
>> >
>> 
>> Looks like it's fixed.
>
> Good.  What mainlne commit is that?

commit 910081322bf9c4ed392dc8f2ecbc33fdb42a2958
Author: Eric W. Biederman <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
Date:   Wed Aug 4 12:51:11 2010 -0700

    x86/apic: Map the local apic when parsing the MP table.
    
    This fixes a regression in 2.6.35 from 2.6.34, that is
    present for select models of Intel cpus when people are
    using an MP table.
    
    The commit cf7500c0ea133d66f8449d86392d83f840102632
    "x86, ioapic: In mpparse use mp_register_ioapic" started
    calling mp_register_ioapic from MP_ioapic_info.  An extremely
    simple change that was obviously correct.  Unfortunately
    mp_register_ioapic did just a little more than the previous
    hand crafted code and so we gained this call path.
    
    The problem call path is:
    MP_ioapic_info()
      mp_register_ioapic()
       io_apic_unique_id()
         io_apic_get_unique_id()
           get_physical_broadcast()
             modern_apic()
               lapic_get_version()
                 apic_read(APIC_LVR)
    
    Which turned out to be a problem because the local apic
    was not mapped, at that point, unlike the similar point
    in the ACPI parsing code.
    
    This problem is fixed by mapping the local apic when
    parsing the mptable as soon as we reasonably can.
    
    Looking at the number of places we setup the fixmap for
    the local apic, I see some serious simplification opportunities.
    For the moment except for not duplicating the setting up of the
    fixmap in init_apic_mappings, I have not acted on them.
    
    The regression from 2.6.34 is tracked in bug
    https://bugzilla.kernel.org/show_bug.cgi?id=16173
    
    Cc: stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
    Reported-by: David Hill <hilld-HTiBYHdybX7UkGsOFmftXw@public.gmane.org>
    Reported-by: Tvrtko Ursulin <tvrtko.ursulin-j34lQMj1tz/QT0dZR+AlfA@public.gmane.org>
    Tested-by: Tvrtko Ursulin <tvrtko.ursulin-j34lQMj1tz/QT0dZR+AlfA@public.gmane.org>
    Signed-off-by: Eric W. Biederman <ebiederm-aS9lmoZGLiVWk0Htik3J/w@public.gmane.org>
