From: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
Subject: Re: [Bug #15668] start_kernel(): bug: interrupts were enabled early
Date: Tue, 20 Apr 2010 19:41:08 +0530
Message-ID: <20100420141108.GA2131@debian>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
 <YeFfFNFyTSF.A.sj.BSSzLB@tosh>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <YeFfFNFyTSF.A.sj.BSSzLB@tosh>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Tue, Apr 20, 2010 at 05:19:21AM +0200, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15668
> Subject		: start_kernel(): bug: interrupts were enabled early
> Submitter	: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
> Date		: 2010-03-25 19:53 (26 days old)
> First-Bad-Commit: http://kernel.org/git/linus/773e3eb7b81e5ba13b5155dfb3bb75b8ce37f8f9
> Message-ID	: <20100325194100.GA2364@debian>
> References	: http://marc.info/?l=linux-kernel&m=126954607216519&w=2

This was fixed by 3eac4abaa69949af0e2f64e5c55ee8a22bbdd3e7 ("rwsem
generic spinlock: use IRQ save/restore spinlocks").

Rabin
