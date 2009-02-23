From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12609] v2.6.29-rc2 libata sff 32bit PIO regression
Date: Mon, 23 Feb 2009 23:13:00 +0100
Message-ID: <200902232313.01391.rjw@sisk.pl>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <200902070058.26539.rjw@sisk.pl> <49A2CD3B.4090703@lwfinger.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49A2CD3B.4090703-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Cc: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, Sergei Shtylyov <sshtylyov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>

On Monday 23 February 2009, Larry Finger wrote:
> Rafael J. Wysocki wrote:
> > On Saturday 07 February 2009, Larry Finger wrote:
> >> Rafael J. Wysocki wrote:
> >>> On Thursday 05 February 2009, Hugh Dickins wrote:
> >>>> On Wed, 4 Feb 2009, Rafael J. Wysocki wrote:
> >>>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12609
> >>>>> Subject		: v2.6.29-rc2 libata sff 32bit PIO regression
> >>>>> Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> >>>>> Date		: 2009-01-23 23:52 (13 days old)
> >>>>> References	: http://marc.info/?l=linux-kernel&m=123275478111406&w=4
> >>>>> 		  http://marc.info/?l=linux-kernel&m=123254501314058&w=4
> >>>>> Handled-By	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> >>>>> 		  Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> >>>>> Patch		: http://marc.info/?l=linux-kernel&m=123254501314058&w=2
> >>>> Yes, this does still need to be listed.  My initial patch for it was
> >>>> not enough, but I think the three patches necessary have all now been
> >>>> posted (though Sergei may rewrite mine).  I'm expecting Alan to gather
> >>>> them together and send them in due course, but I believe he's occupied
> >>>> with other stuff just at the moment.
> >> I still have the problem as of 2.6.29-rc3-00634-g9be260a
> > 
> 
> The problem was fixed as of 2.6.29-rc5-00168-gba95fd4 with commit d1b3525. At
> least for my system, the regression is cleared.

It's already been closed, thanks for the confirmation.

Rafael
