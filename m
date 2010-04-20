From: Andreas Schwab <schwab-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Tue, 20 Apr 2010 22:53:19 +0200
Message-ID: <m2k4s1hmm8.fsf@igel.home>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vUB.fSSzLB@tosh>
	<alpine.DEB.2.01.1004192339190.13016@bogon.housecafe.de>
	<1271765898.4324.2.camel@concordia>
	<alpine.DEB.2.01.1004201104170.13016@bogon.housecafe.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.01.1004201104170.13016-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>
	(Christian Kujau's message of "Tue, 20 Apr 2010 11:15:05 -0700 (PDT)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Cc: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org> writes:

> +	while ((p = strstr(p, "/")))

You want to use strchr.

Andreas.

-- 
Andreas Schwab, schwab-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org
GPG Key fingerprint = 58CA 54C7 6D53 942B 1756  01D3 44D5 214B 8276 4ED5
"And now for something completely different."
