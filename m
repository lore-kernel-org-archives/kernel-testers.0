From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #11507] usb: sometimes dead keyboard after boot
Date: Fri, 12 Sep 2008 12:09:41 +0200
Message-ID: <200809121209.42354.elendil@planet.nl>
References: <s3QDdfEDq6.A.wlH.MowwIB@albercik> <Wz8EH5sroeE.A.R0H.WowwIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Wz8EH5sroeE.A.R0H.WowwIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Saturday 06 September 2008, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me
> know (either way).
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11507
> Subject	: usb: sometimes dead keyboard after boot
> Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
> Date		: 2008-08-26 21:03 (12 days old)
> References	: http://marc.info/?l=linux-kernel&m=121977815018224&w=2

Still there. Alan Stern has provided a patch for the issue:
http://www.spinics.net/lists/linux-usb/msg09735.html

I've just reported back the test results:
http://www.spinics.net/lists/linux-usb/msg09926.html
