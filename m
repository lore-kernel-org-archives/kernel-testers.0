From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12337] ~100 extra wakeups reported by powertop
Date: Sun, 15 Feb 2009 15:20:51 +0100
Message-ID: <200902151520.51874.rjw@sisk.pl>
References: <535841.27007.qm@web53303.mail.re2.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <535841.27007.qm-XPPYsw2aJMuB9c0Qi4KiSl5cfvJIxWXgQQ4Iyu8u01E@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: luis6674-/E1597aS9LQAvxtiuMwx3w@public.gmane.org
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On Sunday 15 February 2009, Alberto Gonzalez wrote:
> --- On Sat, 2/14/09, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > The following bug entry is on the current list of known
> > regressions
> > introduced between 2.6.27 and 2.6.28.  Please verify if it
> > still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	:
> > http://bugzilla.kernel.org/show_bug.cgi?id=12337
> > Subject		: ~100 extra wakeups reported by powertop
> > Submitter	: Alberto Gonzalez <luis6674-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
> > Date		: 2008-12-31 12:25 (46 days old)
> 
> Yes, still present in latest stable 2.6.28.5
> 
> I updated the report to say that this happened on my 5 year old Pentium 4, but now I got a new Dell desktop (Intel G45 based) and the exact same problem happens, so I can't be the only one seeing it. In the bugzilla Eric Anholt said that it could be related to vblank and that jbarnes had look into a similar issue before, so maybe he has some clue.

Thanks a lot for the update.

Rafael
