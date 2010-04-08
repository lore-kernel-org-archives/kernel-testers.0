From: Yong Zhang <yong.zhang-CWA4WttNNZF54TAoqtyWWQ@public.gmane.org>
Subject: Re: [Bug #15661] PROBLEM: crash on halt with
 2.6.34-0.16.rc2.git0.fc14.x86_64
Date: Thu, 8 Apr 2010 10:29:45 +0800
Message-ID: <20100408022945.GA12905@windriver.com>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera>
 <JVS2s9dmTsP.A.uTH.ftPvLB@chimera>
Reply-To: Yong Zhang <yong.zhang-CWA4WttNNZF54TAoqtyWWQ@public.gmane.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <JVS2s9dmTsP.A.uTH.ftPvLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jon Masters <jonathan-Zp4isUonpHBD60Wz+7aTrA@public.gmane.org>

On Wed, Apr 07, 2010 at 11:13:50PM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15661
> Subject		: PROBLEM: crash on halt with 2.6.34-0.16.rc2.git0.fc14.x86_64
> Submitter	: Jon Masters <jonathan-Zp4isUonpHBD60Wz+7aTrA@public.gmane.org>
> Date		: 2010-03-26 15:29 (13 days old)
> Message-ID	: <1269617372.3779.234.camel@localhost>
> References	: http://marc.info/?l=linux-kernel&m=126961739803949&w=2
> 

Seems a duplicate of http://lkml.org/lkml/2010/3/20/142
and it's reslovled by commit a90110c61073eab95d1986322693c2b9a8a6a5f6

Thanks,
Yong

> 
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
