From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Fri, 14 Nov 2008 11:54:20 +1100
Message-ID: <1226624060.7178.100.camel@pasglop>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	 <wnN9HICUAgP.A._d.f5zFJB@chimera> <1226295985.7731.7.camel@pasglop>
	 <20081113.151116.139760511.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081113.151116.139760511.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, cloos-GRsvFm/Gh/pBDgjK7y7TUQ@public.gmane.org, paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org

On Thu, 2008-11-13 at 15:11 -0800, David Miller wrote:
> From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
> Date: Mon, 10 Nov 2008 16:46:25 +1100
> 
> > David, would you mind testing on your machine ? It's the one that shows
> > the biggest performance improvement, and I would like to know how much
> > it is affected by that patch. As long as the "worst case" performance
> > is still reasonable, I'm ok to take the hit if the improvement for you
> > is still significant.
> 
> Finally got around to this, we lose about a full second in the
> "cat rfc3261.txt" benchmark:
> 
> 2.6.28-rc4 vanilla:
> 
> 7.634
> 7.704
> 7.688
> 
> 2.6.28rc4+patch:
> 
> 8.712
> 8.685
> 8.702

How does it compare with not having the acceleration ? ie. I don't think
I can do anything about it, except maybe optimize for the case where the
pixmap is already aligned (and thus doesn't need scissors), the main
question is is the acceleration still worth it or not at all since it's
generally not worth it on other architectures.

Cheers,
Ben.

