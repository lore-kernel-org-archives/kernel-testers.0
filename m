From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: HDA Intel Audio hang on boot
Date: Tue, 26 Jan 2010 13:51:40 +0100
Message-ID: <201001261351.40292.rjw@sisk.pl>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <s5hr5pd9wsu.wl%tiwai@suse.de> <4B5ED9E4.60106@blueyonder.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753487Ab0AZMuu@vger.kernel.org>
In-Reply-To: <4B5ED9E4.60106@blueyonder.co.uk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: sboyce@blueyonder.co.uk
Cc: Takashi Iwai <tiwai@suse.de>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Tuesday 26 January 2010, Sid Boyce wrote:
> On 26/01/10 06:58, Takashi Iwai wrote:
...
> > And... is this report for 2.6.32 or for 2.6.33?
> > If it's with 2.6.32, enable_msi=1 may help instead.
> > 
> > 
> The motherboard giving the problem is the Asus M2N32-SLI deluxe.
> 00:0e.1 Audio device: nVidia Corporation MCP55 High Definition Audio
> (rev a2)
> 
> No such problem with the Asus CROSSHAIR II FORMULA motherboard which
> also has the
> 00:07.0 Audio device: nVidia Corporation MCP72XE/MCP72P/MCP78U/MCP78S
> High Definition Audio (rev a1)
> 
> For any kernel >2.6.32-git1 it hangs, i.e 2.6.32-git2 to 2.6.33-rc5.
> Disabling the sound chip in the BIOS, they all boot.
> tindog:/etc/modprobe.d # uname -r
> 2.6.32-git1-smp
> tindog:/etc/modprobe.d # l /dev/dsp*
> crw-rw-rw- 1 root audio 14,  3 Jan 26 11:46 /dev/dsp
> crw-rw-rw- 1 root audio 14, 35 Jan 26 11:46 /dev/dsp2

Is your adapter build as a module or is it compiled directly into the kernel?

Rafael
