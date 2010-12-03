From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #23012] ftdi_sio /dev/ttyUSB error:  "Resource Temporarily Unavailable"
Date: Fri, 3 Dec 2010 22:30:32 +0100
Message-ID: <201012032230.32356.rjw@sisk.pl>
References: <Pine.LNX.4.44L0.1012031019290.1682-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.1012031019290.1682-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Kevin Smith <thirdwiggin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Friday, December 03, 2010, Alan Stern wrote:
> On Fri, 3 Dec 2010, Rafael J. Wysocki wrote:
> 
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.36.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=23012
> > Subject		: ftdi_sio /dev/ttyUSB error:  "Resource Temporarily Unavailable"
> > Submitter	: Kevin Smith <thirdwiggin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2010-11-16 06:25 (17 days old)
> > Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> > Patch		: https://bugzilla.kernel.org/attachment.cgi?id=38372
> 
> This has been fixed by commit bf03184a31a3286fc0ab30f838ddee8ba9f9b7b 
> (USB: fix autosuspend bug in usb-serial).

Thanks, closing.

Rafael
