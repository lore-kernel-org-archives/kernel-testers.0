From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: 60 memory leaks.. or is it some thing wrong with kmemleak?
Date: Tue, 14 Jul 2009 10:19:41 +0300
Message-ID: <84144f020907140019g511723dctb541f6333d1a082b@mail.gmail.com>
References: <4A5C20E5.6010203@fisher-privat.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=e+pyOLXHKMIjjuQD5KeVX+JStVPo4VGujxYOLzma4aY=;
        b=Eok5UtgE6tbpzMGs6QwKv9GaxDIZwR16rDNBFH0AalrRzjmjiDfo6pZEJ07yC05ZP1
         2VUAMi6+qzvFiceLuPVeFcVlakSg+dL9snRbCY/GgTckxEjjA57Sb446AKQYE7LEG25v
         zgm5hOuJi7r43rp0tbZfBh6S6dHglsjB86IzQ=
In-Reply-To: <4A5C20E5.6010203-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Catalin Marinas <catalin.marinas-5wv7dgnIgG8@public.gmane.org>

Hi Alexey,

[ Lets cc Catalin. ]

On Tue, Jul 14, 2009 at 9:08 AM, Alexey
=46isher<bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:
> Hallo all,
> i enabled kmemleak and now i get a lot of them...

Which kernel version is this? You almost definitely want to try out
2.6.31-rc3 which has tons of bug fixes to kmemleak.

> i do not know if this are real or some noise..
> most of the about mounting ext4
>
> unreferenced object 0xffff880133c63800 (size 1024):
> =A0comm "exe", pid 1521, jiffies 4294894652
> =A0backtrace:
> =A0 =A0[<ffffffff810f8f36>] create_object+0x126/0x2b0
> =A0 =A0[<ffffffff810f91d5>] kmemleak_alloc+0x25/0x60
> =A0 =A0[<ffffffff810f32a3>] __kmalloc+0x113/0x200
> =A0 =A0[<ffffffff811aa061>] ext4_mb_init+0x1b1/0x570
> =A0 =A0[<ffffffff8119b3d2>] ext4_fill_super+0x1de2/0x26d0
> =A0 =A0[<ffffffff810fe40f>] get_sb_bdev+0x16f/0x1b0
> =A0 =A0[<ffffffff811912f3>] ext4_get_sb+0x13/0x20
> =A0 =A0[<ffffffff810fdee6>] vfs_kern_mount+0x76/0x180
> =A0 =A0[<ffffffff810fe05d>] do_kern_mount+0x4d/0x120
> =A0 =A0[<ffffffff81115e17>] do_mount+0x307/0x880
> =A0 =A0[<ffffffff8111641f>] sys_mount+0x8f/0xe0
> =A0 =A0[<ffffffff8100b66b>] system_call_fastpath+0x16/0x1b
> =A0 =A0[<ffffffffffffffff>] 0xffffffffffffffff
> unreferenced object 0xffff8801334db0c0 (size 192):
> =A0comm "exe", pid 1521, jiffies 4294894652
> =A0backtrace:
> =A0 =A0[<ffffffff810f8f36>] create_object+0x126/0x2b0
> =A0 =A0[<ffffffff810f91d5>] kmemleak_alloc+0x25/0x60
> =A0 =A0[<ffffffff810f32a3>] __kmalloc+0x113/0x200
> =A0 =A0[<ffffffff811aa061>] ext4_mb_init+0x1b1/0x570
> =A0 =A0[<ffffffff8119b3d2>] ext4_fill_super+0x1de2/0x26d0
> =A0 =A0[<ffffffff810fe40f>] get_sb_bdev+0x16f/0x1b0
> =A0 =A0[<ffffffff811912f3>] ext4_get_sb+0x13/0x20
> =A0 =A0[<ffffffff810fdee6>] vfs_kern_mount+0x76/0x180
> =A0 =A0[<ffffffff810fe05d>] do_kern_mount+0x4d/0x120
> =A0 =A0[<ffffffff81115e17>] do_mount+0x307/0x880
> =A0 =A0[<ffffffff8111641f>] sys_mount+0x8f/0xe0
> =A0 =A0[<ffffffff8100b66b>] system_call_fastpath+0x16/0x1b
> =A0 =A0[<ffffffffffffffff>] 0xffffffffffffffff
>
>
> and other seems like about control group:
>
>
> unreferenced object 0xffff88013b852440 (size 544):
> =A0comm "swapper", pid 0, jiffies 4294892296
> =A0backtrace:
> =A0 =A0[<ffffffff810f8f36>] create_object+0x126/0x2b0
> =A0 =A0[<ffffffff810f91d5>] kmemleak_alloc+0x25/0x60
> =A0 =A0[<ffffffff810f24f3>] kmem_cache_alloc+0xf3/0x170
> =A0 =A0[<ffffffff8121deff>] idr_pre_get+0x5f/0x90
> =A0 =A0[<ffffffff810898c5>] get_new_cssid+0x65/0x120
> =A0 =A0[<ffffffff8174f7a3>] cgroup_init+0x6f/0x109
> =A0 =A0[<ffffffff8173ad21>] start_kernel+0x3a6/0x3ca
> =A0 =A0[<ffffffff8173a315>] x86_64_start_reservations+0x125/0x129
> =A0 =A0[<ffffffff8173a3fd>] x86_64_start_kernel+0xe4/0xeb
> =A0 =A0[<ffffffffffffffff>] 0xffffffffffffffff
> unreferenced object 0xffff88013b852660 (size 544):
> =A0comm "swapper", pid 0, jiffies 4294892296
> =A0backtrace:
> =A0 =A0[<ffffffff810f8f36>] create_object+0x126/0x2b0
> =A0 =A0[<ffffffff810f91d5>] kmemleak_alloc+0x25/0x60
> =A0 =A0[<ffffffff810f24f3>] kmem_cache_alloc+0xf3/0x170
> =A0 =A0[<ffffffff8121deff>] idr_pre_get+0x5f/0x90
> =A0 =A0[<ffffffff810898c5>] get_new_cssid+0x65/0x120
> =A0 =A0[<ffffffff8174f7a3>] cgroup_init+0x6f/0x109
> =A0 =A0[<ffffffff8173ad21>] start_kernel+0x3a6/0x3ca
> =A0 =A0[<ffffffff8173a315>] x86_64_start_reservations+0x125/0x129
> =A0 =A0[<ffffffff8173a3fd>] x86_64_start_kernel+0xe4/0xeb
> =A0 =A0[<ffffffffffffffff>] 0xffffffffffffffff
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at =A0http://www.tux.org/lkml/
>
