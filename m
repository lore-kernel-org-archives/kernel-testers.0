From: David Rientjes <rientjes@google.com>
Subject: Re: [Bug #13780] NULL pointer dereference loading powernowk8
Date: Wed, 16 Sep 2009 00:01:41 -0700 (PDT)
Message-ID: <alpine.DEB.1.00.0909152359131.13366@chino.kir.corp.google.com>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera> <200909080112.14997.rjw@sisk.pl> <20090908194653.GA3517@roeckx.be> <200909102259.15144.rjw@sisk.pl> <alpine.DEB.1.00.0909151642100.24059@chino.kir.corp.google.com> <20090916064708.GA25472@roeckx.be>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757420AbZIPHBu@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1253084507; bh=4rXNTIok3STTWGEzVS8tcSbyTMI=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=cl7sqydDnRROZ6bNLot7Y0xLi3D9c/8
	AwyPNtAHpps+9S4Xrp/SgIjB8uWPHuB8cpV1TtOf3ylCOVXWjUoZB9g==
In-Reply-To: <20090916064708.GA25472@roeckx.be>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kurt Roeckx <kurt@roeckx.be>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Dave Jones <davej@redhat.com>, LKML <linux-kernel@vger.kernel.org>, Kernel Testers <kernel-testers@vger.kernel.org>, Mark Langsdorf <mark.langsdorf@amd.com>, Naga Chumbalkar <nagananda.chumbalkar@hp.com>

On Wed, 16 Sep 2009, Kurt Roeckx wrote:

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
> 

Ah, I hadn't noticed you attached a patch there that fixes the issue for 
you.  Is it en-route to Dave Jones so that it can make its way upstream?
