From: tytso-3s7WtUTddSA@public.gmane.org
Subject: Re: [Bug #14936] kernel BUG at fs/ext4/inode.c:1063 if attempted
 to use non-ext4 partition with ext4
Date: Tue, 29 Dec 2009 11:57:12 -0500
Message-ID: <20091229165712.GH4429@thunk.org>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
 <NJVdobuNFNK.A.-nG.JnhOLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <NJVdobuNFNK.A.-nG.JnhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Gene Heskett <gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>, okias <d.okias-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tue, Dec 29, 2009 at 04:10:01PM +0100, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14936
> Subject		: kernel BUG at fs/ext4/inode.c:1063 if attempted to use non-ext4 partition with ext4
> Submitter	: Gene Heskett <gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
> Date		: 2009-12-26 14:13 (4 days old)
> References	: http://marc.info/?l=linux-kernel&m=126183682330809&w=4
> 		  http://marc.info/?l=linux-kernel&m=126169372613898&w=4

Bisected to commit d21cd8, and reverting this commit seems to fix the
problem.  The problem appeared between -rc1 and -rc2.  It was a fix
that was pushed as part of a quota/ext4 fixes.  For more information:

http://marc.info/?l=linux-ext4&m=126197233225936&w=2

I will take a look at this to see if I can find an easy fix;
otherwise, we'll probably want to revert commit d21cd8 before -rc3.

	   	 	       	  	 - Ted
