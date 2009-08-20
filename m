From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13946] x86 MCE malfunction on Thinkpad T42p
Date: Thu, 20 Aug 2009 23:32:57 +0200
Message-ID: <200908202332.57566.rjw@sisk.pl>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera> <ADSuNT6McuD.A.Rj.9NIjKB@chimera> <20090820202226.GA4444@sig21.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090820202226.GA4444-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Johannes Stezenbach <js-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Thursday 20 August 2009, Johannes Stezenbach wrote:
> On Wed, Aug 19, 2009 at 10:26:57PM +0200, Rafael J. Wysocki wrote:
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13946
> > Subject		: x86 MCE malfunction on Thinkpad T42p
> > Submitter	: Johannes Stezenbach <js-FF7aIK3TAVNeoWH0uzbU5w@public.gmane.org>
> > Date		: 2009-08-07 17:09 (13 days old)
> > References	: http://marc.info/?l=linux-kernel&m=124966500232399&w=4
> > Handled-By	: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Patch		: http://patchwork.kernel.org/patch/37908/
> 
> This is fixed in v2.6.31-rc6-223-g6c30c53 by
> commit c7f6fa44115d401e89db730f357629d39f8e4ba6
> "x86, mce: don't log boot MCEs on Pentium M (model == 13) CPUs".

Thanks, closed.

Rafael
