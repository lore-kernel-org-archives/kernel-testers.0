From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #13099] net, sky2: BUG: unable to handle kernel NULL
	pointer dereference, pci_vpd_truncate()
Date: Fri, 17 Apr 2009 02:45:17 +0200
Message-ID: <20090417004517.GB1988@elte.hu>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.Q2.cw85JB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <nY3-4PrO6XH.A.Q2.cw85JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13099
> Subject		: net, sky2: BUG: unable to handle kernel NULL pointer dereference, pci_vpd_truncate()
> Submitter	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> Date		: 2009-04-06 9:03 (11 days old)
> References	: http://marc.info/?l=linux-kernel&m=123900867611321&w=4
> Handled-By	: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

I think this can be closed as the fix has been merged upstream 
already (via the PCI tree):

 commit d407e32efe060afa2b9a797a91376ebc65b4ce11
 Author: Anton Vorontsov <avorontsov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>
 Date:   Wed Apr 1 02:23:41 2009 +0400

    PCI: Fix oops in pci_vpd_truncate

	Ingo
