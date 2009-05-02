From: Eric Sandeen <sandeen@sandeen.net>
Subject: Re: 2.6.30-rc4: xfs_fsr hangs
Date: Sat, 02 May 2009 13:56:34 -0500
Message-ID: <49FC9762.6010109@sandeen.net>
References: <a4423d670905011333s664115bdh1d72392897567c1d@mail.gmail.com>	<20090502101405.GA6145@fancy-poultry.org> <a4423d670905021135s4fdbea82t20cf75b61c59dc75@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756783AbZEBS4n@vger.kernel.org>
In-Reply-To: <a4423d670905021135s4fdbea82t20cf75b61c59dc75@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexander Beregalov <a.beregalov@gmail.com>
Cc: linux-kernel@vger.kernel.org, Heinz Diehl <htd@fancy-poultry.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, xfs@oss.sgi.com

Alexander Beregalov wrote:
> 2009/5/2 Heinz Diehl <htd@fancy-poultry.org>:
>> On 01.05.2009, Alexander Beregalov wrote:
>>
>>> # xfs_db -r /dev/sdc1
>>> xfs_db> frag
>>> actual 23805, ideal 22890, fragmentation factor 3.84%
>>> # xfs_fsr -v /dev/sdc1
>>> /mnt/c start inode=0
>>> ino=158
>>> extents before:3 after:1 DONE ino=158
>>>
>>>  then it hangs
>> I can't confirm this here on my systems:
>>
>> liesel:~ # uname -a
>> Linux liesel 2.6.30-rc4 #1 SMP PREEMPT Sat May 2 11:49:13 CEST 2009 x86_64 x86_64 x86_64 GNU/Linux
> 
> I have this problem on two x86_32 hosts.
> It runs for about a minute and then hangs.

echo w > /proc/sysrq-trigger
dmesg

would show all the sleeping processes...

-Eric
