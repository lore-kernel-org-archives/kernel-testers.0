From: Colin Ian King <colin.king@canonical.com>
Subject: Re: [sparc64] kernel panic from running a program in userspace
Date: Sat, 19 Jun 2021 10:30:58 +0100
Message-ID: <f9bd5a0e-6f9e-c042-cbfc-2e03bf16b92c@canonical.com>
References: <CADxRZqwzbHvMwEB=y_xi2GYK55wtnzycWcUoK_t4q_ccisp+Sg@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <sparclinux-owner@vger.kernel.org>
In-Reply-To: <CADxRZqwzbHvMwEB=y_xi2GYK55wtnzycWcUoK_t4q_ccisp+Sg@mail.gmail.com>
Content-Language: en-US
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Anatoly Pugachev <matorola@gmail.com>, Sparc kernel list <sparclinux@vger.kernel.org>
Cc: Linux Kernel list <linux-kernel@vger.kernel.org>, debian-sparc <debian-sparc@lists.debian.org>, kernel-testers@vger.kernel.org

Hi,

I suspect this issue was fixed with the following commit:

commit e5e8b80d352ec999d2bba3ea584f541c83f4ca3f
Author: Rob Gardner <rob.gardner@oracle.com>
Date:   Sun Feb 28 22:48:16 2021 -0700

    sparc64: Fix opcode filtering in handling of no fault loads

Colin

On 19/06/2021 09:24, Anatoly Pugachev wrote:
> Hello!
>=20
> Getting the following in logs:
> (reproducible with almost every run, tried different kernel as well -
> debian packaged 5.10.0-7-sparc64-smp )
>=20
> [  863.344843] stress-ng[593992]: bad register window fault: SP
> 00000000fcd023ff (orig_sp 00000000fcd01c00) TPC fff80001000237fc O7
> fff800010003e008
> [  890.782498] CPU[4]: SUN4V mondo timeout, cpu(5) made no forward
> progress after 500001 retries. Total target cpus(7).
> [  890.782539] CPU[3]: SUN4V mondo timeout, cpu(5) made no forward
> progress after 500001 retries. Total target cpus(7).
> [  890.782590] Kernel panic - not syncing: SUN4V mondo timeout panic
> [  890.782664] CPU: 4 PID: 480951 Comm: stress-ng Tainted: G
>  E     5.13.0-rc6 #229
> [  890.782713] Call Trace:
> [  890.782733] [<0000000000c806c8>] panic+0xf4/0x2d4
> [  890.782773] [<000000000043f3a8>] hypervisor_xcall_deliver+0x288/0x320
> [  890.782816] [<000000000043efb8>] xcall_deliver+0xf8/0x120
> [  890.782860] [<0000000000440518>] smp_flush_tlb_page+0x38/0x60
> [  890.782898] [<000000000044ee44>] flush_tlb_pending+0x64/0xa0
> [  890.782938] [<000000000044f1c4>] arch_leave_lazy_mmu_mode+0x24/0x40
> [  890.782977] [<0000000000651b4c>] copy_pte_range+0x5ac/0x860
> [  890.783013] [<0000000000655974>] copy_pud_range+0x1f4/0x260
> [  890.783049] [<0000000000655b2c>] copy_page_range+0x14c/0x1c0
> [  890.783083] [<00000000004613b4>] dup_mmap+0x374/0x4a0
> [  890.783123] [<0000000000461530>] dup_mm+0x50/0x200
> [  890.783157] [<0000000000462384>] copy_process+0x704/0x1280
> [  890.783196] [<00000000004631a8>] kernel_clone+0x88/0x380
> [  890.783231] [<000000000042d170>] sparc_clone+0xb0/0xe0
> [  890.783274] [<0000000000406274>] linux_sparc_syscall+0x34/0x44
> [  890.784106] CPU[7]: SUN4V mondo timeout, cpu(5) made no forward
> progress after 500002 retries. Total target cpus(7).
> [  890.784119] CPU[6]: SUN4V mondo timeout, cpu(5) made no forward
> progress after 500003 retries. Total target cpus(7).
> [  890.784876] Press Stop-A (L1-A) from sun keyboard or send break
> [  890.784876] twice on console to return to the boot prom
> [  890.784897] ---[ end Kernel panic - not syncing: SUN4V mondo
> timeout panic ]---
>=20
> (and machine halt)
>=20
> after running stress-ng :
>=20
> stress-ng.git$ ./stress-ng --verbose --timeout 10m --opcode -1
> stress-ng: debug: [480950] stress-ng 0.12.10 g27f90a2276bd
> stress-ng: debug: [480950] system: Linux ttip 5.13.0-rc6 #229 SMP Tue
> Jun 15 12:30:23 MSK 2021 sparc64
> stress-ng: debug: [480950] RAM total: 7.8G, RAM free: 7.0G, swap free: 76=
8.7M
> stress-ng: debug: [480950] 8 processors online, 256 processors configured
> stress-ng: info:  [480950] dispatching hogs: 8 opcode
> stress-ng: debug: [480950] cache allocate: using cache maximum level L2
> stress-ng: debug: [480950] cache allocate: shared cache buffer size: 128K
> stress-ng: debug: [480950] starting stressors
> stress-ng: debug: [480951] stress-ng-opcode: started [480951] (instance 0)
> stress-ng: debug: [480952] stress-ng-opcode: started [480952] (instance 1)
> stress-ng: debug: [480953] stress-ng-opcode: started [480953] (instance 2)
> stress-ng: debug: [480955] stress-ng-opcode: started [480955] (instance 3)
> stress-ng: debug: [480957] stress-ng-opcode: started [480957] (instance 4)
> stress-ng: debug: [480959] stress-ng-opcode: started [480959] (instance 5)
> stress-ng: debug: [480961] stress-ng-opcode: started [480961] (instance 6)
> stress-ng: debug: [480950] 8 stressors started
> stress-ng: debug: [480963] stress-ng-opcode: started [480963] (instance 7)
> *** stack smashing detected ***: terminated
> *** stack smashing detected ***: terminated
> *** stack smashing detected ***: terminated
> *** stack smashing detected ***: terminated
> *** stack smashing detected ***: terminated
> *** stack smashing detected ***: terminated
> *** stack smashing detected ***: terminated
> Inconsistency detected by ld.so: dl-runtime.c: 80: _dl_fixup:
> Assertion `ELFW(R_TYPE)(reloc->r_info) =3D=3D ELF_MACHINE_JMP_SLOT'
> failed!
> *** stack smashing detected ***: terminated
> munmap_chunk(): invalid pointer
> *** stack smashing detected ***: terminated
> *** stack smashing detected ***: terminated
> *** stack smashing detected ***: terminated
> *** stack smashing detected ***: terminated
> *** stack smashing detected ***: terminated
> Inconsistency detected by ld.so: : 422: Assertion `=EF=BF=BD' failed!
> *** stack smashing detected ***: terminated
>=20
>=20
> Machine is my testing LDOM (virtual machine), installed and running
> the latest sparc4 debian sid (unstable).
>=20

