From: Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #37232] [3.0-rc1][NMI/DMAR][iwlagn] errors - PCI system
 error (SERR) for reason a1 on CPU 0
Date: Sat, 2 Jul 2011 21:54:12 +0200
Message-ID: <20110702215412.00527491@schatten.dmk.lab>
References: <VDRaLpg_NZ.A.tnC.JZ6BOB@chimera>
	<2202361.0SXGgnGr4r@segfault.sh0n.net>
	<201106292132.12265.rjw@sisk.pl>
	<4678134.li9aFGSxuF@segfault.sh0n.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4678134.li9aFGSxuF-RRHT56Q3PSMGBMjmSbuoWl6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Wed, 29 Jun 2011 23:57:57 -0400
Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org> wrote:

> >>>On Wednesday, June 29, 2011 09:32:12 PM Rafael J. Wysocki wrote:
> > > On Sunday, June 26, 2011 11:23:44 PM Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a summary
> > > report of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.39.  Please verify if it still should be listed and let the
> > > tracking team know (either way).
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=37232
> > > Subject		: [3.0-rc1][NMI/DMAR][iwlagn] errors - PCI system error (SERR) for reason a1 on CPU 0
> > > Submitter	: Shawn Starr <XXXX.XX-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > > Date		     : 2011-06-03 4:56 (24 days old)
> > > Message-ID: <4478124.OuFNgaPiHS-RRHT56Q3PSMGBMjmSbuoWl6hYfS7NtTn@public.gmane.org>
> > > References	: http://marc.info/?l=linux-kernel&m=130707737616116&w=2
> 
> >>> Thanks for the update.
> >>> Rafael
> 
> Hello Rafael/Linux devs,
> 
> You can close this bug now, regression is gone now. Both the SERR and the DMAR  (coming from iwlagn)
> errors are resolved.
> 
> Working in: -rc5 (Fedora rawhide 3.0-0.rc5.git0.1.fc16.x86_64)
> 

Is this a vanilla linux kernel or has it out of tree patches?

> Thanks,
> Shawn.
