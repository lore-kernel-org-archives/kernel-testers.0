From: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>
Subject: Re: 2.6.30-rc4: xfs_fsr hangs
Date: Thu, 07 May 2009 18:55:47 -0500
Message-ID: <4A037503.1070904@sandeen.net>
References: <a4423d670905011333s664115bdh1d72392897567c1d@mail.gmail.com> <4A036FBC.9020201@sandeen.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A036FBC.9020201-+82itfer+wXR7s880joybQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

Eric Sandeen wrote:

> there are 2 subsequent unlocks for the same inode:
> 
> 1:
> xfs_iunlock: ip ca2304c0 ino 132  flags 0x5

...

> 2:
> xfs_iunlock: ip ca230980 ino 131  flags 0x5


Ugh no, those are 2 different inodes.... I can read, really.  :)  still,
looking into it.

-Eric
