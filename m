From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11379] char/tpm: tpm_infineon no longer loaded for HP 2510p laptop
Date: Sun, 24 Aug 2008 23:12:46 +0200
Message-ID: <200808242312.47547.rjw@sisk.pl>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <VSpL6AnBTS.A.RSH.faGsIB@albercik> <200808240818.09275.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808240818.09275.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>

On Sunday, 24 of August 2008, Frans Pop wrote:
> On Saturday 23 August 2008, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11379
> > Subject	: char/tpm: tpm_infineon no longer loaded for HP 2510p laptop
> > Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
> > Date		: 2008-08-18 13:40 (6 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121906698213329&w=4
> > Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
> 
> Fixed with:
> commit 5e4c6564c95ce127beeefe75e15cd11c93487436
> Author: Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>
> Date:   Thu Aug 21 15:28:56 2008 +0200
> 
>     pnp: fix "add acpi:* modalias entries"

Thanks,  closed.

Rafael
