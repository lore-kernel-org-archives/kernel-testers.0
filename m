From: Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12598] tg3 dead after resume
Date: Wed, 4 Feb 2009 19:43:30 -0500 (EST)
Message-ID: <alpine.DEB.2.00.0902041941440.6694@parag-desktop>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.QEF._uYiJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:x-x-sender:to:cc
         :subject:in-reply-to:message-id:references:user-agent:mime-version
         :content-type;
        bh=mGFJ8vCqiGkYhSj0tW1YqQXvIYMhyw5mWbCqFjP9B5g=;
        b=nW2zhn+MxUHgUH6CfbEtjeoWvuwXRxuuwWjYx6GfB/9i7QIkd92hjRUm2PQm6Kc9yv
         G7UV+k+WQOHD7fk/y9Xtq/DMo7n4/QsbApz3sw9F3x0PAnOUGSmJq2bWCef5Jzy09uPA
         PjXdMq+hC+IFfz/ti0d83H+ePm66ogz3v2n70=
In-Reply-To: <pWZw1SZjMCH.A.QEF._uYiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>



On Wed, 4 Feb 2009, Rafael J. Wysocki wrote:

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12598
> Subject		: tg3 dead after resume
> Submitter	: Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-01-29 0:14 (7 days old)
> References	: http://marc.info/?l=linux-kernel&m=123318968501524&w=4
> Handled-By	: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> 		  Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=123365342301877&w=4

OK to close - haven't checked if the patch made it to Linus' tree, 
assuming yes.

Parag
