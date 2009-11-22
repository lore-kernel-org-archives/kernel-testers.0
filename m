From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14379] ACPI Warning for _SB_.BAT0._BIF: Converted Buffer
 to expected String
Date: Sun, 22 Nov 2009 07:00:41 -0800
Message-ID: <4B095219.2040708@gmail.com>
References: <pohDdrcORVG.A.U2B.-6_BLB@chimera> <l2_yP_tdgYK.A.v5D.R8_BLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=TUqFXduexHTn7vauDb6+PZ4MFwrLR3S77o0uyHlGbyc=;
        b=Hfbv0y/1NhFulPnFPmlhB/ALwFqZIjrMYFLdfsQqqTjfOvM1o6WrdR02QrLEYg2T0p
         a0GpuXlFSDTnh0Xz5bkzvESlpGvCpg8QCZsHMpGqZmpsi1hWOL72JIPSI37fpljhuYWs
         fiUAyfkYSlLDA28q9+z0+4K/WDRm51/iY4H8U=
In-Reply-To: <l2_yP_tdgYK.A.v5D.R8_BLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexey Starikovskiy <astarikovskiy-l3A5Bk7waGM@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14379
> Subject		: ACPI Warning for _SB_.BAT0._BIF: Converted Buffer to expected String
> Submitter	: Justin Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-10-08 21:46 (45 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=d9adc2e031bd22d5d9607a53a8d3b30e0b675f39
> References	: http://marc.info/?l=linux-kernel&m=125504031328941&w=4
> Handled-By	: Alexey Starikovskiy<astarikovskiy-l3A5Bk7waGM@public.gmane.org>
> Patch		: http://bugzilla.kernel.org/attachment.cgi?id=23347
>
>
>
>    
still there.

Justin P. Mattock
