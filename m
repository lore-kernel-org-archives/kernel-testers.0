From: Gaudenz Steinlin <gaudenz@debian.org>
Subject: Re: [Bug #12158] commit b1ee26b freezes system on switching from X
	to text console
Date: Fri, 5 Dec 2008 17:21:43 +0100
Message-ID: <20081205162143.GA6085@soziologie.ch>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera> <bfPM5B8Tx2B.A.8DH.voxNJB@chimera> <alpine.LFD.2.00.0812031642280.3256@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755253AbYLEQWB@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0812031642280.3256@nehalem.linux-foundation.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, "David S. Miller" <davem@davemloft.net>

On Wed, Dec 03, 2008 at 04:44:03PM -0800, Linus Torvalds wrote:
 
> I think we're assuming that this already got fixed by commit 
> c4c6fa9891f3d1bcaae4f39fb751d5302965b566 ("radeonfb: fix problem with 
> color expansion & alignment").
> 
> Gaudenz?

Sorry, no, this commit does not fix my bug. 

Gaudenz

-- 
Ever tried. Ever failed. No matter.
Try again. Fail again. Fail better.
~ Samuel Beckett ~
