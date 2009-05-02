From: Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>
Subject: Re: 2.6.30-rc4: xfs_fsr hangs
Date: Sat, 2 May 2009 12:14:05 +0200
Message-ID: <20090502101405.GA6145@fancy-poultry.org>
References: <a4423d670905011333s664115bdh1d72392897567c1d@mail.gmail.com>
Reply-To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <a4423d670905011333s664115bdh1d72392897567c1d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

On 01.05.2009, Alexander Beregalov wrote: 

> # xfs_db -r /dev/sdc1
> xfs_db> frag
> actual 23805, ideal 22890, fragmentation factor 3.84%
> # xfs_fsr -v /dev/sdc1
> /mnt/c start inode=0
> ino=158
> extents before:3 after:1 DONE ino=158
> 
>  then it hangs

I can't confirm this here on my systems:

liesel:~ # uname -a
Linux liesel 2.6.30-rc4 #1 SMP PREEMPT Sat May 2 11:49:13 CEST 2009 x86_64 x86_64 x86_64 GNU/Linux

liesel:~ # xfs_db -r /dev/sdc1
xfs_db> frag
actual 42974, ideal 42842, fragmentation factor 0.31%
xfs_db> quit

liesel:~ # xfs_fsr -v /dev/sdc1
/home start inode=0
ino=248755507
ino=248755507 already fully defragmented.
ino=536871160
extents before:2 after:1 DONE ino=536871160
ino=536875693
extents before:3 after:1 DONE ino=536875693
ino=615920545
extents before:2 after:1 DONE ino=615920545
ino=615920557
extents before:2 after:1 DONE ino=615920557
ino=1092324584
extents before:4 after:1 DONE ino=1092324584
liesel:~ #
