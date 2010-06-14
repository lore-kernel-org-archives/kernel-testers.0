From: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #15909] open("a/",O_NOFOLLOW) fails with ELOOP if "a" is
 a symbolic link to a directory.
Date: Mon, 14 Jun 2010 10:43:32 +0200
Message-ID: <20100614084331.GB3903@quack.suse.cz>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
 <YPGdyfWGvNK.A.KL.C7OFMB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <YPGdyfWGvNK.A.KL.C7OFMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>, Marius Tolzmann <tolzmann-KUpvgZVWgV9o1qOY/usvUg@public.gmane.org>, Miklos Szeredi <mszeredi-AlSwsSmVLrQ@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

On Sun 13-06-10 16:48:58, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.33 and 2.6.34.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.33 and 2.6.34.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15909
> Subject		: open("a/",O_NOFOLLOW) fails with ELOOP if "a" is a symbolic link to a directory.
> Submitter	: Marius Tolzmann <tolzmann-KUpvgZVWgV9o1qOY/usvUg@public.gmane.org>
> Date		: 2010-05-05 13:01 (40 days old)
> Handled-By	: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
> 		  Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
> Patch		: https://patchwork.kernel.org/patch/99291/
  The fix went in shortly before 2.6.34 was released (commit
002baeecf53677d2034113e34197ec221f42e037). So everything should be fine.

								Honza
-- 
Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
SUSE Labs, CR
