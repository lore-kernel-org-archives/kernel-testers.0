From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #12422] 2.6.28-git can't resume from str
Date: Mon, 12 Jan 2009 18:08:33 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0901121807070.6528@localhost.localdomain>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>  <b6a2187b0901110813s5429573cm7d78f39e288f70a3@mail.gmail.com>  <20090111162949.GA15338@elte.hu>  <200901111736.24350.borntraeger@de.ibm.com>  <20090111163904.GA21806@elte.hu>  <b6a2187b0901110856j3f2ff6fepc19a816178e38a95@mail.gmail.com>
  <20090111180714.GB15326@elte.hu> <b6a2187b0901121720s1f9b12ednb76a90dcc7eddc81@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b6a2187b0901121720s1f9b12ednb76a90dcc7eddc81-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jeff Chua <jeff.chua.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Daniel Drake <dsd-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Phil Dibowitz <phil-LijsOF1cAEA@public.gmane.org>



On Tue, 13 Jan 2009, Jeff Chua wrote:
>
> I was trying to bisect further, but ended up with this strange behavior...
> 
> # git bisect good a3a798c88a14b35e5d4ca30716dbc9eb9a1ddfe2
> Bisecting: 579 revisions left to test after this
> [079899c2384023cd8efcd3806680b4f1d2abbd54] Btrfs: Change
> find_extent_buffer to use TestSetPageLocked
> 
> # ls
> .  ..  .git  fs
> 
> Is this a bug or a feature?

You bisected into the btrfs development chain. Just say "git bisect good" 
when this happens, and you'll be ok.

[ Unless, of course, you were to be actually trying to bisect a btrfs bug. 
  If so, you'd need to compile btrfs as a module and insert it and do the 
  bisection based on that ]

			Linus
