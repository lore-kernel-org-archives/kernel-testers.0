From: Ingo Molnar <mingo@elte.hu>
Subject: Re: SLUB/debugobjects locking (Re: 2.6.27-rc4-git1: Reported
	regressions from 2.6.26)
Date: Thu, 28 Aug 2008 15:56:59 +0200
Message-ID: <20080828135659.GA1929@elte.hu>
References: <19f34abd0808251244v439e78b1hbb24f77c637559c3@mail.gmail.com> <6278d2220808261514p2661251aw914215652c547125@mail.gmail.com> <19f34abd0808280642j529eab2ct17722644d1550ad9@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754857AbYH1N5h@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <19f34abd0808280642j529eab2ct17722644d1550ad9@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Vegard Nossum <vegard.nossum@gmail.com>
Cc: Daniel J Blueman <daniel.blueman@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, Christoph Lameter <clameter@sgi.com>, Linus Torvalds <torvalds@linux-foundation.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Adrian Bunk <bunk@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Natalie Protasevich <protasnb@gmail.com>, Kernel Testers List <kernel-testers@vger.kernel.org>


* Vegard Nossum <vegard.nossum@gmail.com> wrote:

> On Wed, Aug 27, 2008 at 12:14 AM, Daniel J Blueman
> <daniel.blueman@gmail.com> wrote:
> > On Mon, Aug 25, 2008 at 8:44 PM, Vegard Nossum <vegard.nossum@gmail.com> wrote:
> >> I tried your suggestion of promoting the lock to irq-safe, and it
> >> fixed the warning for me (didn't get or look for deadlocks yet, but it
> >> seems likely that it is caused by the same thing?), the patch is
> >> attached for reference.
> >>
> >> I also don't know if this is the best fix, but I also don't have any
> >> other (better) suggestions.
> >>
> >> Others are welcome to pick it up from here...
> >
> > The solution looks like is needs to get the lock ordering correct
> > w.r.t. SLUB, as we get this, alas:
> >
> > =======================================================
> > [ INFO: possible circular locking dependency detected ]
> > 2.6.27-rc4-229c-debug #1
> 
> Hm. Is this with my first patch + the one in the e-mail you replied
> to? It was intended to be a delta patch on top of my first one.
> 
> That would be the one in
> 
>     http://marc.info/?l=linux-kernel&m=121946972307110&w=4
> 
> plus the one in
> 
>     http://marc.info/?l=linux-kernel&m=121969394110327&w=1
> 
> Thanks for testing and sorry for the confusion. (Maybe I just confused
> myself. Please let me know either way.)

could you resend the final patch please? It's a candidate for .27, if it 
works out fine.

	Ingo
