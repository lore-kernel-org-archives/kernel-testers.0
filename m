From: Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>
Subject: Re: [patch] Re: [Bug #12100] resume (S2R) broken by Intel
	microcode module, on A110L
Date: Sat, 20 Dec 2008 14:19:46 +0100
Message-ID: <20081220131946.GA31366@rhlx01.hs-esslingen.de>
References: <1229728524.5122.13.camel@earth>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1229728524.5122.13.camel@earth>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi,

On Sat, Dec 20, 2008 at 12:15:24AM +0100, Dmitry Adamushko wrote:
> I'd appreciate if someone with an appropriate system might give a try to the
> 2nd patch (titled "fix a comparison && deadlock...").
> 
> 
> In any case, the deadlock situation is a must-have fix.

YES, that actually fixed it!!

Built -rc9, booted 3 times and suspended, always deadlock upon resume.
Patched -rc9, make modules_install, suspended 3 times, always fine.

Weird, I thought I had attempted all (most?) of the parts that your patch
references before...

Thanks a lot for your very responsive handling!

I suppose this can get to -urgent now, JIT for the Christmas
release?

Andreas Mohr
