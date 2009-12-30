From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: Re: [Bug #14901] bisected crash due to "x86: Move swiotlb
 initialization before dma32_free_bootmem"
Date: Wed, 30 Dec 2009 09:48:47 +0900
Message-ID: <20091230094819K.fujita.tomonori@lab.ntt.co.jp>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
	<NJVdobuNFNK.A.A9H.cnhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <NJVdobuNFNK.A.A9H.cnhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org, yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org

On Tue, 29 Dec 2009 16:09:58 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14901
> Subject		: bisected crash due to "x86: Move swiotlb initialization before dma32_free_bootmem"
> Submitter	: Roland Dreier <rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
> Date		: 2009-12-15 7:47 (15 days old)
> References	: http://marc.info/?l=linux-kernel&m=126086324302061&w=4
> Handled-By	: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
> 		  Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

Already fixed by the commit 186a25026c44d1bfa97671110ff14dcd0c99678e.

Thanks,
