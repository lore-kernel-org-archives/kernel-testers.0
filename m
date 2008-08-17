From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: 2.6.27-rc3-git3: Reported regressions from 2.6.26
Date: Sun, 17 Aug 2008 18:33:51 +0200
Message-ID: <200808171833.52278.rjw@sisk.pl>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik> <20080817135134.GA8162@mit.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080817135134.GA8162-3s7WtUTddSA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sunday, 17 of August 2008, Theodore Tso wrote:
> On Sat, Aug 16, 2008 at 09:00:39PM +0200, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11341
> > Subject		: 2.6.27-rc1 - ext4 e2fsck false prompting for fixing i_size of Inode
> > Submitter	: Kamalesh Babulal <kamalesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> > Date		: 2008-08-13 6:56 (4 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121861058720051&w=4
> 
> This wasn't a regression because it wasn't a kernel bug (and so by
> definition it existed on prior kernel versions :-).  I've just checked
> in a fix into the e2fsprogs repository, and I've included the
> e2fsprogs patch in the bugzilla record for the user's convenience.

Thanks a lot for handling this.

Rafael
