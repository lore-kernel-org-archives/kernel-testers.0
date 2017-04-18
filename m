From: "Vellemans, Noel" <Noel.Vellemans-jVIO7HaJqZIeKeHsXy56Pg@public.gmane.org>
Subject: SYNC - takes VERY  long complete  ( system freezes) !
Date: Tue, 18 Apr 2017 08:43:58 +0000
Message-ID: <D24E577EA1E37B4788A3BFBC418F14A70750D5DD@wetsrvex01.loepfe.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi all,

I've been upgrading to a recent kernel ( for one of our boards).  { Running on a 1- Ghz ARM single core CPU} 
And I'm having an issue that keeps me busy for some days.
"sync" seems to take VERY long to complete. ( the whole system seems to freeze, so that finally the WATDOG triggers a reset) 

There is no disk activity ( logs are stored on tmpfs ) ... .!
 
On a recent 4.4.61  kernel  the time measured for the "sync"  seems often to be more than 5 seconds ( up to 30 seconds). 
# /usr/bin/time  sync;

real    0m 8.01s
user    0m 0.00s
sys     0m 0.01s

{ fyi: system load with 'TOP' is less than 2%,   I've been trying 4.4.43 and 4.4.61 .. both have the same 'behavoir'}


On an older 2.6.35.x kernel ( the kernel has been rebuild)  I have this behavior.
# /usr/bin/time  sync;

real    0m 0.01s
user    0m 0.00s
sys     0m 0.01s


I'm using  same root-filesystem, for both builds (the only change is  another (upgraded) kernel version) -> must be kernel related.
I'm using the same file systems , I've been trying ext2,ubifs, even FAT .  

Old-2.6.35.x-Kernel : sync - time very good ( acceptable)
NEW-4.4.x-Kernel   : sync  - time .. BAD .. takes way to long.  !!! 

Any clue what could be the cause , or any hints that could explain ( and solve ?) this ..


Best Regards
Noel
