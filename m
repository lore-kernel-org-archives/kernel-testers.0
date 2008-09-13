From: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Subject: Re: [Bug #11557] Controlling backlight on thinkpad x60
Date: Sat, 13 Sep 2008 16:13:30 +0100
Message-ID: <20080913151330.GA20761@srcf.ucam.org>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik> <SpS7rta8n4.A.UcF.jbsyIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <SpS7rta8n4.A.UcF.jbsyIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>

I don't think this is a regression. The correct way to drive this 
hardware has always been through the ACPI video driver. The fact that 
thinkpad-acpi would also attempt to drive it was a bug.

-- 
Matthew Garrett | mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org
