From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #22672] Regression in 2.6.37-rc1 for Intel 945 Graphics Adapter - bisected to commit e9e331a
Date: Thu, 30 Dec 2010 12:00:07 +0100
Message-ID: <201012301200.07333.rjw@sisk.pl>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera> <sV7shrPOroO.A.F4G.VA8GNB@chimera> <4D1BD308.4030103@lwfinger.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4D1BD308.4030103-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>

On Thursday, December 30, 2010, Larry Finger wrote:
> On 12/29/2010 05:06 PM, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.36.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22672
> > Subject		: Regression in 2.6.37-rc1 for Intel 945 Graphics Adapter - bisected to commit e9e331a
> > Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> > Date		: 2010-11-11 01:56 (49 days old)
> > References	: https://bugs.freedesktop.org/show_bug.cgi?id=31803
> > 		  http://marc.info/?l=linux-kernel&m=128944001311444&w=2
> > 		  http://www.mail-archive.com/intel-gfx-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org/msg02235.html
> > Patch		: https://patchwork.kernel.org/patch/359472/
> > 		  https://patchwork.kernel.org/patch/359502/
> 
> Neither 2.6.37-rc8 nor the patches listed above fix my system.

Does reverting commit 448f53a "drm/i915/bios: Reverse order of 100/120 Mhz SSC
clocks" help?

Rafael
