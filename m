From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: Re: [Bug #13001] PCI-DMA: Out of IOMMU space
Date: Tue, 28 Apr 2009 17:28:24 +0900
Message-ID: <20090428172845R.fujita.tomonori@lab.ntt.co.jp>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
	<egHshlwQQFE.A.8CD.mpE9JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <egHshlwQQFE.A.8CD.mpE9JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org, grundler-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, optimusgd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Sun, 26 Apr 2009 11:46:28 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13001
> Subject		: PCI-DMA: Out of IOMMU space
> Submitter	:  <optimusgd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-04-03 09:30 (24 days old)

Probably, this is not a regression.

He doesn't hit this problem with 2.6.29 when he uses the kernel boot
option that he used with 2.6.28. I have no idea how not using
'allowdac' can solve the problem though.
