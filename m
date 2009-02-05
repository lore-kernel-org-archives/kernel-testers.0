From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #12224] journal activity on inactive partition causes
	inactive harddrive spinup
Date: Wed, 4 Feb 2009 21:00:13 -0500
Message-ID: <20090205020013.GG8945@mit.edu>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera> <CGyEB0S4BpO.A.haD.S6YiJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <CGyEB0S4BpO.A.haD.S6YiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arthur Jones <ajones-DUeqMYwuH4dWk0Htik3J/w@public.gmane.org>, C Sights <csights-97jfqw80gc6171pxa8y+qA@public.gmane.org>, Eric Sandeen <sandeen-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Wed, Feb 04, 2009 at 11:58:33AM +0100, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12224
> Subject		: journal activity on inactive partition causes inactive harddrive spinup
> Submitter	: C Sights <csights-97jfqw80gc6171pxa8y+qA@public.gmane.org>
> Date		: 2008-12-14 11:39 (53 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=c87591b719737b4e91eb1a9fa8fd55a4ff1886d6
> Handled-By	: Eric Sandeen <sandeen-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

Patches against ext3 have been posted by Jan Kara and have been sucked
into the mm tree.  I don't know if Andrew is planning on waiting until
the next merge window, or is planning on pushing it sooner given that
it is a regression.  (These supercede the ones currently posted by
Eric in the BZ entry.)

Similar patches have been posted against ext4, and I will be handling
them in the ext4 tree.

						- Ted
