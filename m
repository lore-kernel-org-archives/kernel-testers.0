From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15202] lockdep warning during elevator_switch
Date: Mon, 22 Mar 2010 22:28:28 +0100
Message-ID: <201003222228.28268.rjw@sisk.pl>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera> <hTwaxgnIZ2O.A.rhF.SQopLB@chimera> <alpine.LSU.2.00.1003220319360.1726@sister.anvils>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LSU.2.00.1003220319360.1726-T/S/X05ZC3jbmfIwyoSfiQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>

On Monday 22 March 2010, Hugh Dickins wrote:
> On Sun, 21 Mar 2010, Rafael J. Wysocki wrote:
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.32 and 2.6.33.  Please verify if it still should
> > be listed and let the tracking team know (either way).
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15202
> > Subject		: lockdep warning during elevator_switch
> > Submitter	: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
> > Date		: 2010-01-31 23:55 (50 days old)
> > References	: http://marc.info/?l=linux-kernel&m=126498212613051&w=4
> 
> Yes, it is still a regression 2.6.33.1 (though fixed in 2.6.34-rc1:
> my guess is that it will be left as a regression in 2.6.33-stable,
> since it only happens when you have chosen CONFIG_PROVE_LOCKING=y).

The policy is that we close the regression bugs after they've been fixed in the
Linus' tree, so I'm going to close it now.

If you want it to go into -stable, please let Greg know directly.

Rafael
