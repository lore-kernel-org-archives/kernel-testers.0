From: Paul Fulghum <paulkf@microgate.com>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Tue, 13 Oct 2009 08:25:22 -0500
Message-ID: <4AD47FC2.9060303@microgate.com>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>	<L6tb-VyKHZK.A.PaB.Ozl0KB@chimera>	<C4F8B19E-F4B4-47F3-AE5B-4581C8E3F3AE@gmail.com>	<87ljjgfcbu.fsf@spindle.srvr.nix>	<alpine.LFD.2.01.0910121703390.3438@localhost.localdomain>	<alpine.LFD.2.01.0910122004200.3438@localhost.localdomain> <20091013113232.384b2432@lxorguk.ukuu.org.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1759898AbZJMN06@vger.kernel.org>
In-Reply-To: <20091013113232.384b2432@lxorguk.ukuu.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Cox <alan@lxorguk.ukuu.org.uk>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, Nix <nix@esperi.org.uk>, "Justin P. Mattock" <justinmattock@gmail.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Boyan <btanastasov@yahoo.co.uk>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Ed Tomlinson <edt@aei.ca>, =?ISO-8859-1?Q?=22Fr=E9d=E9ric_L=2E_W=2E_?= =?ISO-8859-1?Q?Meunier=22?= <fredlwm@gmail.com>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

Alan Cox wrote:
> The tty_buffer_request_room() is a hint to help better allocation. It's
> also only safe to run from the receiving path of the driver (which
> has always been assumed not to make two parallel calls to the function at
> once.

Yes, the locking only synchronizes between
producer and consumer. It does not coordinate between
multiple producers as it provides a lot of flexibility
(and responsibility) to the producer in how to fill the buffers.

-- 
Paul Fulghum
MicroGate Systems, Ltd.
=Customer Driven, by Design=
(800)444-1982
(512)345-7791 (Direct)
(512)343-9046 (Fax)
Central Time Zone (GMT -5h)
www.microgate.com
