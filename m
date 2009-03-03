From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: [re] libata: blacklist NCQ on Seagate Barracuda ST380817AS
Date: Tue, 03 Mar 2009 21:39:32 +0100
Message-ID: <49AD9584.6070603@fisher-privat.net>
References: <49AAB796.1010709@fisher-privat.net> <20090303205034.6fa9a5d5@fastwebnet.it>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090303205034.6fa9a5d5-dbx96nzIXN7OeuqD6ShaSA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Paolo Ornati <ornati-dbx96nzIXN7OeuqD6ShaSA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>

Paolo Ornati schrieb:
> On Sun, 01 Mar 2009 17:28:06 +0100
> Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:
> 
>> Commit da6f0ec2d54acf545e784363aa5bad0dafc5ffa8
>> libata: blacklist NCQ on Seagate Barracuda ST380817AS
>>
>> I tested Seagate Barracuda ST380817AS on my system without the blacklist 
>>   entry on system with ext4 fs and it seems to work. Two days with 
>> normal load, tar, kvm, torrent... i can't reproduce the error described 
>> in this commit.
>>
>> I use board with ICH10R south bridge, AHCI mode.
> 
> In my case it was happening _only_ with barriers enabled (like ext3 mounted with
> "barrier=1") or with XFS (that enables barriers by default).
> 
> Does it survives an untar with barriers?

ext4 have barriers enabled by default, but it will disable it if hdd is 
not capable to do it. So it will just return:
JBD: barrier-based sync failed on dm-1:8 - disabling barriers
