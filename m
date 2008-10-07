From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #11550] pnp: Huge number of "io resource overlap" messages
Date: Wed, 8 Oct 2008 00:34:18 +0200
Message-ID: <200810080034.19210.elendil@planet.nl>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.PjH.L575IB@wind>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <yWwteD.A.PjH.L575IB@wind>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Rene Herman <rene.herman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Rene Herman <rene.herman-cENuUygGYd//D1n+0JDH9g@public.gmane.org>

On Saturday 04 October 2008, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11550
> Subject	: pnp: Huge number of "io resource overlap" messages
> Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
> Date		: 2008-09-09 10:50 (26 days old)
> References	: http://marc.info/?l=linux-kernel&m=122095745403793&w=4
> Handled-By	: Rene Herman <rene.herman-cENuUygGYd//D1n+0JDH9g@public.gmane.org>
> 		  Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=122246533505643&w=4

The structural patch for this from Bjorn got NACKed. AFAIK we're still 
waiting for someone (Bjorn?) to decide whether to go with a simpler patch 
from Rene for .27 and to push that.

For me it was possible to work around the issue by changing a BIOS 
setting, but I expect it will still affect others with similar BIOS 
behavior.
