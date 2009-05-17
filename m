From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13122] reiserfs_delete_xattrs: Couldn't delete all xattrs
 (-13)
Date: Sun, 17 May 2009 12:16:26 -0700 (PDT)
Message-ID: <alpine.LFD.2.01.0905171213160.3301@localhost.localdomain>
References: <_AjETDMbIoL.A.DcH.RYzDKB@chimera> <385Pu-agh7M.A.sNC.mZzDKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <385Pu-agh7M.A.sNC.mZzDKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>



On Sat, 16 May 2009, Rafael J. Wysocki wrote:
>
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13122
> Subject		: reiserfs_delete_xattrs: Couldn't delete all xattrs (-13)
> Submitter	: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-04-16 19:23 (31 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=d984561b326cd0fe0d1183d11b9b4fa1d011d21d
> References	: http://marc.info/?l=linux-kernel&m=123990989515105&w=4
> Handled-By	: Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>
> Patch		: http://lkml.org/lkml/2009/5/10/91

The fix should now be merged as b83674c0da6558e357c6b482ccf299eeea77d8ef 
("reiserfs: fixup perms when xattrs are disabled")

		Linus
