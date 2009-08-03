From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13865] Can only resume with HP_WMI selected on compaq nc6000 when 4c395bdd3f2ca8f7e8efad881e16071182c3b8ca is reverted
Date: Mon, 3 Aug 2009 17:18:42 +0200
Message-ID: <200908031718.42937.rjw@sisk.pl>
References: <upey9ZSfnaF.A.-oE.rpgdKB@chimera> <7ixSg7D88bK.A.qOF.3pgdKB@chimera> <200908030053.27869.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200908030053.27869.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, cedric <cedric-x1Cn44Nr1HaZIoH1IeqzKA@public.gmane.org>, Matthew Garrett <mjg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Monday 03 August 2009, Frans Pop wrote:
> On Sunday 02 August 2009, Rafael J. Wysocki wrote:
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> > be listed and let me know (either way).
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13865
> > Subject	: Can only resume with HP_WMI selected on compaq nc6000 when
> >		  4c395bdd3f2ca8f7e8efad881e16071182c3b8ca is reverted
> > Submitter	: cedric <cedric-x1Cn44Nr1HaZIoH1IeqzKA@public.gmane.org>
> > Date		: 2009-07-29 12:47 (5 days old)
> 
> Fix just made it into mainline: daed953721850381673687c59f3a0df553eb6626

Thanks, closed.

Rafael
