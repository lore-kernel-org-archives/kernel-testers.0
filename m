From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15668] start_kernel(): bug: interrupts were enabled early
Date: Wed, 21 Apr 2010 07:04:09 +0200
Message-ID: <201004210704.09668.rjw@sisk.pl>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.sj.BSSzLB@tosh> <20100420141108.GA2131@debian>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100420141108.GA2131@debian>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Tuesday 20 April 2010, Rabin Vincent wrote:
> On Tue, Apr 20, 2010 at 05:19:21AM +0200, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15668
> > Subject		: start_kernel(): bug: interrupts were enabled early
> > Submitter	: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
> > Date		: 2010-03-25 19:53 (26 days old)
> > First-Bad-Commit: http://kernel.org/git/linus/773e3eb7b81e5ba13b5155dfb3bb75b8ce37f8f9
> > Message-ID	: <20100325194100.GA2364@debian>
> > References	: http://marc.info/?l=linux-kernel&m=126954607216519&w=2
> 
> This was fixed by 3eac4abaa69949af0e2f64e5c55ee8a22bbdd3e7 ("rwsem
> generic spinlock: use IRQ save/restore spinlocks").

Thanks, closed.

Rafael
