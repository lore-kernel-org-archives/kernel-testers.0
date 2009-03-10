From: Harvey Harrison <harvey.harrison-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12806] i915 broken STR
Date: Mon, 09 Mar 2009 19:33:22 -0700
Message-ID: <1236652402.12423.6.camel@brick>
References: <KiHv0irKPzE.A.l3.hUarJB@chimera>
	 <SLCXkuHtxAO.A.QeB.sUarJB@chimera> <1236405187.7409.2.camel@brick>
	 <200903072228.47358.rjw@sisk.pl>  <1236651832.10190.20.camel@gaiman>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:cc
         :in-reply-to:references:content-type:date:message-id:mime-version
         :x-mailer:content-transfer-encoding;
        bh=NEuoPaWu40y08oCvW4gdchnS0f0uEkPyKu42i6/6GuA=;
        b=BB+9goqDqJvoZkgLHQyBFYrhWXE8J18C26urwa9XMS2nuJKGsmFrzgazrAjtjji1On
         6vQC8VdWb1a3KNpqswSCkXas8J2iVp7Fhbp2An7oW9ZSxVG3lXEHOQ5oiidoBwOGg3Kv
         +kIyz0yQEXoDc1C+QHkT8dti4+0WxPY5fjKjs=
In-Reply-To: <1236651832.10190.20.camel@gaiman>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On Mon, 2009-03-09 at 19:23 -0700, Eric Anholt wrote:
> On Sat, 2009-03-07 at 22:28 +0100, Rafael J. Wysocki wrote:
> > On Saturday 07 March 2009, Harvey Harrison wrote:
> > > On > > This looks to have been a case of old-userspace..upgrading to
> > > xorg-intel-video 2.6.1 (ubuntu Jaunty Alpha5) fixes STR here.
> > 
> > Well, thanks, but I'm not really sure if this is a good news.
> > 
> > Jesse, Eric, does it mean we now break resume on anything earlier than 2.6.1
> > on the Harvey's hardware?
> 
> There's not much information (dmesg, Xorg.0.log) with this bug -- I'm
> guessing he's using KMS, given that that commit was where the problems
> started.  If so, yes, you really do need good userland for KMS to work.
> 

Yep, turns out I had KMS turned on in my config...I thought I'd disabled
it, sorry for the noise.

Harvey
