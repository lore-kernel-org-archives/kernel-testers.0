From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12645] DMI low-memory-protect quirk causes resume hang
	on Samsung NC10
Date: Sat, 21 Mar 2009 20:51:52 +0100
Message-ID: <20090321195152.GB25327@elte.hu>
References: <HPkmj74uawF.A.iqE.M8TxJB@chimera> <fnEpM0mQZjO.A.fJF.d8TxJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <fnEpM0mQZjO.A.fJF.d8TxJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Patrick Walton <pcwalton-764C0pRuGfqVc3sceRu5cw@public.gmane.org>, Philipp Kohlbecher <xt28-Mmb7MZpHnFY@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12645
> Subject		: DMI low-memory-protect quirk causes resume hang on Samsung NC10
> Submitter	: Patrick Walton <pcwalton-764C0pRuGfqVc3sceRu5cw@public.gmane.org>
> Date		: 2009-02-06 18:35 (44 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=0af40a4b1050c050e62eb1dc30b82d5ab22bf221

this is in NEEDINFO state - the question is whether this commit 
(currently queued up for .30) fixes it:

  78a8b35: x86: make e820_update_range() handle small range update

	Ingo
