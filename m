From: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Subject: Re: [Bug #12401] 2.6.28 regression: xbacklight broken on ThinkPad X61s
Date: Mon, 16 Feb 2009 01:16:00 +0000
Message-ID: <20090216011600.GA28929@srcf.ucam.org>
References: <sTyoMUwdm9B.A.QCH.U40lJB@chimera> <ROx6X68CGJG.A.FEB.M50lJB@chimera> <20090215134409.GC21670@srcf.ucam.org> <200902151538.29766.rjw@sisk.pl> <20090215221647.GA15392@dose.home.local>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090215221647.GA15392-z7fNteJZwjmqk56C3691EA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <ak-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Le

On Sun, Feb 15, 2009 at 11:16:47PM +0100, Tino Keitel wrote:

> I think if it works without DRI in 2.6.27 and doesn't work in 2.6.28,
> it isn't a configuration error, but a real regression.

It only worked by accident without DRM support, since you were using the 
ATI codepath in the firmware rather than the Intel one. That bug's been 
fixed, so now you're following the Intel codepath - unfortunately 
there's no way to do that without kernel-level graphics support, which 
means DRM.

-- 
Matthew Garrett | mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org
