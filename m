From: Pete Zaitcev <zaitcev-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.30-rc6: usb printer does not work
Date: Fri, 29 May 2009 01:11:19 -0600
Message-ID: <20090529011119.3dbbe0e2.zaitcev@redhat.com>
References: <20090528170726.GA13714@orion>
	<20090528111831.a35c5184.zaitcev@redhat.com>
	<a4423d670905281044n5e2480a1g98fc6fb5ceb845cd@mail.gmail.com>
	<20090528122054.2c837ccd.zaitcev@redhat.com>
	<a4423d670905282230n4bb9f456w1b13ce6462f81bf9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670905282230n4bb9f456w1b13ce6462f81bf9-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, zaitcev-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org

On Fri, 29 May 2009 09:30:57 +0400, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> It is working with 2.6.30-rc7-00097-gb5c42bc and without dd44be6b1
> (usblp: continuously poll for status).
> I cannot reproduce the problem after reboot.
> It seems the problem is more complicated.

Indeed this is curious. I would like to see a usbmon trace if it
starts looping like before. Then we'll see if it dies after it gets
the status command.

One tiny possibility is that the old driver in Vojtech's days polled
every 5s. The patch we discuss here polls every 1.5s. I have traces
from Windows that bomb printers several times every second, so I figured
that it would be safe to reduce the latency a bit. Maybe swapping that
1500 with 5000 is enough. But we'd need a well controlled
experiment, with a power cycle and several passes preferably.

Yours,
-- Pete
