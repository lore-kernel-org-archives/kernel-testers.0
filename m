From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14355] USB serial regression after 2.6.31.1 with Huawei E169 GSM modem
Date: Tue, 17 Nov 2009 23:24:43 +0100
Message-ID: <200911172324.43516.rjw@sisk.pl>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <200911170012.24914.rjw@sisk.pl> <1258448567.2140.564.camel@pasglop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1258448567.2140.564.camel@pasglop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Cc: Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ben Efros <ben-sBIqA0PYact54TAoqtyWWQ@public.gmane.org>

On Tuesday 17 November 2009, Benjamin Herrenschmidt wrote:
> On Tue, 2009-11-17 at 00:12 +0100, Rafael J. Wysocki wrote:
> > On Tuesday 17 November 2009, Oliver Neukum wrote:
> > > Am Montag, 16. November 2009 23:37:39 schrieb Rafael J. Wysocki:
> > > > This message has been generated automatically as a part of a report
> > > > of recent regressions.
> > > > 
> > > > The following bug entry is on the current list of known regressions
> > > > from 2.6.31.  Please verify if it still should be listed and let me know
> > > > (either way).
> > > > 
> > > > 
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14355
> > > > Subject		: USB serial regression after 2.6.31.1 with Huawei E169 GSM modem
> > > > Submitter	: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
> > > > Date		: 2009-10-10 03:07 (38 days old)
> > > > References	: http://marc.info/?l=linux-kernel&m=125513456327542&w=4
> > > 
> > > Benjamin has fixed this bug.
> > 
> > Thanks, closed.
> > 
> 
> I asked Greg to re-open for a while to track other issues with
> various Huawei modems. However, it appears that most of them would
> be tricky to workaround in the kernel and are fixed by FW updates
> (though updating those modem FW can be non trivial).
> 
> I'll leave it open for a little while see how things go on the
> corresponding ubuntu bug, and if things settle, we can then close it,
> in the meantime, you can remove it from your list of regressions.

OK, I will.

Thanks,
Rafael
