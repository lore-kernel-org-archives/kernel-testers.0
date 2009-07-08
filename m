From: Gene Heskett <gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
Subject: Re: OOM killer in 2.6.31-rc2
Date: Wed, 08 Jul 2009 10:22:50 -0400
Message-ID: <200907081022.52758.gene.heskett@verizon.net>
References: <200907061056.00229.gene.heskett@verizon.net>
 <20090708051515.GA17156@localhost> <20090708075501.GA1122@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <20090708075501.GA1122@localhost>
Content-disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Wu Fengguang <fengguang.wu-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Minchan Kim <minchan.kim-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>

On Wednesday 08 July 2009, Wu Fengguang wrote:
>On Wed, Jul 08, 2009 at 01:15:15PM +0800, Wu Fengguang wrote:

>> I guess you can only use 3G ram because there is a big memory hole.
>> Your HighMem zone spanned 951810 pages, 813013 of which is present.
>> So it's not quite accurate for the OOM message "951810 pages HighMem"
>> to report the spanned pages.
>>
>> Your Normal zone has 221994 present pages, while the OOM message shows
>> "slab:206505", which indicates that the OOM is caused by too much
>> slab pages(they cannot be allocated from HighMem zone).
>>
>> I guess your near 800MB slab cache is somehow under scanned.
>
>Gene, can you run .31 with this patch? When OOM happens, it will tell
>us whether the majority slab pages are reclaimable. Another way to
>find things out is to run `slabtop` when your system is moderately loaded.

Yes, as of 9:55am this patch is running, and I have a session of slabtop (and 
although it is old, it is a new one to me, so I'm not sure what a normal 
report should look like) running.

This is also without the HIGH_MEM64G, so I only have about 3.5G of ram 
showing.

There is one line early in the dmesg that needs clarified:

[    0.000000] TOM2: 0000000120000000 aka 4608M

that is more memory than is in the machine unless its somehow counting the DDR 
ram on the video card, and IIRC that is only 256megs in any event.  Swap is 
not mounted by that point, much later.

Also from this dmesg:
[    0.000000] On node 0 totalpages: 917103
[    0.000000] free_area_init_node: node 0, pgdat c13f5400, node_mem_map 
c14bf200
[    0.000000]   DMA zone: 32 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 3951 pages, LIFO batch:0
[    0.000000]   Normal zone: 1744 pages used for memmap
[    0.000000]   Normal zone: 221486 pages, LIFO batch:31
[    0.000000]   HighMem zone: 5390 pages used for memmap
[    0.000000]   HighMem zone: 684500 pages, LIFO batch:31
==================
is this correct?

From slabtop right now:
=================
Active / Total Objects (% used)    : 321146 / 349617 (91.9%)
Active / Total Slabs (% used)      : 22464 / 22483 (99.9%)
Active / Total Caches (% used)     : 101 / 163 (62.0%)
Active / Total Size (% used)       : 81250.57K / 85788.52K (94.7%)
Minimum / Average / Maximum Object : 0.01K / 0.24K / 4096.00K
=================
Humm, that is running in an x terminal, I'll start one on tty2 also.
I might have a better chance of seeing it after x dies.

FWIW, 2.6.30.1, also built w/o that 64G flag, and with the newest bios, also 
ran all night, which surprised me.  I half expected to wake up to a dead 
machine.  I have every time I installed that bios before...

Now we wait...  Thanks, Fengguang

[...]

-- 
Cheers, Gene
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author)
The NRA is offering FREE Associate memberships to anyone who wants them.
<https://www.nrahq.org/nrabonus/accept-membership.asp>

"I'd love to go out with you, but the last time I went out, I never came 
back."
