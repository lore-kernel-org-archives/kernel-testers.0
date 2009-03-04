From: Paolo Ornati <ornati-dbx96nzIXN7OeuqD6ShaSA@public.gmane.org>
Subject: Re: [re] libata: blacklist NCQ on Seagate Barracuda ST380817AS
Date: Wed, 4 Mar 2009 20:31:00 +0100
Message-ID: <20090304203100.35f762d9@fastwebnet.it>
References: <49AAB796.1010709@fisher-privat.net>
	<20090303205034.6fa9a5d5@fastwebnet.it>
	<49AD9584.6070603@fisher-privat.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49AD9584.6070603-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>

On Tue, 03 Mar 2009 21:39:32 +0100
Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:

> >> I use board with ICH10R south bridge, AHCI mode.  
> > 
> > In my case it was happening _only_ with barriers enabled (like ext3 mounted with
> > "barrier=1") or with XFS (that enables barriers by default).
> > 
> > Does it survives an untar with barriers?  
> 
> ext4 have barriers enabled by default, but it will disable it if hdd is 
> not capable to do it. So it will just return:
> JBD: barrier-based sync failed on dm-1:8 - disabling barriers

HD in question _CAN_ do barriers.

You are using device mapper, maybe it's that additional layer that
causes barriers to be disabled.

Try with a "raw" partition and see what happens.

-- 
	Paolo Ornati
	Linux 2.6.29-rc6-00305-g2450cf5 on x86_64
