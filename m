From: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11557] Controlling backlight on thinkpad x60
Date: Sun, 14 Sep 2008 12:18:39 +0200
Message-ID: <20080914101838.GA1681@elf.ucw.cz>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik> <SpS7rta8n4.A.UcF.jbsyIB@albercik> <20080913151330.GA20761@srcf.ucam.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20080913151330.GA20761-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat 2008-09-13 16:13:30, Matthew Garrett wrote:
> I don't think this is a regression. The correct way to drive this 
> hardware has always been through the ACPI video driver. The fact that 
> thinkpad-acpi would also attempt to drive it was a bug.

I'm pretty sure thinkpad-acpi is older then ACPI-video. So yes, I
believe this is a regression, but it may be pretty old one.

									Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
