From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [Bug #12158] commit b1ee26b freezes system on switching from X
 to text console
Date: Thu, 04 Dec 2008 12:31:26 +1100
Message-ID: <1228354286.7356.275.camel@pasglop>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
	 <bfPM5B8Tx2B.A.8DH.voxNJB@chimera>
	 <alpine.LFD.2.00.0812031642280.3256@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758060AbYLDBcw@vger.kernel.org>
In-Reply-To: <alpine.LFD.2.00.0812031642280.3256@nehalem.linux-foundation.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, "David S. Miller" <davem@davemloft.net>, Gaudenz Steinlin <gaudenz@debian.org>

On Wed, 2008-12-03 at 16:44 -0800, Linus Torvalds wrote:
> 
> On Wed, 3 Dec 2008, Rafael J. Wysocki wrote:
> >
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12158
> > Subject		: commit b1ee26b freezes system on switching from X to text console
> > Submitter	: Gaudenz Steinlin <gaudenz@debian.org>
> > Date		: 2008-11-25 19:44 (9 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=b1ee26bab14886350ba12a5c10cbc0696ac679bf
> > References	: http://marc.info/?l=linux-kernel&m=122764344231140&w=4
> > Handled-By	: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> 
> I think we're assuming that this already got fixed by commit 
> c4c6fa9891f3d1bcaae4f39fb751d5302965b566 ("radeonfb: fix problem with 
> color expansion & alignment").

No, this is a different problem I think. That race between VT switch and
X, which I -suspect- may be an X bug. I haven't managed to pin it down
yet, so what I may do for .28 is send a patch that disables color
expansion acceleration unless you explicitely request it via a module
param. At least until I can find what's going on.

Cheers,
Ben.
