From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11696] 2.6.27-rc8 doubled times
Date: Sun, 5 Oct 2008 12:57:11 +0200
Message-ID: <200810051257.11835.rjw@sisk.pl>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.itG.Y475IB@wind> <Pine.LNX.4.64.0810050414260.27517@blonde.site>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0810050414260.27517-popGQ1T0qN76K7/ahGyk6A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

On Sunday, 5 of October 2008, Hugh Dickins wrote:
> On Sat, 4 Oct 2008, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11696
> > Subject		: 2.6.27-rc8 doubled times
> > Submitter	: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> > Date		: 2008-10-03 10:21 (2 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122302939313636&w=4
> > Handled-By	: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=122307260621434&w=4
> 
> Can now be closed, thanks Rafael: Linus has taken Thomas's
> commit 07454bfff151d2465ada809bbaddf3548cc1097c
> clockevents: check broadcast tick device not the clock events device
> and I've just confirmed that the latest git indeed fixes the issue.

Thanks, closed.

Rafael
