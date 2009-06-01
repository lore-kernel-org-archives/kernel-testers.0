From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc6: BUG at fs/xfs/support/debug.c:109!
Date: Mon, 1 Jun 2009 21:38:07 +0400
Message-ID: <a4423d670906011038qd809ebay22aebca5aaf271a4@mail.gmail.com>
References: <a4423d670906010822l6e8e112dl3d6f7de9e2179850@mail.gmail.com>
	 <B5660F1A-7940-4E4A-92E8-8C0F93C274BD@sgi.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Jtu1iooZ+RGMe7zLzV0BkAq5iWE7NNABwzlQxzDWflk=;
        b=J4GqaAsmxfX1G473eq6P2ao8Z7Ve6DZf6b8AOzhxL2OwtOz64big+CBX1g6cpscbI9
         qdzpgRH2R46BIrAOsYTHeGOiAyNoXt+qofKj4hjx2VWlp10JWHVJYjq23PRN+CRJXx3B
         KidqN4VlyMq3iy8YAs0t0g0BauSNwZlAtWFhc=
In-Reply-To: <B5660F1A-7940-4E4A-92E8-8C0F93C274BD-sJ/iWh9BUns@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

2009/6/1 Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>:
>
> On Jun 1, 2009, at 10:22 AM, Alexander Beregalov wrote:
>
>> Hi
>>
>> Assertion failed: *nmap >=3D 1, file: fs/xfs/xfs_bmap.c, line: 4846
>
> Alexander, what test triggered this assertion?
>
>>
>> ------------[ cut here ]------------
>> kernel BUG at fs/xfs/support/debug.c:109!
>> invalid opcode: 0000 [#1] PREEMPT SMP DEBUG_PAGEALLOC
>> last sysfs file: /sys/kernel/uevent_seqnum
>> CPU 0
>> Modules linked in:
>> Pid: 30665, comm: emerge Not tainted 2.6.30-rc6-00144-g5805977 #1
>> PowerEdge 1950
>> RIP: 0010:[<ffffffff8043abeb>] =C2=A0[<ffffffff8043abeb>] assfail+0x=
2b/0x30
>> RSP: 0018:ffff8800303c1b98 =C2=A0EFLAGS: 00010246
>> RAX: 0000000000000054 RBX: 0000000000000000 RCX: 0000000000000301
>> RDX: 0000000000000000 RSI: 0000000000000001 RDI: 0000000000000001
>> RBP: ffff8800303c1ba8 R08: 0000000000000000 R09: 0000000000000000
>> R10: 0000000000000001 R11: 0000000000000001 R12: 0000000800000000
>> R13: ffff880078c0ccc0 R14: 0000000000000002 R15: ffff88007eb3f000
>> FS: =C2=A000007f7e92dbc6f0(0000) GS:ffff880005000000(0000)
>> knlGS:0000000000000000
>> CS: =C2=A00010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> CR2: 0000000001b0a024 CR3: 0000000074cb0000 CR4: 00000000000006e0
>> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
>> DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 0000000000000400
>> Process emerge (pid: 30665, threadinfo ffff8800303c0000, task
>> ffff88007e335e10)
>> Stack:
>> ffff8800051cefa0 00000000780d89a3 ffff8800303c1d88 ffffffff803d6bad
>> ffffffff804c9ad8 ffffffff814497f8 ffff880045a72000 ffff880045a72aa8
>> ffffffff81449800 0000000000000000 0000000000000000 00000000780d89a3
>> Call Trace:
>> [<ffffffff803d6bad>] xfs_bmapi+0xad/0x1ad0
>
> xfs_bmapi() here doesn't make sense at all.
> Up to this point the stack backtrace seems to be right.
> Strange ...

It was Gentoo's `emerge --metadata`. It reads many small files (ebuilds=
).
I am sure it cannot be easily reproduced.
It runs fine everyday. I do not have a testcase.
I can try to run it forever in loop if you need.
