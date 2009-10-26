From: Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14378] Problems with net/core/skbuff.c
Date: Mon, 26 Oct 2009 20:50:28 +0100
Message-ID: <4AE5FD84.8070906@gmail.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.B9G.nre5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6dRYo8ss7vL.A.B9G.nre5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Massimo Cetra <mcetra-BBpJ+9iBSNKonA0d6jMUrA@public.gmane.org>

Rafael J. Wysocki a =C3=A9crit :
> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me k=
now
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14378
> Subject		: Problems with net/core/skbuff.c
> Submitter	: Massimo Cetra <mcetra-BBpJ+9iBSNKonA0d6jMUrA@public.gmane.org>
> Date		: 2009-10-08 14:51 (19 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D125501488220358&w=
=3D4
>=20
>=20

This was corrected by commit ed79bab847d8e5a2986d8ff43c49c6fb8ee3265f

virtio_net: use dev_kfree_skb_any() in free_old_xmit_skbs()

Because netpoll can call netdevice start_xmit() method with
irqs disabled, drivers should not call kfree_skb() from
their start_xmit(), but use dev_kfree_skb_any() instead.

Oct  8 11:16:52 172.30.1.31 [113074.791813] ------------[ cut here ]---=
---------
Oct  8 11:16:52 172.30.1.31 [113074.791813] WARNING: at net/core/skbuff=
=2Ec:398 \
                skb_release_head_state+0x64/0xc8()
Oct  8 11:16:52 172.30.1.31 [113074.791813] Hardware name:
Oct  8 11:16:52 172.30.1.31 [113074.791813] Modules linked in: netconso=
le ocfs2 jbd2 quota_tree \
ocfs2_dlmfs ocfs2_stack_o2cb ocfs2_dlm ocfs2_nodemanager ocfs2_stackglu=
e configfs crc32c drbd cn loop \
serio_raw psmouse snd_pcm snd_timer snd soundcore snd_page_alloc virtio=
_net pcspkr parport_pc parport \
i2c_piix4 i2c_core button processor evdev ext3 jbd mbcache dm_mirror dm=
_region_hash dm_log dm_snapshot \
dm_mod ide_cd_mod cdrom ata_generic ata_piix virtio_blk libata scsi_mod=
 piix ide_pci_generic ide_core \
                virtio_pci virtio_ring virtio floppy thermal fan therma=
l_sys [last unloaded: netconsole]
Oct  8 11:16:52 172.30.1.31 [113074.791813] Pid: 11132, comm: php5-cgi =
Tainted: G        W  \
                2.6.31.2-vserver #1
Oct  8 11:16:52 172.30.1.31 [113074.791813] Call Trace:
Oct  8 11:16:52 172.30.1.31 [113074.791813] <IRQ>  [<ffffffff81253cd5>]=
 ? \
                skb_release_head_state+0x64/0xc8
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81253cd5>] ? skb_=
release_head_state+0x64/0xc8
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81049ae1>] ? warn=
_slowpath_common+0x77/0xa3
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81253cd5>] ? skb_=
release_head_state+0x64/0xc8
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81253a1a>] ? __kf=
ree_skb+0x9/0x7d
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffffa01cb139>] ? free=
_old_xmit_skbs+0x51/0x6e \
                [virtio_net]
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffffa01cbc85>] ? star=
t_xmit+0x26/0xf2 [virtio_net]
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff8126934f>] ? netp=
oll_send_skb+0xd2/0x205
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffffa0429216>] ? writ=
e_msg+0x90/0xeb [netconsole]
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81049f06>] ? __ca=
ll_console_drivers+0x5e/0x6f
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff8102b49d>] ? kvm_=
clock_read+0x4d/0x52
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff8104a082>] ? rele=
ase_console_sem+0x115/0x1ba
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff8104a632>] ? vpri=
ntk+0x2f2/0x34b
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff8106b142>] ? vx_u=
pdate_load+0x18/0x13e
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81308309>] ? prin=
tk+0x4e/0x5d
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff8102b49d>] ? kvm_=
clock_read+0x4d/0x52
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81070b62>] ? getn=
stimeofday+0x55/0xaf
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81062683>] ? ktim=
e_get_ts+0x21/0x49
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff810626b7>] ? ktim=
e_get+0xc/0x41
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81062788>] ? hrti=
mer_interrupt+0x9c/0x146
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81024a4b>] ? smp_=
apic_timer_interrupt+0x80/0x93
Oct  8 11:16:52 172.30.1.31 [113074.791813] [<ffffffff81011663>] ? apic=
_timer_interrupt+0x13/0x20
Oct  8 11:16:52 172.30.1.31 [113074.791813] <EOI>  [<ffffffff8130a9eb>]=
 ? _spin_unlock_irq+0xd/0x31

Reported-and-tested-by: Massimo Cetra <mcetra-BBpJ+9iBSNKonA0d6jMUrA@public.gmane.org>
Signed-off-by: Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Bug-Entry: http://bugzilla.kernel.org/show_bug.cgi?id=3D14378
Signed-off-by: David S. Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
