From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12155] Regression in 2.6.28-rc and 2.6.27-stable -
	hibernate related
Date: Tue, 16 Dec 2008 20:18:27 +0100
Message-ID: <20081216191827.GA1176@elte.hu>
References: <u7kfEgp36eE.A.qpG.Y4_QJB@chimera> <T1gm2CtAHBF.A.bnH.14_QJB@chimera> <b637ec0b0812131045n34bf420w3729abf24533b51c@mail.gmail.com> <200812131956.03495.rjw@sisk.pl> <20081216190707.GA336@elte.hu> <alpine.LFD.2.00.0812161113350.14014@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0812161113350.14014-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Kleikamp <shaggy-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>, Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>


* Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:

> On Tue, 16 Dec 2008, Ingo Molnar wrote:
> > 
> > yeah - i think it's too late to do anything but a revert here.
> 
> Yup. Already done. Commit ca7e716c7833aeaeb8fedd6d004c5f5d5e14d325.
> 
> Did -stable revert it too?

not that i know of (-stable tries to follow upstream with reverts too).
We could have put a Cc: stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org into the reverter commit ;-)

	Ingo
