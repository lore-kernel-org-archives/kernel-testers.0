From: Ed Tomlinson <edt@aei.ca>
Subject: Re: 2.6.30-rc4: xfs_fsr hangs
Date: Sat, 2 May 2009 21:47:51 -0400
Message-ID: <200905022147.52216.edt@aei.ca>
References: <a4423d670905011333s664115bdh1d72392897567c1d@mail.gmail.com> <a4423d670905021159k51e91b12h96189005980b5e73@mail.gmail.com> <49FCA988.2050600@sandeen.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753231AbZECBsQ@vger.kernel.org>
In-Reply-To: <49FCA988.2050600@sandeen.net>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Eric Sandeen <sandeen@sandeen.net>
Cc: Alexander Beregalov <a.beregalov@gmail.com>, linux-kernel@vger.kernel.org, Heinz Diehl <htd@fancy-poultry.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, xfs@oss.sgi.com

On Saturday 02 May 2009 16:14:00 Eric Sandeen wrote:
> Alexander Beregalov wrote:
> > 2009/5/2 Eric Sandeen <sandeen@sandeen.net>:
> >> Alexander Beregalov wrote:
> >>> 2009/5/2 Heinz Diehl <htd@fancy-poultry.org>:
> >>>> On 01.05.2009, Alexander Beregalov wrote:
> >>>>
> >>>>> # xfs_db -r /dev/sdc1
> >>>>> xfs_db> frag
> >>>>> actual 23805, ideal 22890, fragmentation factor 3.84%
> >>>>> # xfs_fsr -v /dev/sdc1
> >>>>> /mnt/c start inode=0
> >>>>> ino=158
> >>>>> extents before:3 after:1 DONE ino=158
> >>>>>
> >>>>>  then it hangs
> >>>> I can't confirm this here on my systems:
> >>>>
> >>>> liesel:~ # uname -a
> >>>> Linux liesel 2.6.30-rc4 #1 SMP PREEMPT Sat May 2 11:49:13 CEST 2009 x86_64 x86_64 x86_64 GNU/Linux
> >>> I have this problem on two x86_32 hosts.
> >>> It runs for about a minute and then hangs.
> >> echo w > /proc/sysrq-trigger
> >> dmesg
> >>
> >> would show all the sleeping processes...
> > It is the same as I posted already:
> 
> hum, only 1 thread, interesting...
 
I have also had strange stalls with rc4 (but not with rc3).  In one case sysrq would just print the title of commands no
data would follow.  Do not know if this is related but it may be that this is not just an xfs issue.

Ed Tomlinson
