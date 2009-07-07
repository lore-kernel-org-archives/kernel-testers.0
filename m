From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Tue, 7 Jul 2009 12:58:33 +0200
Message-ID: <200907071258.33579.rjw@sisk.pl>
References: <tSdKBEwEOhE.A.2wF.s_oUKB@chimera> <bXZeuxPQAWE.A.ZFB.BCpUKB@chimera> <1246925538.4652.8.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1246925538.4652.8.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday 07 July 2009, Johannes Berg wrote:
> On Tue, 2009-07-07 at 02:00 +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.29 and 2.6.30.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13306
> > Subject		: hibernate slow on _second_ run
> > Submitter	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> > Date		: 2009-05-14 09:34 (54 days old)
> 
> Still exists in 31-rc2.

Thanks for the update.

Last time I remember you managed to collect some ftrace output from the failing
case, but they didn't reveal anything directly.

We know, however, that is [suspend|resume]_device_irqs() in
driver/base/power/main.c are disabled, the issue doesn't show up.

Is that correct?

Rafael
