From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #12224] journal activity on inactive partition causes
	inactive harddrive spinup
Date: Mon, 23 Feb 2009 07:22:48 -0500
Message-ID: <20090223122248.GD19739@mit.edu>
References: <sTyoMUwdm9B.A.QCH.U40lJB@chimera> <ROx6X68CGJG.A.UsB.m50lJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <ROx6X68CGJG.A.UsB.m50lJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arthur Jones <ajones-DUeqMYwuH4dWk0Htik3J/w@public.gmane.org>, C Sights <csights-97jfqw80gc6171pxa8y+qA@public.gmane.org>, Eric Sandeen <sandeen-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Sat, Feb 14, 2009 at 09:50:20PM +0100, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12224
> Subject		: journal activity on inactive partition causes inactive harddrive spinup
> Submitter	: C Sights <csights-97jfqw80gc6171pxa8y+qA@public.gmane.org>
> Date		: 2008-12-14 11:39 (63 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=c87591b719737b4e91eb1a9fa8fd55a4ff1886d6
> Handled-By	: Eric Sandeen <sandeen-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> 

The fix for this has landed in mainline as commit 02ac59 for ext3, and
commit 9eddac for ext4.

Rafael, I've marked the bug closed in BZ for your convenience.

    	    	     	       	  	      	 - Ted
