From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13377] Microphone no longer works on Toshiba Satellite A100
Date: Mon, 1 Jun 2009 22:37:46 +0200
Message-ID: <200906012237.46603.rjw@sisk.pl>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera> <LEcEO2518_I.A.kbD.vIbIKB@chimera> <4A21BB4F.9000000@superonline.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A21BB4F.9000000-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "M. Vefa Bicakci" <bicave-qUEp0r/b3FNfOZc0+OmrVg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>

On Sunday 31 May 2009, M. Vefa Bicakci wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me know
> > (either way).
> 
> Hello,
> 
> I am sorry for responding to your e-mail late. Takashi Iwai identified
> the cause of this problem and provided a patch. I tested the patch and
> confirmed that it solves the problem. The patch was integrated into
> mainline with the following commit:
> 
> === 8< ===
> commit 461c6c3a0a23a8fac1a4b636e93ff5dfe599a241
> Author: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>
> Date:   Mon May 25 08:06:02 2009 +0200
> 
>     ALSA: hda - Add missing check of pin vref 50 and others in Realtek codecs
>     
>     Some Realtek codecs like ALC861 seem to support only VREF50 while the
>     current driver assumes it's only VREF80.  Check other VREF bits to set
>     the correct value.
>     
>     Signed-off-by: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>
> === >8 ===

Thanks, I've closed the bug.

Best,
Rafael
