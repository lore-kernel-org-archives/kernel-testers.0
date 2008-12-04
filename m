From: Soeren Sonnenburg <kernel-YxZl4NRrHdw@public.gmane.org>
Subject: Re: [Bug #11698] 2.6.27-rc7, freezes with &gt; 1 s2ram cycle
Date: Thu, 04 Dec 2008 07:59:08 +0100
Message-ID: <1228373948.3927.39.camel@localhost>
References: <49ZBswjGjrL.A.ECE.BGyNJB@chimera>
	 <TpbYvO5GPt.A.nTF.2GyNJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <TpbYvO5GPt.A.nTF.2GyNJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, 2008-12-03 at 23:40 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.26 and 2.6.27.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11698
> Subject		: 2.6.27-rc7, freezes with &gt; 1 s2ram cycle
> Submitter	: Soeren Sonnenburg <kernel-YxZl4NRrHdw@public.gmane.org>
> Date		: 2008-09-29 11:29 (66 days old)
> References	: http://marc.info/?l=linux-kernel&m=122268780926859&w=4
> Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>

well it freezes at any s2ram resume attempt, even without X just from
console.

Soeren
