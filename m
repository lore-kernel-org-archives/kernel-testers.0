From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #15144] HDA Intel Audio hang on boot
Date: Sun, 14 Feb 2010 22:50:59 +0100
Message-ID: <201002142250.59400.rjw@sisk.pl>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera> <s5h3a1lh2wr.wl%tiwai@suse.de> <4B785D0D.3070804@blueyonder.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4B785D0D.3070804@blueyonder.co.uk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: sboyce@blueyonder.co.uk
Cc: Takashi Iwai <tiwai@suse.de>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Sunday 14 February 2010, Sid Boyce wrote:
> On 01/02/10 06:43, Takashi Iwai wrote:
> > At Mon, 01 Feb 2010 02:01:21 +0000,
> > Sid Boyce wrote:
> >>
> >> On 01/02/10 00:22, Rafael J. Wysocki wrote:
> >>> This message has been generated automatically as a part of a report
> >>> of recent regressions.
> >>>
> >>> The following bug entry is on the current list of known regressions
> >>> from 2.6.32.  Please verify if it still should be listed and let me know
> >>> (either way).
> >>>
> >>>
> >>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15144
> >>> Subject		: HDA Intel Audio hang on boot
> >>> Submitter	: Sid Boyce <sboyce@blueyonder.co.uk>
> >>> Date		: 2010-01-15 1:24 (17 days old)
> >>> References	: http://marc.info/?l=linux-kernel&m=126351866722507&w=4
> >>>
> >>>
> >>>
> >>
> >> Still not fixed in 2.6.33-rc6. Takashi wrote that the fix was scheduled
> >> for 2.6.33-rc6, but it did not appear.
> > 
> > It just slipped from rc6 due to my busy load.
> > The pull request was sent yesterday.
> > 
> > 
> > Takashi
> > 
> 
> Up to 2.6.33-rc8 still needs the work around in
> /etc/modprobe.d/50-sound.conf, so the kernel blacklist fix does not work.
> 
> # less /etc/modprobe.d/50-sound.conf
> 
> options slots=snd-hda-intel
> # 9LTX.vLXC8EvZgR7:MCP55 High Definition Audio
> alias snd-card-0 snd-hda-intel
> options snd-hda-intel enable_msi=0

Thanks for the update.

I'll be sending a summary regression report later today with a follow-up
message regarding this bug.  You won't need to reply to that one.

Rafael
