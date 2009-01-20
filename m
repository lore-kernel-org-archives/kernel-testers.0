From: "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
Subject: Re: [PATCH -stable] p54usb: fix traffic stalls / packet drop
Date: Tue, 20 Jan 2009 18:56:26 -0500
Message-ID: <20090120235626.GA3094@tuxdriver.com>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <cX2gZ6Cy9nC.A.vUD.KKRdJB@chimera> <200901202311.11854.chunkeey@web.de> <20090120223957.GA6088@suse.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090120223957.GA6088-l3A5Bk7waGM@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>
Cc: Christian Lamparter <chunkeey-S0/GAf8tV78@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Artur Skawina <art.08.09-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, Linux wireless <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, Jan 20, 2009 at 02:39:57PM -0800, Greg KH wrote:
> On Tue, Jan 20, 2009 at 11:11:11PM +0100, Christian Lamparter wrote:
> > All p54usb devices need a explicit termination packet, in oder to finish the pending transfer properly.
> > Else, the firmware could freeze, or simply drop the frame.
> > 
> > Signed-off-by: Christian Lamparter <chunkeey-S0/GAf8tV78@public.gmane.org>
> > Cc: stable <stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> > ---
> > Attached is the patch is for the stable series only.
> > Bugzilla reference: http://bugzilla.kernel.org/show_bug.cgi?id=12260
> > (wireless-testing needs a different one)
> 
> What do you mean, this is for 2.6.28-stable or 2.6.27-stable only, and
> not 2.6.29?  Why?

At least part of that patch is already in 2.6.29.  I think Christian
may have combined another patch into the -stable version, one that
he posted today for -rc inclusion.

John
-- 
John W. Linville		Linux should be at the core
linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org			of your literate lifestyle.
