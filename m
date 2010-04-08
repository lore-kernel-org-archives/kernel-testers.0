From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15668] start_kernel(): bug: interrupts were enabled early
Date: Thu, 8 Apr 2010 22:06:00 +0200
Message-ID: <201004082206.00243.rjw@sisk.pl>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera> <JVS2s9dmTsP.A.4LH.YtPvLB@chimera> <4BBD07F9.5060106@zytor.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4BBD07F9.5060106-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Thursday 08 April 2010, H. Peter Anvin wrote:
> On 04/07/2010 02:13 PM, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.33.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15668
> > Subject		: start_kernel(): bug: interrupts were enabled early
> > Submitter	: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
> > Date		: 2010-03-25 19:53 (14 days old)
> > First-Bad-Commit: http://git.kernel.org/git/linus/773e3eb7b81e5ba13b5155dfb3bb75b8ce37f8f9
>                                          ^^^^
> 
> FWIW, this /git is redundant.

Ah, thanks for the hint. :-)

Rafael
