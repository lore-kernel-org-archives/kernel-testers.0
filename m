From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: 3.0-rc6-git6: Reported regressions from 2.6.39
Date: Sun, 10 Jul 2011 13:10:16 +0200
Message-ID: <201107101310.16556.rjw@sisk.pl>
References: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera> <CAOJsxLEzUC9k0Y2PNxQpCs0WCjQBmP0O2dDxTzPzhGEcvQVDeQ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAOJsxLEzUC9k0Y2PNxQpCs0WCjQBmP0O2dDxTzPzhGEcvQVDeQ@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Pekka Enberg <penberg@kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Avi Kivity <avi@redhat.com>, Steve <stefan.bosak@gmail.com>

On Sunday, July 10, 2011, Pekka Enberg wrote:
> On Sun, Jul 10, 2011 at 1:19 PM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=38672
> > Subject         : KVM guest boot crashed
> > Submitter       : Steve <stefan.bosak@gmail.com>
> > Date            : 2011-07-02 06:56 (9 days old)
> > First-Bad-Commit: http://git.kernel.org/linus/6506e4f995967b1a48cc34418c77b318df92ce35
> 
> That URL gives me "404 - Unknown commit object"

Indeed, sorry.

> and Bugzilla comments give me the impression it's actually a QEMU bug. Hmm?

You're right, it appears to be a qemu bug, I have closed it.

Thanks,
Rafael
