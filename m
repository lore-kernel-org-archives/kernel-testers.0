From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: Reproducible rRootage segfault with 2.6.25 and above
 (regression?)
Date: Mon, 25 Aug 2008 13:16:20 +0100
Message-ID: <20080825131620.1d6aa87f@lxorguk.ukuu.org.uk>
References: <g8sncp$8us$1@ger.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <g8sncp$8us$1@ger.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

> The issue is fiddly but reproducible. All help in pinpointing the 
> problem source is appreciated.

For the kernel bisect if you get stuck at a point it fails remember that
point and then lie either yes/no to it working and carry on. If need be
you can go back the other way.

Another completely off the wall guess would be that your client code is
causing gcc to generate something where it is using data which has ended
up below the stack pointer and the timings have changed. Either through
gcc bug or passing around the address of an object that is out of
context. At that point a signal will rewrite the data in fun ways
producing results like you describe.

Alan
