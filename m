From: Christian Lamparter <chunkeey-S0/GAf8tV78@public.gmane.org>
Subject: Re: [PATCH -stable] p54usb: fix traffic stalls / packet drop
Date: Wed, 21 Jan 2009 15:03:11 +0100
Message-ID: <200901211503.11849.chunkeey@web.de>
References: <KTnguC9mFUC.A.VNB.TJRdJB@chimera> <20090120223957.GA6088@suse.de> <20090120235626.GA3094@tuxdriver.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090120235626.GA3094-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
Content-Disposition: inline
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>
Cc: Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Artur Skawina <art.08.09-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, Linux wireless <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday 21 January 2009 00:56:26 John W. Linville wrote:
> On Tue, Jan 20, 2009 at 02:39:57PM -0800, Greg KH wrote:
> > On Tue, Jan 20, 2009 at 11:11:11PM +0100, Christian Lamparter wrote:
> > > All p54usb devices need a explicit termination packet, in oder to finish the pending transfer properly.
> > > Else, the firmware could freeze, or simply drop the frame.
> > > 
> > > Signed-off-by: Christian Lamparter <chunkeey-S0/GAf8tV78@public.gmane.org>
> > > Cc: stable <stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> > > ---
> > > Attached is the patch is for the stable series only.
> > > Bugzilla reference: http://bugzilla.kernel.org/show_bug.cgi?id=12260
> > > (wireless-testing needs a different one)
> > 
> > What do you mean, this is for 2.6.28-stable or 2.6.27-stable only, and
> > not 2.6.29?  Why?
> 
> At least part of that patch is already in 2.6.29.  I think Christian
> may have combined another patch into the -stable version, one that
> he posted today for -rc inclusion.

Yup, the -stable patch includes the diff "hunks" for all devices.

linux-wireless is a different affair, because the fix for LM87
(aka "p54usb: fix random traffic stalls (LM87)" ) is already merged.
So the patch I posted on linux-wirelss (-rc inclusion) only has the
diffs for the 1st generation and 2nd generation with old firmwares.

Regards,
	Chr
--
To unsubscribe from this list: send the line "unsubscribe linux-wireless" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
