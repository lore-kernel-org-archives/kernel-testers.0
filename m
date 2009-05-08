From: Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>
Subject: Re: 2.6.30-rc4: xfs_fsr hangs
Date: Thu, 7 May 2009 20:04:17 -0500
Message-ID: <ABCCDF18-5100-4891-AF1C-BA9513C8A334@sgi.com>
References: <a4423d670905011333s664115bdh1d72392897567c1d@mail.gmail.com> <4A036FBC.9020201@sandeen.net> <4A037503.1070904@sandeen.net>
Mime-Version: 1.0 (Apple Message framework v930.3)
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A037503.1070904-+82itfer+wXR7s880joybQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>
Cc: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org


On May 7, 2009, at 6:55 PM, Eric Sandeen wrote:

> Eric Sandeen wrote:
>
>> there are 2 subsequent unlocks for the same inode:
>>
>> 1:
>> xfs_iunlock: ip ca2304c0 ino 132  flags 0x5
>
> ...
>
>> 2:
>> xfs_iunlock: ip ca230980 ino 131  flags 0x5
>
>
> Ugh no, those are 2 different inodes.... I can read, really.  :)   
> still,
> looking into it.

I've been chasing this as well, and I found the double xfs iolock
unlock which is causing xfs_fsr deadlock itself. I have a fix tested.
The patch is coming.

Felix

>
>
> -Eric
> --
> To unsubscribe from this list: send the line "unsubscribe linux- 
> kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
