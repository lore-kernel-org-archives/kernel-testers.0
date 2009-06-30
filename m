From: Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 30 Jun 2009 09:38:33 -0500
Message-ID: <4A4A2369.60409@lwfinger.net>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>	 <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net>	 <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com>	 <84144f020906292355o7cf63f7ch47bd19961cf92da3@mail.gmail.com>	 <alpine.DEB.2.00.0906300032310.11018@chino.kir.corp.google.com> <84144f020906300124n24e206b5tc85dd5cc4661bde7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1759105AbZF3Oif@vger.kernel.org>
DKIM-Signature: v=1; q=dns/txt; d=att.net; s=dkim01;
      i=larry.finger@att.net; a=rsa-sha256; c=relaxed/relaxed;
      t=1246372708; h=Content-Transfer-Encoding:Content-Type:
     In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:
     Message-ID; bh=8y6Gt17+vclhazkr2d8kkepBh04d5dVbBULxuBP8/DY=; b=Io+
     GYaloj433JZCG4BURuttVUJWen/LsoekLhaKOVqVw+zHh0E6woSJPWxKwwhIx4eK+/E
     XWIc72rgENqU67Sw==
In-Reply-To: <84144f020906300124n24e206b5tc85dd5cc4661bde7@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pekka Enberg <penberg@cs.helsinki.fi>
Cc: David Rientjes <rientjes@google.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, Christoph Lameter <cl@linux-foundation.org>

Pekka Enberg wrote:
> 
> Yup, I was referring to slub_debug=A and no, I don't agree with you
> that it should be on by default. Only people who know what they're
> doing should enable the option and a random tester by definition
> doesn't (no offence to Mr. Random Tester).

None taken.

For me, the next step is clear. As I'm much more interested in finding
bugs in the wireless system than in the mechanics of SLUB allocation,
I need to disable CONFIG_SLUB_DEBUG_ON. BTW, I use SLAB on Linus's
mainline tree and SLUB on the wireless testing tree. I build and boot
the mainline kernels mostly to look for quick failures/regressions,
but run the w-t kernels looking for longer-term effects such as memory
fragmentation or slow memory leaks.

For Rafael's benefit, we do need to decide if this is a bug or merely
an unintended side effect. My sense is the latter and Bug #13319
should have a summary of this discussion added to the record, and then
the bug should be closed.

Larry
