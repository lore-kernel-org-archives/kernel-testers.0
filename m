From: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15668] start_kernel(): bug: interrupts were enabled early
Date: Wed, 07 Apr 2010 15:32:25 -0700
Message-ID: <4BBD07F9.5060106@zytor.com>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera> <JVS2s9dmTsP.A.4LH.YtPvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <JVS2s9dmTsP.A.4LH.YtPvLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On 04/07/2010 02:13 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15668
> Subject		: start_kernel(): bug: interrupts were enabled early
> Submitter	: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
> Date		: 2010-03-25 19:53 (14 days old)
> First-Bad-Commit: http://git.kernel.org/git/linus/773e3eb7b81e5ba13b5155dfb3bb75b8ce37f8f9
                                         ^^^^

FWIW, this /git is redundant.

	-hpa
