From: "Fabio Comolli" <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12155] Regression in 2.6.28-rc and 2.6.27-stable - hibernate related
Date: Sun, 11 Jan 2009 15:34:44 +0100
Message-ID: <b637ec0b0901110634i7ea6fa7ao87ec22beb5a51c98@mail.gmail.com>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera>
	 <nHCfeC0YLrE.A.7fD.xbfaJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=7K7oehiXGiyrvUUBuO8o2u4TlPeN1wBiqnzjksfJQLs=;
        b=lfzX9vEcGPmZoI3U2ZLwVlv2yTAMzxqhFKyMvxQ/wyY2dWXsLPhIBkGf6C2Hev35u1
         EX+7bb0U+2+ALBYIM9C3EKnCEGrmn7ZNANbbtH/8LCYjBjAIbcaEvWAH7LBz42OHEFsk
         b9NgHZE5G4DmHqmP313RlLSnyFbbjemo9PAnI=
In-Reply-To: <nHCfeC0YLrE.A.7fD.xbfaJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Kleikamp <shaggy-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

It's been solved in 2.6.28-final and backported to 2.6.27.10 (a revert
of a Dave Kelikamp's commit).

On Sun, Jan 11, 2009 at 12:41 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12155
> Subject         : Regression in 2.6.28-rc and 2.6.27-stable - hibernate related
> Submitter       : Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-11-23 16:17 (50 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=5e55aa8db085dad1aabb4574c73c23c7ae571e7b
> References      : http://marc.info/?l=linux-kernel&m=122745709926361&w=4
>
>
>
