From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 27 Oct 2009 09:23:07 +0100
Message-ID: <200910270923.07912.rjw@sisk.pl>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera> <4AE621CB.6000700@yahoo.co.uk> <alpine.LFD.2.01.0910261543400.31845@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756578AbZJ0IVP@vger.kernel.org>
In-Reply-To: <alpine.LFD.2.01.0910261543400.31845@localhost.localdomain>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Boyan <btanastasov@yahoo.co.uk>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>,  =?iso-8859-1?q?Fr=E9d=E9ric_L=2E_W=2E?= Meunier <fredlwm@gmail.com>, "Justin P. Mattock" <justinmattock@gmail.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

On Monday 26 October 2009, Linus Torvalds wrote:
> 
> On Tue, 27 Oct 2009, Boyan wrote:
> > 
> > I think it is fixed in 2.6.31.5. I can't reproduce the problem with it.
> 
> It was fixed by mainline commit c8e33141911bf8fe87dc6c92793b9a59b2be0130 
> ("tty: Make flush_to_ldisc() locking more robust"), which got back-ported 
> to 2.6.31.5 as commit 86d23a057.

Thanks, closing.

Rafael
