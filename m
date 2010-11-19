From: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #23092] WARNING in tty_io.c
Date: Fri, 19 Nov 2010 13:03:49 -0800
Message-ID: <20101119130349.4430e1d1.randy.dunlap@oracle.com>
References: <sKkKYVppECN.A.KhC.Phb5MB@chimera>
	<ATV3yiK8i4C.A.O7C.ehb5MB@chimera>
	<4CE5E3EE.1080104@cn.fujitsu.com>
	<201011192135.30477.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201011192135.30477.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Shan Wei <shanwei-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Fri, 19 Nov 2010 21:35:30 +0100 Rafael J. Wysocki wrote:

> On Friday, November 19, 2010, Shan Wei wrote:
> > Rafael J. Wysocki wrote, at 11/19/2010 07:42 AM:
> > > This message has been generated automatically as a part of a summary report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.36.  Please verify if it still should be listed and let the tracking team
> > > know (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=23092
> > > Subject		: WARNING in tty_io.c
> > > Submitter	: Shan Wei <shanwei-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>
> > > Date		: 2010-11-10 8:06 (9 days old)
> > > Message-ID	: <4CDA5291.4010802-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>
> > > References	: http://marc.info/?l=linux-kernel&m=128937645120159&w=2
> > 
> > It's not appreared in 2.6.37-rc2+ with top commit 59365d13.
> > I don't know which patch/commit fix it.
> 
> OK, closed.

I can still reproduce it on 2.6.37-rc2-git4.
I'll send a separate problem report on it.

---
~Randy
*** Remember to use Documentation/SubmitChecklist when testing your code ***
