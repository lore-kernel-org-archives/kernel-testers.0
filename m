From: "Alexander Beregalov" <a.beregalov@gmail.com>
Subject: 2.6.28-rc6: hpet: object is on stack, but not annotated
Date: Mon, 24 Nov 2008 19:39:39 +0300
Message-ID: <a4423d670811240839q54e6b7afxfc49d28b3ea127cb@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753965AbYKXQj4@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=Kb8QhTwqe8cuWjWCen35iNQroTewR/rv++Yk6m5X4I4=;
        b=bWFM+8GmbqbUAQqcAtLryYC3Bo2BZTTSPfcW6Prr6OKSsq4lDITK3Hi+CYv8FyQXYW
         SkF8uo6PRz3GuLhkY/68V2wC6SU/0RzsVkPGpwLBHsP7iijtd8VgOAptpPkectfAr836
         C91xC26INoOlUM5TvwRrD2snURRsv2IbziyOQ=
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kernel Testers List <kernel-testers@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, tglx@linutronix.de, mingo@elte.hu, clemens@ladisch.de, vojtech@suse.cz

Hi

It is X86_64, SMP
It appears during boot process.

CONFIG_HPET_TIMER=y
CONFIG_HPET_EMULATE_RTC=y
CONFIG_HPET=y
CONFIG_HPET_MMAP=y
CONFIG_DEBUG_OBJECTS=y
# CONFIG_DEBUG_OBJECTS_SELFTEST is not set
CONFIG_DEBUG_OBJECTS_FREE=y
CONFIG_DEBUG_OBJECTS_TIMERS=y

hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
hpet0: 3 comparators, 64-bit 14.318180 MHz counter
ODEBUG: object is on stack, but not annotated
------------[ cut here ]------------
WARNING: at lib/debugobjects.c:251 __debug_object_init+0x2a4/0x352()
Modules linked in:
Pid: 1, comm: swapper Not tainted 2.6.28-rc6-00007-ged31348 #5
Call Trace:
 [<ffffffff8023661b>] warn_on_slowpath+0x58/0x7d
 [<ffffffff804de4b6>] ? printk+0x67/0x69
 [<ffffffff8037fd54>] ? __debug_object_init+0x185/0x352
 [<ffffffff8037fe73>] __debug_object_init+0x2a4/0x352
 [<ffffffff8037ff4e>] debug_object_init+0x14/0x16
 [<ffffffff8023f681>] init_timer+0x18/0x5b
 [<ffffffff80220739>] hpet_cpuhp_notify+0x93/0x105
 [<ffffffff80220872>] ? hpet_work+0x0/0x206
 [<ffffffff803d0301>] ? hpet_alloc+0x32d/0x389
 [<ffffffff80256db2>] ? trace_hardirqs_on_caller+0x10d/0x138
 [<ffffffff80256dea>] ? trace_hardirqs_on+0xd/0xf
 [<ffffffff806c45b7>] ? hpet_late_init+0x0/0x19e
 [<ffffffff806c45b7>] ? hpet_late_init+0x0/0x19e
 [<ffffffff806c4721>] hpet_late_init+0x16a/0x19e
 [<ffffffff806c27a9>] ? print_all_ICs+0x0/0x540
 [<ffffffff80209058>] _stext+0x58/0x138
 [<ffffffff804e0ecb>] ? _spin_unlock+0x4a/0x57
 [<ffffffff802db669>] ? proc_register+0x17f/0x193
 [<ffffffff802db7a5>] ? create_proc_entry+0x7e/0x94
 [<ffffffff80267d15>] ? register_irq_proc+0xb0/0xcc
 [<ffffffff802d0000>] ? elf_core_dump+0x662/0xc71
 [<ffffffff806b9625>] kernel_init+0x125/0x179
 [<ffffffff804e087f>] ? trace_hardirqs_on_thunk+0x3a/0x3f
 [<ffffffff8020c849>] child_rip+0xa/0x11
 [<ffffffff8020bd38>] ? restore_args+0x0/0x30
 [<ffffffff806b9500>] ? kernel_init+0x0/0x179
 [<ffffffff8020c83f>] ? child_rip+0x0/0x11
---[ end trace 4eaa2a86a8e2da22 ]---
Switched to high resolution mode on CPU 0
Switched to high resolution mode on CPU 3
Switched to high resolution mode on CPU 2
Switched to high resolution mode on CPU 1
