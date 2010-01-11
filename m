From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14670] i915: playing video via XVideo extension makes the screen flicker
Date: Mon, 11 Jan 2010 21:28:17 +0100
Message-ID: <201001112128.17975.rjw@sisk.pl>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera> <8B599161-2977-4A43-B88F-36E87AFCF4EA@m3y3r.de> <20100111111941.189eb41e@jbarnes-piketon>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100111111941.189eb41e@jbarnes-piketon>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>

On Monday 11 January 2010, Jesse Barnes wrote:
> On Mon, 11 Jan 2010 20:03:57 +0100
> Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org> wrote:
> 
> > 
> > 
> > Am 11.01.2010 um 17:55 schrieb Jesse Barnes
> > <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>:
> > 
> > > On Mon, 11 Jan 2010 17:53:04 +0100
> > > Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org> wrote:
> > >
> > >> Am Sonntag, den 10.01.2010, 23:56 +0100 schrieb Rafael J. Wysocki:
> > >>> This message has been generated automatically as a part of a
> > >>> report of regressions introduced between 2.6.31 and 2.6.32.
> > >>>
> > >>> The following bug entry is on the current list of known
> > >>> regressions introduced between 2.6.31 and 2.6.32.  Please verify
> > >>> if it still should be listed and let me know (either way).
> > >>>
> > >>
> > >> Yes, still should be listed.
> > >>
> > >> Problem still exists in 2.6.32.3 and 2.6.33-rc3-00097-g2c1f189,
> > >> that contains
> > >> this commit:
> > >> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=cda9d05c499093c67b4a376a15009923acc2127a
> > >>
> > >> The above commit removes the render reclock support, that ought to
> > >> fix a common kind of problem encountered on i915 hardware, but not
> > >> on my machine.
> > >>
> > >> Still need to boot with "nomodeset" to have a workable system.
> > >
> > > Does this patch prevent the flicker?
> > 
> > By the way: how often and in what interval is the function   
> > intel_lvds_detect called?
> > 
> > How long will/can the function acpi_lid_open take to complete?
> > Maybe some acpi interpretation takes really long? Is this possible?
> > 
> > Would this explain the flickering?
> 
> It should only be called when a client requests the connection status
> (e.g. xrandr or the GNOME display applet).
> 
> The LVDS state will also be checked at ACPI LID event time, maybe your
> platforms is getting spurious LID events?
> 
> If not, this bisection really confuses me...

It's not only a bisection, as Thomas says that reverting the commit turned up
by the bisection fixes the problem for him.

Rafael
