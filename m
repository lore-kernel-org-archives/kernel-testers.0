From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13839] xc5000 no longer works with Myth-0.21-fixes branch
Date: Tue, 28 Jul 2009 00:46:13 +0200
Message-ID: <200907280046.13881.rjw@sisk.pl>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.Y0B.HHObKB@chimera> <4A6D0D5B.2000607@rtr.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A6D0D5B.2000607-gsilrlXbHYg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mark Lord <lkml-gsilrlXbHYg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Devin Heitmueller <dheitmueller-eb9eJ82Ua7k9XoPSrs7Ehg@public.gmane.org>

On Monday 27 July 2009, Mark Lord wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13839
> > Subject		: xc5000 no longer works with Myth-0.21-fixes branch
> > Submitter	: Mark Lord <lkml-gsilrlXbHYg@public.gmane.org>
> > Date		: 2009-07-19 15:15 (8 days old)
> > References	: http://marc.info/?l=linux-kernel&m=124814394016848&w=4
> > Handled-By	: Devin Heitmueller <dheitmueller-eb9eJ82Ua7k9XoPSrs7Ehg@public.gmane.org>
> ..
> 
> There is definitely a regression, in that it doesn't work without
> config changes to Myth.  This is due to the new way that firmware uploads
> are implemented in xc5000:  slower, and more often than before.
> 
> But the MythTV workaround required is simple:
> 
> > 3. In mythtv-setup -> CaptureCards -> DVB:1 -> RecordingOptions
> > there is a tickbox for "Open DVB Card on Demand".  It was ticked,
> > so I un-ticked that box.  Everything now works!
> > 
> > When that tickbox was selected, the xc5000 took five (5) seconds to "open",
> > as it did the firmware upload every time.  This appeared to exceed some
> > timeout inside myth.
> > 
> > With the tickbox NOT ticked, myth just opens the tuner once at startup,
> > and keeps it open, so no more delay when it wants to use it. 
> 
> 
> Dunno what to say about this one.

Well, let's close it as 'documented'.

Thanks,
Rafael
