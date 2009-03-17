From: James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
Subject: Re: [Bug #12612] hard lockup when interrupting cdda2wav
Date: Tue, 17 Mar 2009 14:52:21 +0000
Message-ID: <1237301541.3253.6.camel@localhost.localdomain>
References: <9nR7rAsBwYG.A.iEG.fOCvJB@chimera>
	 <qm8_cedJGaP.A.3-G.5OCvJB@chimera>
	 <20090317095254P.fujita.tomonori@lab.ntt.co.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090317095254P.fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, hias-vtPv7MOkFPkAvxtiuMwx3w@public.gmane.org

On Tue, 2009-03-17 at 09:53 +0900, FUJITA Tomonori wrote:
> On Sat, 14 Mar 2009 20:20:17 +0100 (CET)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
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
> > Date		: 2009-01-28 16:41 (46 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123316111415677&w=4
> > Handled-By	: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-scsi&m=123371501613019&w=2
> 
> This still should be listed. I think that the fix (in James'
> scsi-misc) will be merged to 2.6.30-rc1 then be backported.

It hasn't shown any problems at all under test in -next ... hopefully
under a reasonable test pool.  I think we can move it across for current
bug fixes (crosses fingers).

James

