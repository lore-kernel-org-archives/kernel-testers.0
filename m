From: Thomas Meyer <thomas@m3y3r.de>
Subject: Re: [Bug #14670] i915: playing video via XVideo extension makes
 the screen flicker
Date: Tue, 12 Jan 2010 18:43:09 +0100
Message-ID: <1263318189.3284.2.camel@localhost.localdomain>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
	 <CXIfLt-ygXM.A.GGD.GilSLB@chimera>
	 <1263228784.12830.0.camel@localhost.localdomain>
	 <20100111085527.104f5c3e@jbarnes-piketon>
	 <8B599161-2977-4A43-B88F-36E87AFCF4EA@m3y3r.de>
	 <20100111111941.189eb41e@jbarnes-piketon>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754605Ab0ALRoG@vger.kernel.org>
In-Reply-To: <20100111111941.189eb41e@jbarnes-piketon>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Eric Anholt <eric@anholt.net>

Am Montag, den 11.01.2010, 11:19 -0800 schrieb Jesse Barnes:
> On Mon, 11 Jan 2010 20:03:57 +0100
> Thomas Meyer <thomas@m3y3r.de> wrote:
> 
> > 
> > 
> > Am 11.01.2010 um 17:55 schrieb Jesse Barnes
> > <jbarnes@virtuousgeek.org>:
> > 
> > > On Mon, 11 Jan 2010 17:53:04 +0100
> > > Thomas Meyer <thomas@m3y3r.de> wrote:
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

how to check how often this function is called and it's duration? is the
function tracer capable of this?

> 
> The LVDS state will also be checked at ACPI LID event time, maybe your
> platforms is getting spurious LID events?

maybe! where can I check this? acpid log file?

> 
> If not, this bisection really confuses me...


