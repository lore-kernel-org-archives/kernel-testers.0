From: Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #27812] 2.6.38-rc2: acpi backlight control missing
Date: Thu, 10 Feb 2011 10:08:14 +0800
Message-ID: <1297303694.14594.8.camel@rui>
References: <QUnbpYCwS-F.A.vaC.VHeSNB@chimera>
	 <ibChAs1xEQI.A.e_C.qHeSNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ibChAs1xEQI.A.e_C.qHeSNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>

On Thu, 2011-02-03 at 07:31 +0800, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.37.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=27812
> Subject		: 2.6.38-rc2: acpi backlight control missing
> Submitter	: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
> Date		: 2011-01-22 10:49 (12 days old)
> First-Bad-Commit: http://git.kernel.org/linus/677bd810eedce61edf15452491781ff046b92edc
> Message-ID	: <1295693349.2120.3.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=129569353414755&w=2
> 
this has been verified to be a duplicate of bug
https://bugzilla.kernel.org/show_bug.cgi?id=27702, and the patch at
https://patchwork.kernel.org/patch/499221/ is a proper fix.

thanks,
rui

