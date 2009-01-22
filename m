From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #12426] TMDC Joystick no longer works in kernel 2.6.28
Date: Thu, 22 Jan 2009 14:34:46 +0100 (CET)
Message-ID: <alpine.LRH.1.10.0901221432320.13438@twin.jikos.cz>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.1iB.fJRdJB@chimera> <200901201848.32080.andy@asjohnson.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200901201848.32080.andy-9eXmkf4BiQ2aMJb+Lgu22Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Andrew S. Johnson" <andy-9eXmkf4BiQ2aMJb+Lgu22Q@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, 20 Jan 2009, Andrew S. Johnson wrote:

> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12426
> > Subject		: TMDC Joystick no longer works in kernel 2.6.28
> > Submitter	: Andrew S. Johnson <andy-9eXmkf4BiQ2aMJb+Lgu22Q@public.gmane.org>
> > Date		: 2009-01-10 21:53 (10 days old)
> > References	:
> > http://marc.info/?l=linux-kernel&m=123162486415366&w=4
> I have installed kernel 2.6.28.1, and this still does not work.

What exactly doesn't work? Namely:

- do you see jsX node appearing in /dev after you modprobe joydev 
  manually?
- do you see the corresponding entry for the gameport in 
  /sys/bus/gameport/{devices,drivers} ?

-- 
Jiri Kosina
SUSE Labs
