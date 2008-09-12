From: Rene Herman <rene.herman-cENuUygGYd//D1n+0JDH9g@public.gmane.org>
Subject: Re: [Bug #11550] pnp: Huge number of "io resource overlap" messages
Date: Sat, 13 Sep 2008 00:52:33 +0200
Message-ID: <48CAF2B1.7000008@keyaccess.nl>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik> <SpS7rta8n4.A.aHG.2bsyIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <SpS7rta8n4.A.aHG.2bsyIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>

On 12-09-08 21:06, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11550
> Subject		: pnp: Huge number of "io resource overlap" messages
> Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
> Date		: 2008-09-09 10:50 (4 days old)
> References	: http://marc.info/?l=linux-kernel&m=122095745403793&w=4
> Handled-By	: Rene Herman <rene.herman-cENuUygGYd//D1n+0JDH9g@public.gmane.org>
> 		  Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=122098498125536&w=4

It should be. The patch listed should be good as far as I'm concerned 
but needs to be pushed by Bjorn as PnP mainatainer. Generally speaking 0 
wouldn't be a _very_ necesarily invalid value it seems so it's maybe not 
very nice.

If someone wants a changelog though, this should do:

===
PNP: avoid checking unitialized BARs for conflicts

Avoid checking a PCI BAR for conflicts if the BIOS left it unitialized.

Reported-by: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Signed-off-by: Rene Herman <rene.herman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
===

(Frans: Tested-by?)

Rene.
