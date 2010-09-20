From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16312] WARNING: at fs/fs-writeback.c:1127 __mark_inode_dirty
Date: Tue, 21 Sep 2010 01:55:53 +0200
Message-ID: <201009210155.53218.rjw@sisk.pl>
References: <r2gGqgg1zFC.A.LrE.w97lMB@chimera> <aRnAGz9xZ8K.A.wgG.uA8lMB@chimera> <20100920212955.GB14020@quack.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100920212955.GB14020-+0h/O2h83AeN3ZZ/Hiejyg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Monday, September 20, 2010, Jan Kara wrote:
> On Mon 20-09-10 21:57:17, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.34 and 2.6.35.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> > be listed and let the tracking team know (either way).
>   The patch is in block tree, going to 2.6.37 and then -stable trees.

OK, thanks for the update.

The bug is going to be listed, though, until 2.6.36 is released.

Rafael
