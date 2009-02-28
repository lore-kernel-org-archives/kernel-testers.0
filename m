From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12762] Disk errors loop forever in 2.6.29
Date: Sat, 28 Feb 2009 23:00:10 +0100
Message-ID: <200902282300.11455.rjw@sisk.pl>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera> <vP9hdyF4fL.A.dKD.3ozoJB@chimera> <20090228215027.GA22913@silver.sucs.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090228215027.GA22913-ScVzN+evPNgw6GsfDNm9Eg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

On Saturday 28 February 2009, Sitsofe Wheeler wrote:
> On Mon, Feb 23, 2009 at 10:48:17PM +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12762
> > Subject		: Disk errors loop forever in 2.6.29
> > Submitter	: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-02-19 13:53 (5 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=b60af5b0adf0da24c673598c8d3fb4d4189a15ce
> > References	: http://marc.info/?l=linux-kernel&m=123505185407604&w=4
> > Handled-By	: James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=123508030726900&w=4
> 
> Sorry I wasn't paying enough attention (am I going to get this message
> for every rc?).

Yes (this is because the bug is on the list of recent regressions), but
generally you don't need to reply to it every time. :-)

> Yes this still happens in 2.6.29-rc6.

Thanks for the update.

Rafael
