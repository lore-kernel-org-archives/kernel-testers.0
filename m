From: Jiri Kosina <jkosina@suse.cz>
Subject: Re: [Bug #13935] 2.6.31-rcX breaks Apple MightyMouse (Bluetooth
 version)
Date: Wed, 30 Sep 2009 17:25:16 +0200 (CEST)
Message-ID: <alpine.LSU.2.00.0909301724040.9280@wotan.suse.de>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <u1L1PAbl8zG.A.eKD.hj1fKB@chimera> <87hbwewlk4.fsf@scholz.fias.uni-frankfurt.de> <878wfwwou8.fsf@scholz.fias.uni-frankfurt.de>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754709AbZI3PZP@vger.kernel.org>
In-Reply-To: <878wfwwou8.fsf@scholz.fias.uni-frankfurt.de>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jan Scholz <scholz@fias.uni-frankfurt.de>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Adrian Ulrich <kernel@blinkenlights.ch>

On Wed, 30 Sep 2009, Jan Scholz wrote:

> now that the patch "HID: completely remove apple mightymouse from
> blacklist" is merged upstream as
> "42960a13001aa6df52ca9952ce996f94a744ea65" I think it should be merged
> in the v2.6.31-stable series as well.

Agreed. As it didn't have "Cc: stable@kernel.org" in the changelog, it 
will not be picked up automagically. 

Will do.

-- 
Jiri Kosina
SUSE Labs, Novell Inc.
