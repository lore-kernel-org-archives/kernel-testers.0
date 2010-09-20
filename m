From: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Subject: Re: [Bug #16228] BUG/boot failure on Dell Precision T3500 (pci/ahci_stop_engine)
Date: Mon, 20 Sep 2010 14:44:58 -0600
Message-ID: <201009201445.00677.bjorn.helgaas@hp.com>
References: <r2gGqgg1zFC.A.LrE.w97lMB@chimera> <aRnAGz9xZ8K.A.B1G.qB8lMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <aRnAGz9xZ8K.A.B1G.qB8lMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Brian Bloniarz <brian.bloniarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, chemobejk-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Monday, September 20, 2010 01:57:17 pm Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16228
> Subject		: BUG/boot failure on Dell Precision T3500 (pci/ahci_stop_engine)
> Submitter	: Brian Bloniarz <brian.bloniarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-06-16 17:57 (97 days old)
> Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>

The four patches here: https://patchwork.kernel.org/patch/189182/
should resolve this problem.  They've been tested by Stefan Becker.

Bjorn
