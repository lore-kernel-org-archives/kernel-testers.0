From: "Bob Copeland" <me-aXfl/3sk2vNUbtYUoyoikg@public.gmane.org>
Subject: Re: [Bug #12600] i915 lockdep warning
Date: Mon, 9 Feb 2009 12:21:26 -0500
Message-ID: <20090209172031.M25268@bobcopeland.com>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.xaG.-20jJB@chimera> <adaljsgbeh6.fsf@cisco.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <adaljsgbeh6.fsf-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Roland Dreier <rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Brandeburg, Jesse" <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sun, 08 Feb 2009 17:12:21 -0800, Roland Dreier wrote
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12600
>  > Subject		: i915 lockdep warning
>  > Submitter	: Brandeburg, Jesse <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>  > Date		: 2009-01-13 23:17 (27 days old)
>  > References	: http://marc.info/?l=linux-kernel&m=123188898423532&w=4
> 
> Looks like a dup of 12491 to me.
> 
>  - R.

I can also confirm that Roland's patch fixes it for me.

-- 
Bob Copeland %% www.bobcopeland.com

