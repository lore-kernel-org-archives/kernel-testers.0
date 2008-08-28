From: Paul Jackson <pj-sJ/iWh9BUns@public.gmane.org>
Subject: Re: [regression?] [resend] Memory zone info seems incomplete in
 boottime dmesg output
Date: Thu, 28 Aug 2008 13:16:08 -0500
Message-ID: <20080828131608.4253aa99.pj@sgi.com>
References: <200808142042.24606.elendil@planet.nl>
	<20080814121349.b77e0116.akpm@linux-foundation.org>
	<20080815100552.GA27547@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080815100552.GA27547-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Frans, quoted by Mel (two weeks ago ;):
> > P.S. As a user I really don't find the hex values easier to read/use than 
> > the decimal values. Except maybe for the "Zone PFN ranges" where things 
> > seem to be nicely aligned.

I suppose that for smaller systems, such as what would be a normal
size 32 bit system these days, it's a bit of preference, but for
larger systems, such as 64 bit systems or future "normal" systems,
it weighs more heavily toward the hex format.

-- 
                  I won't rest till it's the best ...
                  Programmer, Linux Scalability
                  Paul Jackson <pj-sJ/iWh9BUns@public.gmane.org> 1.940.382.4214
