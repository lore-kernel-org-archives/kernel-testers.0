From: Ted Ts'o <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #19062] Dirtiable inode bdi default != sb bdi btrfs
Date: Sat, 2 Oct 2010 12:54:33 -0400
Message-ID: <20101002165433.GL21129@thunk.org>
References: <MEG5YPP-fxC.A.vnD.So6nMB@chimera>
 <sQALkqF1FWE.A.15D.bo6nMB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <sQALkqF1FWE.A.15D.bo6nMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Cesar Eduardo Barros <cesarb-PWySMVKUnqmsTnJN9+BGXg@public.gmane.org>

On Sun, Sep 26, 2010 at 10:04:15PM +0200, Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.35.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=19062
> Subject		: Dirtiable inode bdi default != sb bdi btrfs
> Submitter	: Cesar Eduardo Barros <cesarb-PWySMVKUnqmsTnJN9+BGXg@public.gmane.org>
> Date		: 2010-09-23 0:54 (4 days old)
> Message-ID	: <4C9AA546.6050201-PWySMVKUnqmsTnJN9+BGXg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=128520328929595&w=2

Note: I'm seeing this warning (Dirtiable inode bdi default != sb bdi)
when I moved from 2.6.36-rc3 to 2.6.36-rc6, using ext4 as a root
partition, and running mke2fs and e2fsck on ext2, ext3, and ext4 file
systems.  So I'm seeing this as a known regression from rc3 to rc6.
Maybe it's different bug with ext4, but in any case, it's highly
annoying.

						- Ted
