From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [linux-pm] Suspend regression, hang after matroxfb
Date: Fri, 30 Jan 2009 23:27:50 +0100
Message-ID: <200901302327.50887.rjw@sisk.pl>
References: <20090129125855.GA4597@alice> <200901302215.28057.rjw@sisk.pl> <20090130220640.GB13207@alice>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090130220640.GB13207@alice>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>
Cc: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, vandrove-hnqZr3NxcozrBKCeMvbIDA@public.gmane.org, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Friday 30 January 2009, Eric Sesterhenn wrote:
> * Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> > On Friday 30 January 2009, Eric Sesterhenn wrote:
> > > * Rafael J. Wysocki (rjw-KKrjLPT3xs0@public.gmane.org) wrote:
> > > > On Thursday 29 January 2009, Eric Sesterhenn wrote:
> > > > > hi,
> > > > > 
> > > > > on this box standby worked with 2.6.28, but is broken with 2.6.29-rc3.
> > > > > 
> > > > > Dmesg of startup
> > > > > http://www.cccmz.de/~snakebyte/200.log
> > > > > .config
> > > > > http://www.cccmz.de/~snakebyte/config_200
> > > > > 
> > > > > When testing the devices 
> > > > > 
> > > > > root@computer-desktop:/sys/power# echo devices > pm_test 
> > > > 
> > > > What happens if you replace 'devices' with 'core' ?
> > > 
> > > no change, it hangs after matroxfb
> > > 
> > > root@computer-desktop:/sys/power# echo core > pm_test 
> > > root@computer-desktop:/sys/power# echo standby > state
> > > 
> > [--snip--]
> > > 
> > > > If the same, what happens without the matroxfb driver?
> > > 
> > > It gets a bit further, suspend seems to complete,
> > > but hangs during resume
> > 
> > Please check if the appended patch helps.
> 
> It does help in both cases (with matroxfb enabled and disabled)
> thanks.

What machine is that?

Rafael
