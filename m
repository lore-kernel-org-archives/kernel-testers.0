From: Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #12908] acpi_ex_extract_from_field -- div by zero
Date: Tue, 07 Apr 2009 00:09:19 -0400 (EDT)
Message-ID: <alpine.LFD.2.00.0904070008140.5698@localhost.localdomain>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
 <AsKNxFx2juN.A.l9H.UGn2JB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <AsKNxFx2juN.A.l9H.UGn2JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Mon, 6 Apr 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12908
> Subject		: acpi_ex_extract_from_field -- div by zero
> Submitter	: Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-03-15 10:47 (23 days old)
> References	: http://marc.info/?l=linux-kernel&m=123711408225013&w=4
> Handled-By	: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

This is unreproducible and now marked closed.
The theory is that somebody (else:-) scribbled on random kernel memory...

thanks,
Len Brown, Intel Open Source Technology Center
