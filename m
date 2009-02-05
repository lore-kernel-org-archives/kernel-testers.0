From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #12224] journal activity on inactive partition causes
 inactive harddrive spinup
Date: Wed, 4 Feb 2009 18:36:54 -0800
Message-ID: <20090204183654.4c6cbf63.akpm@linux-foundation.org>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera>
	<CGyEB0S4BpO.A.haD.S6YiJB@chimera>
	<20090205020013.GG8945@mit.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090205020013.GG8945-3s7WtUTddSA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arthur Jones <ajones-DUeqMYwuH4dWk0Htik3J/w@public.gmane.org>, C Sights <csights-97jfqw80gc6171pxa8y+qA@public.gmane.org>, Eric Sandeen <sandeen-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Wed, 4 Feb 2009 21:00:13 -0500 Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org> wrote:

> On Wed, Feb 04, 2009 at 11:58:33AM +0100, Rafael J. Wysocki wrote:
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12224
> > Subject		: journal activity on inactive partition causes inactive harddrive spinup
> > Submitter	: C Sights <csights-97jfqw80gc6171pxa8y+qA@public.gmane.org>
> > Date		: 2008-12-14 11:39 (53 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=c87591b719737b4e91eb1a9fa8fd55a4ff1886d6
> > Handled-By	: Eric Sandeen <sandeen-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> 
> Patches against ext3 have been posted by Jan Kara and have been sucked
> into the mm tree.  I don't know if Andrew is planning on waiting until
> the next merge window, or is planning on pushing it sooner given that
> it is a regression.

Yes, I have jbd-fix-return-value-of-journal_start_commit.patch and
revert-ext3-wait-on-all-pending-commits-in-ext3_sync_fs.patch queued
for 2.6.29.

The secret algorithm for determining this is to peek in the series file
(http://userweb.kernel.org/~akpm/mmotm/series) and see where I positioned the
patch:

   #
-> # more 2.6.29 queue:
   #
   # me:
   #
   migration-migrate_vmas-should-check-vma.patch
   rtc-update-maintainership-of-pxa-rtc-driver.patch
   lxfb-properly-alloc-cmap-in-all-cases-and-dont-leak-the-memory.patch
   gxfb-properly-alloc-cmap-and-plug-cmap-leak.patch
   gx1fb-properly-alloc-cmap-and-plug-cmap-leak.patch
   mm-fix-dirty_bytes-dirty_background_bytes-sysctls-on-64bit-arches.patch
   mm-fix-dirty_bytes-dirty_background_bytes-sysctls-on-64bit-arches-fix.patch
-> jbd-fix-return-value-of-journal_start_commit.patch
-> revert-ext3-wait-on-all-pending-commits-in-ext3_sync_fs.patch
   writeback-fix-nr_to_write-counter.patch
   
   
