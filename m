From: Pekka Enberg <penberg@cs.helsinki.fi>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 30 Jun 2009 18:01:35 +0300
Message-ID: <1246374095.8014.28.camel@penberg-laptop>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net>
	 <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com>
	 <84144f020906292355o7cf63f7ch47bd19961cf92da3@mail.gmail.com>
	 <alpine.DEB.1.10.0906301030260.6124@gentwo.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757101AbZF3PBn@vger.kernel.org>
In-Reply-To: <alpine.DEB.1.10.0906301030260.6124@gentwo.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christoph Lameter <cl@linux-foundation.org>
Cc: David Rientjes <rientjes@google.com>, Larry Finger <Larry.Finger@lwfinger.net>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>

On Tue, 2009-06-30 at 10:32 -0400, Christoph Lameter wrote:
> kmalloc-4096 causes problems in the long run and so do other caches that
> are of similar size. But it allows debugging to occur. Silently switching
> it off is something I am not comfortable with.

I suggested adding a

  printk(KERN_INFO ": debugging disabled for %s. Use slub_debug=a to "
                    "enable it blah blah blah\n");

Does that work for you?

			Pekka
