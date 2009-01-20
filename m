From: "Alex Riesen" <raa.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12468] Crash in acpi_cpufreq_init
Date: Tue, 20 Jan 2009 23:35:32 +0100
Message-ID: <81b0412b0901201435mabecad3i66957a6463140b82@mail.gmail.com>
References: <0GOi9pntEoL.A.iGF.B9QdJB@chimera>
	 <2QN7KFic7LG.A.sgH.t9QdJB@chimera>
	 <81b0412b0901191633y130c4cf0w5531af81c3749ee2@mail.gmail.com>
	 <20090120142312.GB10224@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=CnpggvJjzlP9Tt1ExO+FVCuXgl6e28tMUMHANBm+FzI=;
        b=kyAxTbtmZh3liUip0KGcU9jDPmJ6AD0zneANByo6V7qJbwkhp0FVtkE7cyWqcX7zKr
         1UF9ci9LVsoeJHHz5y654gkt2/jclEZ1nZLKNgY9DEsUs7KjqnqrqKQIMDMFINGZ51p2
         vu6k3oAVwDH3CFXSONIcz/75fkw+whPwSHWxI=
In-Reply-To: <20090120142312.GB10224-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Riesen <fork0-iA+eEnwkJgzk1uMJSBkQmQ@public.gmane.org>

2009/1/20 Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>:
>
> * Alex Riesen <raa.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
>> 2009/1/19 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
>> > This message has been generated automatically as a part of a report
>> > of recent regressions.
>> >
>> > The following bug entry is on the current list of known regressions
>> > from 2.6.28.  Please verify if it still should be listed and let me know
>> > (either way).
>> >
>>
>> The regression is still present.
>
> should be fixed by the pending x86 fixes:
>
>   git pull git://git.kernel.org/pub/scm/linux/kernel/git/tip/linux-2.6-tip.git x86-fixes-for-linus
>
> does it work fine if you pull that tree?

Yep. No crashing anymore. The commits starting from 31ad908 (work_on_cpu...)
seem to do the fixing.
