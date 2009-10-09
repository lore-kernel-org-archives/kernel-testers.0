From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: ext4 corruptions
Date: Fri, 09 Oct 2009 21:20:13 +0200
Message-ID: <1255116014.3014.8.camel@mini>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

I have really bad ext4 corruptions, i needed to reinstall 3 of my test
systems.
The symptoms:
is use karmic beta for this with ubuntu supplied kernel 2.6.31 ... after
testing 2.6.32-rc[1-3] and booting again to 2.6.31 fsck will find some
bad things and will try to fix it. After this action is the system
unusable.

Do any one had same problem? The is no sans to bisect it, after some
jumps between 2.6.31 and 2.6.32 the system will be broken.  Is it kernel
or fsck problem?
