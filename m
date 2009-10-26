From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Mon, 26 Oct 2009 15:45:27 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910261543400.31845@localhost.localdomain>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera> <vX3ILojF2dJ.A.lYG.ref5KB@chimera> <4AE621CB.6000700@yahoo.co.uk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4AE621CB.6000700-/E1597aS9LT10XsdtD+oqA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, =?ISO-8859-15?Q?=22Fr=E9d=E9ric_L=2E_W=2E_Meunier=22?= <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Tue, 27 Oct 2009, Boyan wrote:
> 
> I think it is fixed in 2.6.31.5. I can't reproduce the problem with it.

It was fixed by mainline commit c8e33141911bf8fe87dc6c92793b9a59b2be0130 
("tty: Make flush_to_ldisc() locking more robust"), which got back-ported 
to 2.6.31.5 as commit 86d23a057.

			Linus
