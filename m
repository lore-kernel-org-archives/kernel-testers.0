From: Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [re] libata: blacklist NCQ on Seagate Barracuda ST380817AS
Date: Mon, 02 Mar 2009 16:20:50 +0900
Message-ID: <49AB88D2.3020701@gmail.com>
References: <49AAB796.1010709@fisher-privat.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :x-enigmail-version:content-type:content-transfer-encoding;
        bh=7FRx5LZiGt9QUqn0awtyOTiQ4GgRNZoGeYA/ai0wS1k=;
        b=u0xUX8X/oSsuwXak/MTqHHZUaflZl0R8wZU35hWlUAQ67csEOJBB+maw+e7/1df2Cv
         OcbmUr28tBU1cwtIK79kl8f3pQ4YIY5/7B35YRMCvxeML3kQ5B/vmWvgTeF21EvNLtMa
         j77uwLAgT0soNztMH45D0E03qdPRNmUlcBSrg=
In-Reply-To: <49AAB796.1010709-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Paolo Ornati <ornati-dbx96nzIXN7OeuqD6ShaSA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>

Hello,

Alexey Fisher wrote:
> Commit da6f0ec2d54acf545e784363aa5bad0dafc5ffa8
> libata: blacklist NCQ on Seagate Barracuda ST380817AS
> 
> I tested Seagate Barracuda ST380817AS on my system without the blacklist
>  entry on system with ext4 fs and it seems to work. Two days with normal
> load, tar, kvm, torrent... i can't reproduce the error described in this
> commit.
> 
> I use board with ICH10R south bridge, AHCI mode.

Heh.. I don't know.  Things like this are pretty difficult to reliably
reproduce and verify.  As a rule of thumb, cases which are reported
multiple times and in close proximity with existing entries in product
line or firmware revision tend to be included.  Given that earlier NCQ
implementations didn't actually help performance much (or rather often
degraded it) and it has a sibling entry with the same firmware
revision, I'm a bit reluctant to lift the blacklist.  You can
overrided it with kernel parameter "libata.force=P.DD:ncq" where P is
the ata port number and DD is the device number.

Thanks.

-- 
tejun
