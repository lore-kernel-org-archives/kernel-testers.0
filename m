From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14730] sky2 won't work after suspend/resume cycle
Date: Tue, 29 Dec 2009 22:29:47 +0100
Message-ID: <200912292229.47644.rjw@sisk.pl>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <srmJ8vMxKPH.A.6LD.JxhOLB@chimera> <878wcltyg5.fsf@devron.myhome.or.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <878wcltyg5.fsf-x/W9pkDDSe1TgC2z9Sl/nXf5DAMn2ifp@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Maciej J. Woloszyk" <mat-7wKBDC4inUHVItvQsEIGlw@public.gmane.org>

On Tuesday 29 December 2009, OGAWA Hirofumi wrote:
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
> 
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14730
> > Subject		: sky2 won't work after suspend/resume cycle
> > Submitter	: Maciej J. Woloszyk <mat-7wKBDC4inUHVItvQsEIGlw@public.gmane.org>
> > Date		: 2009-12-04 09:02 (26 days old)
> 
> This seems to be related to commit 4b77b0a2ba27d64f58f16d8d4d48d8319dda36ff.
> 
> It clears dev->state_saved blindly, but pci_pm_resume() calls
> pci_restore_standard_config() before pm->resume() (by probably
> historical reason).

The other way around.  pci_restore_standard_config() is the new thing and the
pci_restore_state() in ->resume() is supposed to be unnecessary.  Unfortunately
in this case the restoration of PCI config registers in
pci_restore_standard_config() doesn't work.

I'd like to understand the reason, but temporarily we can just set
pdev->state_saved to 1 in sky2_resume(), as proposed in the bug entry.

> So, I guess it became the cause of restore regression before changing
> PCI power state. It might be better to revert
> 4b77b0a2ba27d64f58f16d8d4d48d8319dda36ff for now, until changing pci
> generic stuff.

In fact 4b77b0a2ba27 is a bug fix so I'm afraid it won't be safe to revert it.

Rafael
