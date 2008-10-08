From: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #11224] Only three cores found on quad-core machine.
Date: Wed, 8 Oct 2008 10:22:21 -0400
Message-ID: <20081008142221.GA3054@redhat.com>
References: <0pOgGB.A.uLG.E475IB@wind> <200810080218.18898.nickpiggin@yahoo.com.au> <20081007153203.GB3337@redhat.com> <200810081524.40614.nickpiggin@yahoo.com.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200810081524.40614.nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, Oct 08, 2008 at 03:24:40PM +1100, Nick Piggin wrote:
 
 > >  > If that helps, can you try adding some printks to narrow down where it
 > >  > is getting stuck?
 > >
 > > This is going to sound strange, but I've forgotten which box that was.
 > > I'm due to reinstall all my test boxes now that the next Fedora beta
 > > has come out anyway, so I'll hopefully figure out by the end of the week :)
 > 
 > That does sound strange ;) But I can't believe that! It would be really
 > interesting if it was stuck in calibrate_delay, but maybe the backtrace
 > is just messed up...
 > 
 > If you do manage to reproduce it, I would be quite interested. Otherwise,
 > I think we can say it's not a showstopper for 2.6.27.

agreed.  I clearly have too many other shiny toys.

	Dave

-- 
http://www.codemonkey.org.uk
