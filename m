From: "Oliver Pinter" <oliver.pntr-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11045] Bug in MPT Fusion 2.6.26-rc7 unbootable
Date: Mon, 14 Jul 2008 01:54:19 +0200
Message-ID: <6101e8c40807131654q24e9f3ffo3f4cec179c355c89@mail.gmail.com>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
	 <c6ZRbn0adb.A.jkH.RHleIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=UPcC7DF4j9C+jaAe+WFvPphLqugj/mU0RGUj3V7qTyA=;
        b=cVmrqizqzmUkD2HrMfLQWLluZlHp6LcjJ75kmYSZEEC7Y1A1MbXdtNGlmYMFmX57je
         J5vH42ogRC63PDyTbfwjPWnAeoosKRds/tH6F+cYdWA1Yri//8Zqs/mcjrb/ssrbEBqS
         esoCJpSFM0jlBZegwTwT924cBM6TKC9DFOElY=
In-Reply-To: <c6ZRbn0adb.A.jkH.RHleIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kurk <kurk-9AbUPqfR1/2XDw4h08c5KA@public.gmane.org>

I think, fixed by 27898988174bb211fd962ea73b9c6dc09f888705

On 7/13/08, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed.
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11045
> Subject		: Bug in MPT Fusion 2.6.26-rc7 unbootable
> Submitter	: Kurk <kurk-9AbUPqfR1/2XDw4h08c5KA@public.gmane.org>
> Date		: 2008-07-06 11:22 (8 days old)
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
>


-- 
Thanks,
Oliver
