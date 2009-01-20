From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH -stable] p54usb: fix traffic stalls / packet drop
Date: Tue, 20 Jan 2009 23:36:29 +0100
Message-ID: <200901202336.30083.rjw@sisk.pl>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.vUD.KKRdJB@chimera> <200901202311.11854.chunkeey@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200901202311.11854.chunkeey-S0/GAf8tV78@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christian Lamparter <chunkeey-S0/GAf8tV78@public.gmane.org>
Cc: Greg KH gr <gregkh-l3A5Bk7waGM@public.gmane.org>, Artur Skawina <art.08.09-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, Linux wireless <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday 20 January 2009, Christian Lamparter wrote:
> All p54usb devices need a explicit termination packet, in oder to finish the pending transfer properly.
> Else, the firmware could freeze, or simply drop the frame.
> 
> Signed-off-by: Christian Lamparter <chunkeey-S0/GAf8tV78@public.gmane.org>
> Cc: stable <stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> ---
> Attached is the patch is for the stable series only.
> Bugzilla reference: http://bugzilla.kernel.org/show_bug.cgi?id=12260
> (wireless-testing needs a different one)
> 
> Rafael, I hope we can close this bug. Greg?

Sure, we can.

Thanks,
Rafael
