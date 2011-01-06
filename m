From: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #21092] Kernel 2.6.36 Bug during quotaon on reiserfs
Date: Thu, 6 Jan 2011 11:54:24 +0100
Message-ID: <20110106105424.GC4641@quack.suse.cz>
References: <odW4v9b6arG.A.2bH.uE8GNB@chimera>
 <LbeBv-BNQpL.A.aM.5F8GNB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <LbeBv-BNQpL.A.aM.5F8GNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>, markus.gapp-hi6Y0CQ0nG0@public.gmane.org

  Hi,

On Thu 30-12-10 00:21:21, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.35 and 2.6.36.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.35 and 2.6.36.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=21092
> Subject		: Kernel 2.6.36 Bug during quotaon on reiserfs
> Submitter	:  <markus.gapp-hi6Y0CQ0nG0@public.gmane.org>
> Date		: 2010-10-24 16:57 (67 days old)
> Handled-By	: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
> Patch		: https://bugzilla.kernel.org/attachment.cgi?id=35292
  As far as I know, the problem has been fixed by commit
da905873effecd1c0166e578bc4b5006f041b18b in the end.

								Honza
-- 
Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
SUSE Labs, CR
