From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: [Bug #13522] BUG: scheduling while atomic
Date: Mon, 29 Jun 2009 17:33:01 +0100
Message-ID: <20090629173301.2a99a02e@lxorguk.ukuu.org.uk>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
	<6JJ2m5kyucK.A.D2D.VJASKB@chimera>
	<20090629154119.2c61f234@lxorguk.ukuu.org.uk>
	<20090629162853.GB3461@localdomain.by>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090629162853.GB3461-AfQBxy1nhrTup4dJKg45FQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sergey Senozhatsky <sergey.senozhatsky-A/MS7pq9VAU@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

> BUG is still here...

> kernel: [ 7331.719657] EIP is at _spin_unlock_irqrestore+0x16/0x30

Which doesn't reschedule - sorry at this point I can't help you any
further. The traces make no sense.
