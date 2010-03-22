From: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
Subject: Re: [Bug #15202] lockdep warning during elevator_switch
Date: Mon, 22 Mar 2010 03:24:46 +0000 (GMT)
Message-ID: <alpine.LSU.2.00.1003220319360.1726@sister.anvils>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera> <hTwaxgnIZ2O.A.rhF.SQopLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1269228302; bh=43qDYFLWIXfoGo9M8BaMEkD6ngg=;
	h=Sender:Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type;
	b=Hw//ZzXVmN5C71nFCyjaMSLvrWlV6SDjcbWVpn6ylHbBiyB7j/QIDP4zlTxwb212s
	 g7nn8ZADfPr4ZYvu+TyHw==
In-Reply-To: <hTwaxgnIZ2O.A.rhF.SQopLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, 21 Mar 2010, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> introduced between 2.6.32 and 2.6.33.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15202
> Subject		: lockdep warning during elevator_switch
> Submitter	: Hugh Dickins <hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org>
> Date		: 2010-01-31 23:55 (50 days old)
> References	: http://marc.info/?l=linux-kernel&m=126498212613051&w=4

Yes, it is still a regression 2.6.33.1 (though fixed in 2.6.34-rc1:
my guess is that it will be left as a regression in 2.6.33-stable,
since it only happens when you have chosen CONFIG_PROVE_LOCKING=y).

Hugh
