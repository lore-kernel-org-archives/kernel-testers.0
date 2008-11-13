From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Thu, 13 Nov 2008 15:11:16 -0800 (PST)
Message-ID: <20081113.151116.139760511.davem@davemloft.net>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
	<wnN9HICUAgP.A._d.f5zFJB@chimera>
	<1226295985.7731.7.camel@pasglop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1226295985.7731.7.camel@pasglop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, cloos-GRsvFm/Gh/pBDgjK7y7TUQ@public.gmane.org, paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org

From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Date: Mon, 10 Nov 2008 16:46:25 +1100

> David, would you mind testing on your machine ? It's the one that shows
> the biggest performance improvement, and I would like to know how much
> it is affected by that patch. As long as the "worst case" performance
> is still reasonable, I'm ok to take the hit if the improvement for you
> is still significant.

Finally got around to this, we lose about a full second in the
"cat rfc3261.txt" benchmark:

2.6.28-rc4 vanilla:

7.634
7.704
7.688

2.6.28rc4+patch:

8.712
8.685
8.702
