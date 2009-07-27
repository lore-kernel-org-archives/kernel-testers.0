From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13841] 2.6.31-rc4 boot failure
Date: Tue, 28 Jul 2009 00:49:26 +0200
Message-ID: <200907280049.26580.rjw@sisk.pl>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.olB.EHObKB@chimera> <200907270020.23019.gene.heskett@verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200907270020.23019.gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Gene Heskett <gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 27 July 2009, Gene Heskett wrote:
> On Sunday 26 July 2009, Rafael J. Wysocki wrote:
> >This message has been generated automatically as a part of a report
> >of recent regressions.
> >
> >The following bug entry is on the current list of known regressions
> >from 2.6.30.  Please verify if it still should be listed and let me know
> >(either way).
> >
> Yes.  I have nuked the odd stuff in my rc.local file, and rebuilt this kernel 
> with several mods that I thought might be related, but it is still failing in 
> the same manner.  The error messages (apparently from lp:, but long after cups 
> has been started) do NOT make it to the messages log file either, so its 
> totally blown up at that point.
> 
> Note, that this is a regression from 2.6 31-rc3, which works fine.  So the 
> thing shouldn't be that hard to find.  But in looking over the changelog, 
> nothing obviously reaches out and grabs me.
> 
> I'm not really equipt to do a bisect here either, my git from F10 is at least 
> 2 versions old now.  And I'm crippled by a way too small /boot partition which 
> can't hold more than 12-14 kernels.  The disk partitioning tool in F10 is 
> nothing short of fscking broken IMO. But fedora isn't interested in that 
> either, cuz its existed since at least Fedora 2.  Here, fedora is on its way 
> out, 64 bit mandriva sure looks nice.  And DiskDrake Just Works(TM).
> 
> Thanks Rafael, I thought it was being ignored.

You're welcome, thanks for the update.

Rafael
