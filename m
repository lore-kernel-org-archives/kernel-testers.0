From: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Subject: Re: [Bug #15713] hackbench regression due to commit 9dfc6e68bfe6e
Date: Mon, 26 Apr 2010 14:59:07 +0800
Message-ID: <1272265147.2078.648.camel@ymzhang.sh.intel.com>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vjH.sRSzLB@tosh>
	 <alpine.DEB.2.00.1004221045270.1204@router.home>
	 <4BD086D0.9090309@cs.helsinki.fi>
	 <alpine.DEB.2.00.1004232214520.29018@melkki.cs.helsinki.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.1004232214520.29018-nkv1RstziBBsRR2hCrRKtT03IgOmwywn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pekka J Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Christoph Lameter <cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, tim.c.chen-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On Fri, 2010-04-23 at 22:18 +0300, Pekka J Enberg wrote:
> On Thu, 22 Apr 2010, Pekka Enberg wrote:
> >>> The following bug entry is on the current list of known regressions
> >>> from 2.6.33.  Please verify if it still should be listed and let the 
> >>> tracking team
> >>> know (either way).
> >> 
> >> I have not been able to reproduce it so far.
> >
> > So what are our options? We can revert the SLUB conversion patch for now but 
> > I still can't see what's wrong with it...
I also don't know why. The original patch looks good.

> 
> I haven't been able to reproduce this either on my Core 2 machine.
Mostly, the regression exists on Nehalem machines. I suspect it's related to
hyper-threading machine.

> 
> Yanmin, does something like this help on your machines?
A quick testing doesn't show any help.

I did a new testing. After the machine boots, I hot remove 8 hyper-threading cpu
which means last 8 are just cores. The regression between 2.6.33 and 2.6.34-rc becomes
small.

My opinion is we needn't revert the patch, but still keep an eye on it when testing other
new RC kernel releases. One reason is volanoMark and netperf have no such regression.
Is it ok?

Yanmin

