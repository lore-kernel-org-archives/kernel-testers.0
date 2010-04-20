From: Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>
Subject: Re: [Bug #15711] 2.6.34-rc3, BUG at mm/slab.c:2989
Date: Tue, 20 Apr 2010 11:00:25 +0200
Message-ID: <20100420090025.GA7997@fancy-poultry.org>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
 <YeFfFNFyTSF.A.zvH.wRSzLB@tosh>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <YeFfFNFyTSF.A.zvH.wRSzLB@tosh>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 20.04.2010, Rafael J. Wysocki wrote: 

> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the tracking team
> know (either way).
 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15711
> Subject		: 2.6.34-rc3, BUG at mm/slab.c:2989
> Submitter	: Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>
> Date		: 2010-04-01 17:52 (19 days old)
> Message-ID	: <20100401175225.GA6581-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127014437406250&w=2

Don't know if this is still present, after reporting it here on the list,
I've been advised by Chr. Lameter to switch from slab to slub. I did, and
haven't seen this again.
