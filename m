From: Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>
Subject: Re: [PATCH][RFC] fix kernel BUG at mm/migrate.c:719! in
	2.6.26-rc5-mm3
Date: Tue, 17 Jun 2008 13:46:38 -0400
Message-ID: <1213724798.8707.41.camel@lts-notebook>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
	 <20080617163501.7cf411ee.nishimura@mxp.nes.nec.co.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080617163501.7cf411ee.nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Kosaki Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, 2008-06-17 at 16:35 +0900, Daisuke Nishimura wrote:
> Hi.
>=20
> I got this bug while migrating pages only a few times
> via memory_migrate of cpuset.

Ah, I did test migration fairly heavily, but not by moving cpusets. =20

>=20
> Unfortunately, even if this patch is applied,
> I got bad_page problem after hundreds times of page migration
> (I'll report it in another mail).
> But I believe something like this patch is needed anyway.

Agreed.  See comments below.
>=20
> ------------[ cut here ]------------
> kernel BUG at mm/migrate.c:719!
> invalid opcode: 0000 [1] SMP
> last sysfs file: /sys/devices/system/cpu/cpu3/cache/index1/shared_cpu=
_map
> CPU 0
> Modules linked in: ipv6 autofs4 hidp rfcomm l2cap bluetooth sunrpc dm=
_mirror dm_log dm_multipath dm_mod sbs sbshc button battery acpi_memhot=
plug ac parport_pc lp parport floppy serio_raw rtc_cmos rtc_core rtc_li=
b 8139too pcspkr 8139cp mii ata_piix libata sd_mod scsi_mod ext3 jbd eh=
ci_hcd ohci_hcd uhci_hcd [last unloaded: microcode]
> Pid: 3096, comm: switch.sh Not tainted 2.6.26-rc5-mm3 #1
> RIP: 0010:[<ffffffff8029bb85>]  [<ffffffff8029bb85>] migrate_pages+0x=
33e/0x49f
> RSP: 0018:ffff81002f463bb8  EFLAGS: 00010202
> RAX: 0000000000000000 RBX: ffffe20000c17500 RCX: 0000000000000034
> RDX: ffffe20000c17500 RSI: ffffe200010003c0 RDI: ffffe20000c17528
> RBP: ffffe200010003c0 R08: 8000000000000000 R09: 304605894800282f
> R10: 282f87058b480028 R11: 0028304005894800 R12: ffff81003f90a5d8
> R13: 0000000000000000 R14: ffffe20000bf4cc0 R15: ffff81002f463c88
> FS:  00007ff9386576f0(0000) GS:ffffffff8061d800(0000) knlGS:000000000=
0000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 000000008005003b
> CR2: 00007ff938669000 CR3: 000000002f458000 CR4: 00000000000006e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000ffff0ff0 DR7: 0000000000000400
> Process switch.sh (pid: 3096, threadinfo ffff81002f462000, task ffff8=
1003e99cf10)
> Stack:  0000000000000001 ffffffff80290777 0000000000000000 0000000000=
000000
>  ffff81002f463c88 ffff81000000ea18 ffff81002f463c88 000000000000000c
>  ffff81002f463ca8 00007ffffffff000 00007fff649f6000 0000000000000004
> Call Trace:
>  [<ffffffff80290777>] ? new_node_page+0x0/0x2f
>  [<ffffffff80291611>] ? do_migrate_pages+0x19b/0x1e7
>  [<ffffffff802315c7>] ? set_cpus_allowed_ptr+0xe6/0xf3
>  [<ffffffff8025c827>] ? cpuset_migrate_mm+0x58/0x8f
>  [<ffffffff8025d0fd>] ? cpuset_attach+0x8b/0x9e
>  [<ffffffff8025a3e1>] ? cgroup_attach_task+0x3a3/0x3f5
>  [<ffffffff80276cb5>] ? __alloc_pages_internal+0xe2/0x3d1
>  [<ffffffff8025af06>] ? cgroup_common_file_write+0x150/0x1dd
>  [<ffffffff8025aaf4>] ? cgroup_file_write+0x54/0x150
>  [<ffffffff8029f839>] ? vfs_write+0xad/0x136
>  [<ffffffff8029fd76>] ? sys_write+0x45/0x6e
>  [<ffffffff8020bef2>] ? tracesys+0xd5/0xda
>=20
>=20
> Code: 4c 48 8d 7b 28 e8 cc 87 09 00 48 83 7b 18 00 75 30 48 8b 03 48 =
89 da 25 00 40 00 00 48 85 c0 74 04 48 8b 53 10 83 7a 08 01 74 04 <0f> =
0b eb fe 48 89 df e8 5e 50 fd ff 48 89 df e8 7d d6 fd ff eb
> RIP  [<ffffffff8029bb85>] migrate_pages+0x33e/0x49f
>  RSP <ffff81002f463bb8>
> Clocksource tsc unstable (delta =3D 438246251 ns)
> ---[ end trace ce4e6053f7b9bba1 ]---
>=20
>=20
> This bug is caused by VM_BUG_ON() in unmap_and_move().
>=20
> unmap_and_move()
>     710         if (rc !=3D -EAGAIN) {
>     711                 /*
>     712                  * A page that has been migrated has all refe=
rences
>     713                  * removed and will be freed. A page that has=
 not been
>     714                  * migrated will have kepts its references an=
d be
>     715                  * restored.
>     716                  */
>     717                 list_del(&page->lru);
>     718                 if (!page->mapping) {
>     719                         VM_BUG_ON(page_count(page) !=3D 1);
>     720                         unlock_page(page);
>     721                         put_page(page);         /* just free =
the old page */
>     722                         goto end_migration;
>     723                 } else
>     724                         unlock =3D putback_lru_page(page);
>     725         }

I think that at least part of your patch, below, should fix this
problem.  See comments there.

Now I wonder if the assertion that newpage count =3D=3D 1 could be viol=
ated?
I don't see how.  We've just allocated and filled it and haven't
unlocked it yet, so we should hold the only reference.  Do you agree?
>=20
> I think the page count is not necessarily 1 here, because
> migration_entry_wait increases page count and waits for the
> page to be unlocked.
> So, if the old page is accessed between migrate_page_move_mapping,
> which checks the page count, and remove_migration_ptes, page count
> would not be 1 here.
>=20
> Actually, just commenting out get/put_page from migration_entry_wait
> works well in my environment(succeeded in hundreds times of page migr=
ation),
> but modifying migration_entry_wait this way is not good, I think.
>=20
>=20
> This patch depends on Lee Schermerhorn's fix for double unlock_page.
>=20
> This patch also fixes a race between migrate_entry_wait and
> page_freeze_refs in migrate_page_move_mapping.
>=20
>=20
> Signed-off-by: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
>=20
> ---
> diff -uprN linux-2.6.26-rc5-mm3/mm/migrate.c linux-2.6.26-rc5-mm3-tes=
t/mm/migrate.c
> --- linux-2.6.26-rc5-mm3/mm/migrate.c	2008-06-17 15:31:23.000000000 +=
0900
> +++ linux-2.6.26-rc5-mm3-test/mm/migrate.c	2008-06-17 13:59:15.000000=
000 +0900
> @@ -232,6 +232,7 @@ void migration_entry_wait(struct mm_stru
>  	swp_entry_t entry;
>  	struct page *page;
> =20
> +retry:
>  	ptep =3D pte_offset_map_lock(mm, pmd, address, &ptl);
>  	pte =3D *ptep;
>  	if (!is_swap_pte(pte))
> @@ -243,11 +244,20 @@ void migration_entry_wait(struct mm_stru
> =20
>  	page =3D migration_entry_to_page(entry);
> =20
> -	get_page(page);
> -	pte_unmap_unlock(ptep, ptl);
> -	wait_on_page_locked(page);
> -	put_page(page);
> -	return;
> +	/*
> +	 * page count might be set to zero by page_freeze_refs()
> +	 * in migrate_page_move_mapping().
> +	 */
> +	if (get_page_unless_zero(page)) {
> +		pte_unmap_unlock(ptep, ptl);
> +		wait_on_page_locked(page);
> +		put_page(page);
> +		return;
> +	} else {
> +		pte_unmap_unlock(ptep, ptl);
> +		goto retry;
> +	}
> +

I'm not sure about this part.  If it IS needed, I think it would be
needed independently of the unevictable/putback_lru_page() changes, as
this race must have already existed.

However, unmap_and_move() replaced the migration entries with bona fide
pte's referencing the new page before freeing the old page, so I think
we're OK without this change.

>  out:
>  	pte_unmap_unlock(ptep, ptl);
>  }
> @@ -715,13 +725,7 @@ unlock:
>   		 * restored.
>   		 */
>   		list_del(&page->lru);
> -		if (!page->mapping) {
> -			VM_BUG_ON(page_count(page) !=3D 1);
> -			unlock_page(page);
> -			put_page(page);		/* just free the old page */
> -			goto end_migration;
> -		} else
> -			unlock =3D putback_lru_page(page);
> +		unlock =3D putback_lru_page(page);
>  	}
> =20
>  	if (unlock)
=EF=BB=BF
I agree with this part.  I came to the same conclusion looking at the
code.  If we just changed the if() and VM_BUG_ON() to:

if (!page->mapping && page_count(page) =3D=3D 1) { ...

we'd be doing exactly what putback_lru_page() is doing.  So, this code
as always unnecessary, duplicate code [that I was trying to avoid :(].
So, just let putback_lru_page() handle this condition and conditionally
unlock_page().

I'm testing with my stress load with the 2nd part of the patch above an=
d
it's holding up OK.  Of course, I didn't hit the problem before.  I'll
try your duplicator script and see what happens.

Regards,
Lee

--
To unsubscribe from this list: send the line "unsubscribe kernel-tester=
s" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
