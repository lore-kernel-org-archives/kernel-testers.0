From: Nico Schottelius <nico-kernel-20110117-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
Subject: Re: [Bug #28102] New display errors in 2.6.38-rc2-00175-g6fb1b30
Date: Thu, 3 Feb 2011 19:55:16 +0100
Message-ID: <20110203185516.GA2560@schottelius.org>
References: <QUnbpYCwS-F.A.vaC.VHeSNB@chimera>
 <ibChAs1xEQI.A.0gC.aHeSNB@chimera>
 <20110203101111.35d71bf0@jbarnes-desktop>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20110203101111.35d71bf0@jbarnes-desktop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Nico Schottelius <nico-kernel-20110117-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>

Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>:

> This should hopefully find the culprit:
> $ git bisect start drivers/gpu/drm/i915/intel_display.c
> $ git bisect good v2.6.37
> $ git bisect bad
 
Just went that path, compiled 2.6.37-rc4-00292-g3c8cdf9
and suspended which resulted in a completly dead device
(no ping, no ctrlaltdel possible), i.e. different fatal situation.

I'm a bit confused, not sure whether this is related to
the broken display issue or not.

As the tests always cost a quite lengthy fsck run, I'd
love to go a different way from 2.6.37, if anybody has
a better hint.

Cheers,

Nico

-- 
PGP key: 7ED9 F7D3 6B10 81D7 0EC5  5C09 D7DC C8E4 3187 7DF0
