From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Fri, 2 Oct 2009 11:11:52 +0200
Message-ID: <200910021111.55749.elendil@planet.nl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.k2B.ZNTxKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <COE24pZSBH.A.k2B.ZNTxKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Thursday 01 October 2009, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> be listed and let me know (either way).
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14141
> Subject	: order 2 page allocation failures in iwlagn
> Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
> Date		: 2009-09-06 7:40 (26 days old)
> References	: http://marc.info/?l=linux-kernel&m=125222287419691&w=4
> Handled-By	: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>

I'm not sure about this.

The error messages from failed allocations should now be a lot less as a 
result of this commit:
commit f82a924cc88a5541df1d4b9d38a0968cd077a051
Author: Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Date:   Thu Sep 17 10:43:56 2009 -0700
    iwlwifi: reduce noise when skb allocation fails

That commit is in mainline, and I'm not sure if it is important enough for 
a stable update (AFAICT it's not listed for 2.6.31.2).

That commit is mostly cosmetic, but possibly the real regression is not in 
iwlagn but in the way memory is freed/defragmented. That aspect was also 
reported by Bartlomiej (#14016) and was extensively discussed (without a 
clear conclusion) here: http://lkml.org/lkml/2009/8/26/140.

My own feeling is that Bartlomiej is correct and that something has changed 
since .29 and that on average we do have less higher order areas available 
after the system has been in use for some time, but I can't substantiate 
that. I do know that before .30 I had never seen the SKB allocation 
errors.

Main problem is that it's hard to deliberately and reproducibly get the 
system in a state where the errors occur.

I certainly do feel that the kernel should try to make sure higher order 
allocations remain possible during system use. They are not only needed 
shortly after boot: drivers can be loaded/unloaded at any time. OTOH Mel 
probably does have a point that really high order GFP_ATOMIC allocations 
by drivers make no sense [1].

Anyway, I have no problems with this BR being closed.

Cheers,
FJP

[1] <20090921133704.GO12726-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
