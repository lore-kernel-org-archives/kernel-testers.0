From: Jens Axboe <jens.axboe@oracle.com>
Subject: Re: [Bug #14133] WARNING: at arch/x86/kernel/smp.c:117
	native_smp_send_reschedule
Date: Fri, 2 Oct 2009 09:34:25 +0200
Message-ID: <20091002073425.GA14918@kernel.dk>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.oEC.lNTxKB@chimera> <1254466855.3531.6.camel@ht.satnam>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755843AbZJBHeX@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1254466855.3531.6.camel@ht.satnam>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jaswinder Singh Rajput <jaswinder@kernel.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, =?iso-8859-1?Q?Am=E9rico?= Wang <xiyou.wangcong@gmail.com>, Ingo Molnar <mingo@elte.hu>, x86 maintainers <x86@kernel.org>, Gautham R Shenoy <ego@in.ibm.com>

On Fri, Oct 02 2009, Jaswinder Singh Rajput wrote:
> Hello Jens,
> 
> On Thu, 2009-10-01 at 21:55 +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.30 and 2.6.31.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14133
> > Subject		: WARNING: at arch/x86/kernel/smp.c:117 native_smp_send_reschedule
> > Submitter	: Jens Axboe <jens.axboe@oracle.com>
> > Date		: 2009-08-31 20:43 (32 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125175143918050&w=4
> > 
> > 
> 
> Are you still getting this warning in latest -tip. If yes, can you do
> git bisect and specify the commit.

Nope, it seems to have disappeared.

-- 
Jens Axboe
