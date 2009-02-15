From: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #12609] v2.6.29-rc2 libata sff 32bit PIO regression
Date: Sun, 15 Feb 2009 16:48:12 +0000 (GMT)
Message-ID: <Pine.LNX.4.64.0902151639550.23452@blonde.anvils>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.kkF.Ds0lJB@chimera>
 <499797FD.5070701@lwfinger.net> <4997CDDC.1020103@garzik.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4997CDDC.1020103-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, Sergei Shtylyov <sshtylyov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>

On Sun, 15 Feb 2009, Jeff Garzik wrote:
> Larry Finger wrote:
> > Rafael J. Wysocki wrote:
> > >
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12609
> > > Subject		: v2.6.29-rc2 libata sff 32bit PIO regression
> > > Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
> > > Date		: 2009-01-23 23:52 (23 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=123275478111406&w=4
> > > 		  http://marc.info/?l=linux-kernel&m=123254501314058&w=4
> > > Handled-By	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> > >     Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
> > >     Sergei Shtylyov <sshtylyov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>
> > > Patch		:
> > > http://marc.info/?l=linux-kernel&m=123412278730735&w=4
> > 
> > This problem is not fixed as of 2.6.29-rc5.
> 
> Sergei, what is the latest version of your patch?   According to my notes, you
> and Hugh were going back and forth trading patches, and I never saw a final
> version...

I was happy with the patch Sergei posted a week ago, and said so -
except for the question of whether to say "unlikely(slop)": and
that's a very silly little issue which should never have delayed
fixing a significant regression, I'm sorry I ever raised it.

But I was expecting Alan to gather the fixes together and send them
to you: on 26 Jan he posted two other patches, one perhaps just a
cleanup, but the other he said required for correct behaviour on
AMD devices: I thought all three patches would be in by now.

Hugh
