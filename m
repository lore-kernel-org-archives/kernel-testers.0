From: David Woodhouse <dwmw2@infradead.org>
Subject: Re: linux-next: Tree for June 26
Date: Sun, 29 Jun 2008 09:01:16 +0100
Message-ID: <1214726476.10393.289.camel@pmac.infradead.org>
References: <20080627010842.e1a0c4b5.sfr@canb.auug.org.au>
	 <1214646863.2660.22.camel@jaswinder.satnam>
	 <1214649164.10393.265.camel@pmac.infradead.org>
	 <200806290215.03792.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-next-owner@vger.kernel.org>
In-Reply-To: <200806290215.03792.rjw@sisk.pl>
Sender: linux-next-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Jaswinder Singh <jaswinder@infradead.org>, Stephen Rothwell <sfr@canb.auug.org.au>, linux-next@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, kernel-testers@vger.kernel.org, Ingo Molnar <mingo@elte.hu>, "Maciej W. Rozycki" <macro@linux-mips.org>

On Sun, 2008-06-29 at 02:15 +0200, Rafael J. Wysocki wrote:
> On Saturday, 28 of June 2008, David Woodhouse wrote:
> > On Sat, 2008-06-28 at 15:24 +0530, Jaswinder Singh wrote:
> > > Here is updated patch :-
> > > 
> > > http://git.infradead.org/users/jaswinder/firm-jsr-2.6.git?a=commitdiff;h=aa8b184d8eb4f1d7b5e37d5ad449fb7c02ad79c2
> > 
> > You can ignore that; it's just the same as today's linux-next (which in
> > turn is just the same as yesterday's + the patch which fixes the problem
> > for Kamalesh but not for you + the other minor error path cleanup.
> > 
> > Please could you try the other debugging patch I just sent, on top of
> > today's linux-next? It should confirm that you're using the 'Tso5'
> > firmware, as I told Jaswinder yesterday, and give us a little more clue
> > as to what's going on.
> 
> I tested with the debug patch on top of
> http://git.infradead.org/users/jaswinder/firm-jsr-2.6.git?a=commitdiff;h=aa8b184d8eb4f1d7b5e37d5ad449fb7c02ad79c2
> 
> dmesg output is at: http://www.sisk.pl/kernel/debug/20080627/dmesg-1.log
> the .config is at: http://www.sisk.pl/kernel/debug/20080627/config-1
> 
> and it looks like the card just can't load the firmware.

Ah, you have it configured as a module, not built-in. You need to run
'make INSTALL_FW_PATH=/lib/firmware firmware_install'

-- 
dwmw2
