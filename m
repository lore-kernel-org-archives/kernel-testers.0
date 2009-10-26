From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14477] possible circular locking dependency in ISDN PPP
Date: Mon, 26 Oct 2009 23:09:21 +0100
Message-ID: <200910262309.21988.rjw@sisk.pl>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.9NF.9qe5KB@chimera> <4AE61C10.5030409@imap.cc>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4AE61C10.5030409-ZTO5kqT2PaM@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Tilman Schmidt <tilman-ZTO5kqT2PaM@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 26 October 2009, Tilman Schmidt wrote:
> Rafael J. Wysocki schrieb:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14477
> > Subject		: possible circular locking dependency in ISDN PPP
> > Submitter	: Tilman Schmidt <tilman-ZTO5kqT2PaM@public.gmane.org>
> > Date		: 2009-10-18 22:16 (9 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125590423416087&w=4
> 
> Fixed by
> 
> http://git.kernel.org/?p=linux/kernel/git/davem/net-2.6.git;a=commit;h=2bd9af046fdc10703b266b0f3b25423f0b7d703e

Thanks, closing.

Rafael
