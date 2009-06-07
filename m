From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #13232] ext3/4 with synchronous writes gets wedged by
	Postfix
Date: Sun, 7 Jun 2009 16:10:13 -0400
Message-ID: <20090607201013.GC23883@mit.edu>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <AN6kEAA5GQ.A.NkB.9j7KKB@chimera> <20090607171418.GA22756@mit.edu> <20090607171739.GI8633@ZenIV.linux.org.uk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090607171739.GI8633-3bDd1+5oDREiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Al Viro <viro-3bDd1+5oDREiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Watson <kernel-nospam-yvBcC19sZ6P0OyVTGvYuXB2eb7JE58TQ@public.gmane.org>, Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>, bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org

On Sun, Jun 07, 2009 at 06:17:39PM +0100, Al Viro wrote:
> On Sun, Jun 07, 2009 at 01:14:18PM -0400, Theodore Tso wrote:
> > On Sun, Jun 07, 2009 at 12:06:22PM +0200, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.28 and 2.6.29.
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13232
> > > Subject		: ext3/4 with synchronous writes gets wedged by Postfix
> > > Submitter	: David Watson <kernel-nospam-yvBcC19sZ6P0OyVTGvYuXB2eb7JE58TQ@public.gmane.org>
> > > Date		: 2009-05-03 19:46 (36 days old)
> > 
> > Al Viro has the fix for this in the for-next branch of his vfs-2.6 git
> > tree, as commit ID 72a43d63: "ext3/4 with synchronous writes gets
> > wedged by Postfix".  I pinged Al previously about pushing this as a
> > regression fix for 2.6.30, but never got a response.  At this point we
> > might as well wait for it to go into the 2.6.31 merge window, and then
> > we can ask for it to go into the 2.6.30.y and 2.6.29.y stable trees.
> 
> It's in mainline now, actually.  But yes, we need it in -stable as well.

Great, thanks; sorry, I didn't realize it had been queued for mainline
submisison, and it wasn't there when I looked last week.  I've closed
the bugzilla entry since it is now in mainline.  Would you like to
send the patch to stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, or shall I?

						- Ted
