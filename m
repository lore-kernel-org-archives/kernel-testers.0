From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: Re: [Bug #12612] hard lockup when interrupting cdda2wav
Date: Fri, 6 Feb 2009 16:33:44 +0900
Message-ID: <20090206163257W.fujita.tomonori@lab.ntt.co.jp>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera>
	<CGyEB0S4BpO.A.fLB.T5YiJB@chimera>
	<20090205131644.GA5731@horus.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090205131644.GA5731-vtPv7MOkFPkAvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: hias-vtPv7MOkFPkAvxtiuMwx3w@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org, James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org

On Thu, 5 Feb 2009 14:16:44 +0100
Matthias Reichl <hias-vtPv7MOkFPkAvxtiuMwx3w@public.gmane.org> wrote:

> On Wed, Feb 04, 2009 at 11:58:51AM +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.27 and 2.6.28.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12612
> > Subject		: hard lockup when interrupting cdda2wav
> > Submitter	: Matthias Reichl <hias-vtPv7MOkFPkAvxtiuMwx3w@public.gmane.org>
> > Date		: 2009-01-28 16:41 (8 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123316111415677&w=4
> > Handled-By	: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
> 
> This bug is still present in 2.6.28.3.

There is a fix against scsi-misc:

http://marc.info/?l=linux-scsi&m=123371501613019&w=2

I might need to fix it in a different way though.

There are other pending patches to fix other sg oops in scsi-misc so
the above fix can't be cleanly applied to 2.6.28.X. I'll send a patch
for 2.6.28.X once I get SCSI maintainer's ACK on it.

Sorry for the inconvenience,
