From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [Bug #23012] ftdi_sio /dev/ttyUSB error:  "Resource Temporarily
 Unavailable"
Date: Fri, 3 Dec 2010 10:20:21 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.1012031019290.1682-100000@iolanthe.rowland.org>
References: <gUkHV_Vc3aE.A.lVH.0yC-MB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <gUkHV_Vc3aE.A.lVH.0yC-MB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Kevin Smith <thirdwiggin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Fri, 3 Dec 2010, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.36.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=23012
> Subject		: ftdi_sio /dev/ttyUSB error:  "Resource Temporarily Unavailable"
> Submitter	: Kevin Smith <thirdwiggin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-11-16 06:25 (17 days old)
> Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> Patch		: https://bugzilla.kernel.org/attachment.cgi?id=38372

This has been fixed by commit bf03184a31a3286fc0ab30f838ddee8ba9f9b7b 
(USB: fix autosuspend bug in usb-serial).

Alan Stern

