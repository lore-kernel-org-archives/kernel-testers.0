From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #12158] commit b1ee26b freezes system on switching from X
 to text console
Date: Wed, 3 Dec 2008 16:44:03 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0812031642280.3256@nehalem.linux-foundation.org>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera> <bfPM5B8Tx2B.A.8DH.voxNJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <bfPM5B8Tx2B.A.8DH.voxNJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Gaudenz Steinlin <gaudenz-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>



On Wed, 3 Dec 2008, Rafael J. Wysocki wrote:
>
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12158
> Subject		: commit b1ee26b freezes system on switching from X to text console
> Submitter	: Gaudenz Steinlin <gaudenz-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
> Date		: 2008-11-25 19:44 (9 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=b1ee26bab14886350ba12a5c10cbc0696ac679bf
> References	: http://marc.info/?l=linux-kernel&m=122764344231140&w=4
> Handled-By	: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>

I think we're assuming that this already got fixed by commit 
c4c6fa9891f3d1bcaae4f39fb751d5302965b566 ("radeonfb: fix problem with 
color expansion & alignment").

Gaudenz?

			Linus
