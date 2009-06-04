From: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Thu, 4 Jun 2009 10:34:06 -0400
Message-ID: <20090604143406.GA19536@infradead.org>
References: <THxQaUP0K2D.A.QkF.UVbIKB@chimera> <PkPeJtNB3KO.A._pF.ZVbIKB@chimera> <20090530231018.GA29992@samad.com.au> <200906012221.38854.rjw@sisk.pl> <4A27DA01.8060105@windsormachine.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4A27DA01.8060105-d1V2JtDI1HZNJje9z4SY99BPR1lH4CV8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mike Dresser <mdresser_l-d1V2JtDI1HZNJje9z4SY99BPR1lH4CV8@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

On Thu, Jun 04, 2009 at 10:28:17AM -0400, Mike Dresser wrote:
> I am testing 2.6.30-rc8 on the server that has issues with 2.6.29.4,  
> I'll most likely know tonight or tomorrow morning if that kernel fixes  
> it.. I noticed a lot of xfs changes in rc8 so I figured it was worth a 
> try.

Can you please also run with CONFIG_XFS_DEBUG enabled so that all
kinds of asserts might trigger?
