From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: [re] libata: blacklist NCQ on Seagate Barracuda ST380817AS
Date: Sun, 01 Mar 2009 17:28:06 +0100
Message-ID: <49AAB796.1010709@fisher-privat.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Paolo Ornati <ornati-dbx96nzIXN7OeuqD6ShaSA@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>

Commit da6f0ec2d54acf545e784363aa5bad0dafc5ffa8
libata: blacklist NCQ on Seagate Barracuda ST380817AS

I tested Seagate Barracuda ST380817AS on my system without the blacklist 
  entry on system with ext4 fs and it seems to work. Two days with 
normal load, tar, kvm, torrent... i can't reproduce the error described 
in this commit.

I use board with ICH10R south bridge, AHCI mode.

Alexey
