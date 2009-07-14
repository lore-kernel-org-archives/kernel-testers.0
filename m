From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: Re: 60 memory leaks.. or is it some thing wrong with kmemleak?
Date: Tue, 14 Jul 2009 10:28:56 +0200
Message-ID: <4A5C41C8.7040904@fisher-privat.net>
References: <4A5C20E5.6010203@fisher-privat.net> <84144f020907140019g511723dctb541f6333d1a082b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <84144f020907140019g511723dctb541f6333d1a082b-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>

Hi Pekka,

i updated now to git 2.6.31-rc3 and now i have
"kmemleak: 76 new suspected memory leaks"

ext4 and control group still there.


Pekka Enberg schrieb:
> Hi Alexey,
> 
> [ Lets cc Catalin. ]
> 
> On Tue, Jul 14, 2009 at 9:08 AM, Alexey
> Fisher<bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:
>> Hallo all,
>> i enabled kmemleak and now i get a lot of them...
> 
> Which kernel version is this? You almost definitely want to try out
> 2.6.31-rc3 which has tons of bug fixes to kmemleak.
> 
>> i do not know if this are real or some noise..
>> most of the about mounting ext4
>>
>> unreferenced object 0xffff880133c63800 (size 1024):
>>  comm "exe", pid 1521, jiffies 4294894652
>>  backtrace:
>>    [<ffffffff810f8f36>] create_object+0x126/0x2b0
>>    [<ffffffff810f91d5>] kmemleak_alloc+0x25/0x60
>>    [<ffffffff810f32a3>] __kmalloc+0x113/0x200
>>    [<ffffffff811aa061>] ext4_mb_init+0x1b1/0x570
>>    [<ffffffff8119b3d2>] ext4_fill_super+0x1de2/0x26d0
>>    [<ffffffff810fe40f>] get_sb_bdev+0x16f/0x1b0
>>    [<ffffffff811912f3>] ext4_get_sb+0x13/0x20
>>    [<ffffffff810fdee6>] vfs_kern_mount+0x76/0x180
>>    [<ffffffff810fe05d>] do_kern_mount+0x4d/0x120
>>    [<ffffffff81115e17>] do_mount+0x307/0x880
>>    [<ffffffff8111641f>] sys_mount+0x8f/0xe0
>>    [<ffffffff8100b66b>] system_call_fastpath+0x16/0x1b
>>    [<ffffffffffffffff>] 0xffffffffffffffff
>> unreferenced object 0xffff8801334db0c0 (size 192):
>>  comm "exe", pid 1521, jiffies 4294894652
>>  backtrace:
>>    [<ffffffff810f8f36>] create_object+0x126/0x2b0
>>    [<ffffffff810f91d5>] kmemleak_alloc+0x25/0x60
>>    [<ffffffff810f32a3>] __kmalloc+0x113/0x200
>>    [<ffffffff811aa061>] ext4_mb_init+0x1b1/0x570
>>    [<ffffffff8119b3d2>] ext4_fill_super+0x1de2/0x26d0
>>    [<ffffffff810fe40f>] get_sb_bdev+0x16f/0x1b0
>>    [<ffffffff811912f3>] ext4_get_sb+0x13/0x20
>>    [<ffffffff810fdee6>] vfs_kern_mount+0x76/0x180
>>    [<ffffffff810fe05d>] do_kern_mount+0x4d/0x120
>>    [<ffffffff81115e17>] do_mount+0x307/0x880
>>    [<ffffffff8111641f>] sys_mount+0x8f/0xe0
>>    [<ffffffff8100b66b>] system_call_fastpath+0x16/0x1b
>>    [<ffffffffffffffff>] 0xffffffffffffffff
>>
>>
>> and other seems like about control group:
>>
>>
>> unreferenced object 0xffff88013b852440 (size 544):
>>  comm "swapper", pid 0, jiffies 4294892296
>>  backtrace:
>>    [<ffffffff810f8f36>] create_object+0x126/0x2b0
>>    [<ffffffff810f91d5>] kmemleak_alloc+0x25/0x60
>>    [<ffffffff810f24f3>] kmem_cache_alloc+0xf3/0x170
>>    [<ffffffff8121deff>] idr_pre_get+0x5f/0x90
>>    [<ffffffff810898c5>] get_new_cssid+0x65/0x120
>>    [<ffffffff8174f7a3>] cgroup_init+0x6f/0x109
>>    [<ffffffff8173ad21>] start_kernel+0x3a6/0x3ca
>>    [<ffffffff8173a315>] x86_64_start_reservations+0x125/0x129
>>    [<ffffffff8173a3fd>] x86_64_start_kernel+0xe4/0xeb
>>    [<ffffffffffffffff>] 0xffffffffffffffff
>> unreferenced object 0xffff88013b852660 (size 544):
>>  comm "swapper", pid 0, jiffies 4294892296
>>  backtrace:
>>    [<ffffffff810f8f36>] create_object+0x126/0x2b0
>>    [<ffffffff810f91d5>] kmemleak_alloc+0x25/0x60
>>    [<ffffffff810f24f3>] kmem_cache_alloc+0xf3/0x170
>>    [<ffffffff8121deff>] idr_pre_get+0x5f/0x90
>>    [<ffffffff810898c5>] get_new_cssid+0x65/0x120
>>    [<ffffffff8174f7a3>] cgroup_init+0x6f/0x109
>>    [<ffffffff8173ad21>] start_kernel+0x3a6/0x3ca
>>    [<ffffffff8173a315>] x86_64_start_reservations+0x125/0x129
>>    [<ffffffff8173a3fd>] x86_64_start_kernel+0xe4/0xeb
>>    [<ffffffffffffffff>] 0xffffffffffffffff
>> --
>> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
>> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at  http://www.tux.org/lkml/
>>
> --
> To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
