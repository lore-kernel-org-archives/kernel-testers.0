From: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Fri, 2 Oct 2009 22:01:43 +0200
Message-ID: <20091002200143.GA3845@bizet.domek.prywatny>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.k2B.ZNTxKB@chimera> <200910021111.55749.elendil@planet.nl> <20091002093226.GJ21906@csn.ul.ie>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=R0pDIAZNciS4CM5Dama/aSCJFYRGt1OniWraFn2Lc5c=;
        b=HpH5KK819IPyRBIdN3QmttCGMM6D7zC8BRFg7J4kGZCtHQvLb0PNAIeAw6gAmZA+sv
         YMMm4NfeZo38y/UzAprBJ9+yDFIhWj/I8c5dc2XNqeOwZ4zDD7j8hlAxb2V2ogtqgOkc
         tNCBd+avxo7UqQ6JRxFoPmSBHDQTF1/CEmXaU=
Content-Disposition: inline
In-Reply-To: <20091002093226.GJ21906-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Fri, Oct 02, 2009 at 10:32:26AM +0100, Mel Gorman wrote:
> On Fri, Oct 02, 2009 at 11:11:52AM +0200, Frans Pop wrote:
> > My own feeling is that Bartlomiej is correct and that something has changed 
> > since .29 and that on average we do have less higher order areas available 
> > after the system has been in use for some time, but I can't substantiate 
> > that. I do know that before .30 I had never seen the SKB allocation 
> > errors.
> > 
> > Main problem is that it's hard to deliberately and reproducibly get the 
> > system in a state where the errors occur.
> > 
> 
> Apparently, Karol Lewandowski (cc added) has a reliable
> reproduction case for when the firmware loading problem occurs
> (http://lkml.org/lkml/2009/9/30/242). While it's not the same problem exactly,
> it's probable they're related. I'm hoping the problem commit can be identified
> by his bisection whenever he gets around to it.

Unfortunately, I've had little success with bisecting this problem.
I've spend fair amount of time today trying to reproduce this problem,
but I'm unable to do so even on kernels that failed "easily" before.

Nothing has changed in hardware/software.  I've changed methodology
somewhat from suspend-and-look-for-failure-on-resume to rmmod, fill
memory, modprobe-and-see-it-fail... but well, few days ago it failed
in either case.

Damn.
