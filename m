From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Thu, 15 Oct 2009 09:04:09 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0910150901190.6146@localhost.localdomain>
References: <4AD51D6B.7010509@microgate.com> <alpine.LFD.2.01.0910131744590.3404@localhost.localdomain> <20091014125846.1a3c8d40@lxorguk.ukuu.org.uk> <alpine.LFD.2.01.0910140804180.6146@localhost.localdomain> <alpine.LFD.2.01.0910140925440.6146@localhost.localdomain>
 <20091014182037.GA10076@redhat.com> <alpine.LFD.2.01.0910141131050.6146@localhost.localdomain> <20091014195215.GA12936@redhat.com> <alpine.LFD.2.01.0910141344250.6146@localhost.localdomain> <20091015124730.GA9398@redhat.com>
 <20091015152959.GA18681@redhat.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091015152959.GA18681-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Thu, 15 Oct 2009, Oleg Nesterov wrote:
> 
> Actually, this looks simple. Please see the patch below.

Ok, I should have read all my emails before responding to the previous 
one.

But my response ends up being the same: I think your patch is fine, and I 
think you should drop the conditional flag. I don't think anybody _ever_ 
wants to run the same work entry on multiple CPU's at once. Anybody who 
wants parallelism needs to use multiple work entries _anyway_ (since the 
accidental parallelism you *can* get with a single one is really very 
accidental indeed).

Of course, it should be tested in -next for a while regardless. And talk 
to the networkng people, who are the main user of workqueues.

			Linus
