From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: ext4 corruptions
Date: Fri, 9 Oct 2009 20:33:39 -0400
Message-ID: <20091010003339.GB18440@mit.edu>
References: <1255116014.3014.8.camel@mini>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1255116014.3014.8.camel@mini>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Oct 09, 2009 at 09:20:13PM +0200, Alexey Fisher wrote:
> I have really bad ext4 corruptions, i needed to reinstall 3 of my test
> systems.
> The symptoms:
> is use karmic beta for this with ubuntu supplied kernel 2.6.31 ... after
> testing 2.6.32-rc[1-3] and booting again to 2.6.31 fsck will find some
> bad things and will try to fix it. After this action is the system
> unusable.
> 
> Do any one had same problem? The is no sans to bisect it, after some
> jumps between 2.6.31 and 2.6.32 the system will be broken.  Is it kernel
> or fsck problem?

Can you reproduce this reliably?  What sort of things did fsck report?
Was it after a suspend/resume that failed?

I'm using a Ubuntu 9.04 with a 2.6.32-rc1+ mainline kernel, and it
works fine for me.  So we really need many more details what sort of
filesystem corruption (not just "bad things"), and more details about
what you did while testing a newer kernel, and what sort of things
fsck complained about.

						- Ted
