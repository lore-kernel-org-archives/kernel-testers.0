From: Kurt Roeckx <kurt-burXGKnpAKGzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #13780] NULL pointer dereference loading powernowk8
Date: Wed, 16 Sep 2009 14:01:10 +0200
Message-ID: <20090916120110.GA9914@roeckx.be>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera>
 <200909080112.14997.rjw@sisk.pl>
 <20090908194653.GA3517@roeckx.be>
 <200909102259.15144.rjw@sisk.pl>
 <alpine.DEB.1.00.0909151642100.24059@chino.kir.corp.google.com>
 <20090916064708.GA25472@roeckx.be>
 <alpine.DEB.1.00.0909152359131.13366@chino.kir.corp.google.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.DEB.1.00.0909152359131.13366-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mark Langsdorf <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>, Naga Chumbalkar <nagananda.chumbalkar-VXdhtT5mjnY@public.gmane.org>

On Wed, Sep 16, 2009 at 12:01:41AM -0700, David Rientjes wrote:
> On Wed, 16 Sep 2009, Kurt Roeckx wrote:
> > 
> > Please look at the patch I attached to the bug report.  There is
> > other code that is not equivalent.  It's in comment #17:
> > http://bugzilla.kernel.org/show_bug.cgi?id=13780#c17
> > 
> > And the patch itself:
> > http://bugzilla.kernel.org/attachment.cgi?id=23048
> > 
> > This patch fixes my problem.
> > 
> 
> Ah, I hadn't noticed you attached a patch there that fixes the issue for 
> you.  Is it en-route to Dave Jones so that it can make its way upstream?

I have no idea, so I would guess not.


Kurt
