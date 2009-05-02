From: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>
Subject: Re: 2.6.30-rc4: xfs_fsr hangs
Date: Sat, 02 May 2009 15:14:00 -0500
Message-ID: <49FCA988.2050600@sandeen.net>
References: <a4423d670905011333s664115bdh1d72392897567c1d@mail.gmail.com>	 <20090502101405.GA6145@fancy-poultry.org>	 <a4423d670905021135s4fdbea82t20cf75b61c59dc75@mail.gmail.com>	 <49FC9762.6010109@sandeen.net> <a4423d670905021159k51e91b12h96189005980b5e73@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670905021159k51e91b12h96189005980b5e73-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

Alexander Beregalov wrote:
> 2009/5/2 Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>:
>> Alexander Beregalov wrote:
>>> 2009/5/2 Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>:
>>>> On 01.05.2009, Alexander Beregalov wrote:
>>>>
>>>>> # xfs_db -r /dev/sdc1
>>>>> xfs_db> frag
>>>>> actual 23805, ideal 22890, fragmentation factor 3.84%
>>>>> # xfs_fsr -v /dev/sdc1
>>>>> /mnt/c start inode=0
>>>>> ino=158
>>>>> extents before:3 after:1 DONE ino=158
>>>>>
>>>>>  then it hangs
>>>> I can't confirm this here on my systems:
>>>>
>>>> liesel:~ # uname -a
>>>> Linux liesel 2.6.30-rc4 #1 SMP PREEMPT Sat May 2 11:49:13 CEST 2009 x86_64 x86_64 x86_64 GNU/Linux
>>> I have this problem on two x86_32 hosts.
>>> It runs for about a minute and then hangs.
>> echo w > /proc/sysrq-trigger
>> dmesg
>>
>> would show all the sleeping processes...
> It is the same as I posted already:

hum, only 1 thread, interesting...

Thanks,
-Eric
