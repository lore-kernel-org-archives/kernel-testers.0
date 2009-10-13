From: Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 11:28:41 -0600
Message-ID: <4AD4B8C9.5000208@microgate.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>  <L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>  <C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>  <87ljjgfcbu.fsf@spindle.srvr.nix>  <alpine.LFD.2.01.0910121703390.3438@localhost.localdomain>  <alpine.LFD.2.01.0910122004200.3438@localhost.localdomain>  <20091013113232.384b2432@lxorguk.ukuu.org.uk>  <alpine.LFD.2.01.0910130721530.3438@localhost.localdomain> <1255447980.3898.3.camel@x2.microgate.com> <alpine.LFD.2.01.0910130837370.26777@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.01.0910130837370.26777-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Nix <nix-dKoSMcxRz+Te9xe1eoZjHA@public.gmane.org>, "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, =?ISO-8859-1?Q?=22Fr=E9d=E9ric_L=2E_W=2E_Meunier=22?= <fredlwm-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

Linus Torvalds wrote:
> What _you_ are talking about is something else, namely the 
> tty_prepare_flip stuff. But dammit, that has nothing what-so-ever to do 
> with "tty_buffer_request_room()".

OK, I should have followed your argument more closely.
I was trying to interpret it in terms of your patch,
which touched the tty_prepare stuff, but that is separate
from your comments about optimizations.

-- 
Paul Fulghum
MicroGate Systems, Ltd.
=Customer Driven, by Design=
(800)444-1982
(512)345-7791 (Direct)
(512)343-9046 (Fax)
Central Time Zone (GMT -5h)
www.microgate.com
