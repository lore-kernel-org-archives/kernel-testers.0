From: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #16312] WARNING: at fs/fs-writeback.c:1127
 __mark_inode_dirty
Date: Mon, 13 Sep 2010 13:42:29 +0200
Message-ID: <20100913114229.GA4016@quack.suse.cz>
References: <QnCvudbe2FD.A.XiE.DgSjMB@chimera>
 <p44oKaOqEDM.A.QHG.AjSjMB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <p44oKaOqEDM.A.QHG.AjSjMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>, Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

  Hi,

On Sun 12-09-10 21:08:40, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16312
> Subject		: WARNING: at fs/fs-writeback.c:1127 __mark_inode_dirty
> Submitter	: Zdenek Kabelac <zdenek.kabelac-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-06-28 9:40 (77 days old)
> Message-ID	: <AANLkTin24fr5O4_q5Xbo9Y_NKkEmtcp6Hgmr9_4qXaFz-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127771804806465&w=2
> 		  http://lkml.indiana.edu/hypermail/linux/kernel/1007.3/00884.html
> Handled-By	: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
> Patch		: https://bugzilla.kernel.org/attachment.cgi?id=27272
  Sorry, it isn't fixed yet. Christoph wanted to do the patch a bit
differently and I was busy with other work...

									Honza
-- 
Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
SUSE Labs, CR
