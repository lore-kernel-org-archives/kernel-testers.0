From: Robert Richter <robert.richter-5C7GfCeVMHo@public.gmane.org>
Subject: Re: [Bug #13809] oprofile: possible circular locking dependency
	detected
Date: Mon, 3 Aug 2009 11:19:24 +0200
Message-ID: <20090803091924.GB25478@erda.amd.com>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.YTD.eHObKB@chimera>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <3zAHs5O6maO.A.YTD.eHObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jerome Marchand <jmarchan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

I also tested v2.6.31-rc4 with prove-locking enabled and could not
trigger the warning. My regression runs fine. Please provide more
information (workloads, oprofile setup, cpu info, kernel config) to be
able to reproduce this.

Thanks,

-Robert

On 26.07.09 22:28:24, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13809
> Subject		: oprofile: possible circular locking dependency detected
> Submitter	: Jerome Marchand <jmarchan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date		: 2009-07-22 13:35 (5 days old)
> 
> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
> 

-- 
Advanced Micro Devices, Inc.
Operating System Research Center
email: robert.richter-5C7GfCeVMHo@public.gmane.org
