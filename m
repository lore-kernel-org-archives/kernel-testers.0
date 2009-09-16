From: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13780] NULL pointer dereference loading powernowk8
Date: Wed, 16 Sep 2009 11:07:42 -0400
Message-ID: <20090916150742.GA2493@redhat.com>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera> <200909080112.14997.rjw@sisk.pl> <20090908194653.GA3517@roeckx.be> <200909102259.15144.rjw@sisk.pl> <alpine.DEB.1.00.0909151642100.24059@chino.kir.corp.google.com> <20090916064708.GA25472@roeckx.be>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090916064708.GA25472-burXGKnpAKGzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kurt Roeckx <kurt-burXGKnpAKGzQB+pC5nmwQ@public.gmane.org>
Cc: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mark Langsdorf <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>, Naga Chumbalkar <nagananda.chumbalkar-VXdhtT5mjnY@public.gmane.org>

On Wed, Sep 16, 2009 at 08:47:08AM +0200, Kurt Roeckx wrote:
 > On Tue, Sep 15, 2009 at 04:45:37PM -0700, David Rientjes wrote:
 > > On Thu, 10 Sep 2009, Rafael J. Wysocki wrote:
 > > 
 > > > > So I did a biset, and this is the result:
 > > > > $ git bisect good
 > > > > 0e64a0c982c06a6b8f5e2a7f29eb108fdf257b2f is first bad commit
 > > 
 > > 0e64a0c has this cleanup, which isn't equivalent to the previous code:
 > 
 > Please look at the patch I attached to the bug report.  There is
 > other code that is not equivalent.  It's in comment #17:
 > http://bugzilla.kernel.org/show_bug.cgi?id=13780#c17
 > 
 > And the patch itself:
 > http://bugzilla.kernel.org/attachment.cgi?id=23048
 > 
 > This patch fixes my problem.
 
Thanks for that Kurt.  I'll get this merged and on the way to
Linus & stable today.

	Dave
