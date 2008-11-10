From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Tue, 11 Nov 2008 08:52:59 +1100
Message-ID: <1226353979.7530.8.camel@pasglop>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	 <wnN9HICUAgP.A._d.f5zFJB@chimera> <1226295985.7731.7.camel@pasglop>
	 <jetzafiad4.fsf@sykes.suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <jetzafiad4.fsf-+JVCjXrnBTholqkO4TVVkw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andreas Schwab <schwab-l3A5Bk7waGM@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, James Cloos <cloos-GRsvFm/Gh/pBDgjK7y7TUQ@public.gmane.org>, Paul Collins <paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Mon, 2008-11-10 at 21:39 +0100, Andreas Schwab wrote:
> Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org> writes:
> 
> > radeonfb: Fix accel problems with new imageblit hook
> >
> > Some radeon chips have issues with color expansion of pixmaps that
> > aren't a multiple of 32 pixels wide. This works around it the same
> > way X does by requesting the right pitch alignment from fbcon and
> > then using the chip scissors to do clipping to the requested size.
> 
> Unfortunately this does not fix the suspend regression on PowerBook6,7.
> Instead I have to use the workaround in
> <http://marc.info/?l=linux-kernel&m=122515268301239&w=2>.

Strange. The suspend problem happens also when X hasn't been launched at all ?

Ben.

