From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 08:02:35 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910130755360.3438@localhost.localdomain>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera> <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera> <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com> <87ljjgfcbu.fsf@spindle.srvr.nix> <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain> <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>
 <20091013113232.384b2432@lxorguk.ukuu.org.uk> <alpine.LFD.2.01.0910130721530.3438@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0910130721530.3438-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Cc: Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, =?ISO-8859-15?Q?Fr=E9d=E9ric_L=2E_W=2E_Meunier?= <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Tue, 13 Oct 2009, Linus Torvalds wrote:
> 
>  - whoever is _reading_ the buffer, and due to memory ordering may see the 
>    update to the buffer length _before_ it actually sees the data itself. 
>    That spinlock does all the memory ordering too.

Hmm. This one looks like it's ok, because whenever we commit it, we do 
take the spinlock, so '->commit' is protected for the reader side.

>  - scrambling the data order with two writers is certainly less annoying 
>    than potentially screwing up ->used entirely, and having the memcpy's 
>    overflow the buffer. Both writers may have decided that there is enough 
>    room for each one - but that does not mean that there is enough room 
>    for _both_.

.. but this one is still true. Anybody who doesn't lock writers at a 
higher level could easily end up causing some really subtle memory 
corruption.

But maybe all users really are safe. 

		Linus
