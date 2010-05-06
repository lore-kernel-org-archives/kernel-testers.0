From: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15704] [r8169] WARNING: at net/sched/sch_generic.c
Date: Thu, 6 May 2010 16:31:02 +0300
Message-ID: <20100506133102.GA3331@swordfish>
References: <JzEGxUyyQHG.A.ZtH.YHJ4LB@chimera>
 <8VO9AsMlpMD.A.zHB.NJJ4LB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jI8keyz6grp/JLjh"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=Zhws5LlOCvvmNKi1QH72Sq7o44T/DVTsitvVy/ULLuU=;
        b=bb2Qbfj1oMfP7KyUST2RyKGJBKghbaEv5C0aAVdmqLWlVzkjxiLw05cJSLJRkn8hRJ
         afkDy2TRbHSlMvim3Zz/hz5i5rrGXddWPIWJP2FvaBfT5zY7zYSEaH1qBOTcMj9MNBo0
         CiN4lqqxEYhh0o8ovEAR3HTzXEYZGzfMbhALw=
Content-Disposition: inline
In-Reply-To: <8VO9AsMlpMD.A.zHB.NJJ4LB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


--jI8keyz6grp/JLjh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On (05/04/10 23:21), Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15704
> Subject		: [r8169] WARNING: at net/sched/sch_generic.c
> Submitter	: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-03-31 10:21 (35 days old)
> Message-ID	: <<20100331102142.GA3294-dY8u8AhHFaWtd10JCjopabkcH5ONE+aC@public.gmane.org>>
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D127003090406108&w=3D2
>=20
>=20

=2E34-rc6-git5

kernel: [ 1176.647885] pktgen 2.72: Packet Generator for packet performance=
 testing.
kernel: [ 1210.999903] ------------[ cut here ]------------
kernel: [ 1210.999914] WARNING: at net/sched/sch_generic.c:256 dev_watchdog=
+0xc1/0x129()
kernel: [ 1210.999918] Hardware name: F3JC               =20
kernel: [ 1210.999921] NETDEV WATCHDOG: eth0 (r8169): transmit queue 0 time=
d out
kernel: [ 1210.999924] Modules linked in: pktgen ppp_async crc_ccitt ipv6 p=
pp_generic slhc asus_laptop sparse_keymap snd_hwdep sdhci_pci sdhci snd_hda=
_codec_si3054 mmc_core led_class snd_hda_codec_realtek snd_hda_intel snd_hd=
a_codec
snd_pcm rng_core snd_timer snd_page_alloc psmouse snd evdev soundcore sg r8=
169 serio_raw mii i2c_i801 usbhid hid uhci_hcd sr_mod ehci_hcd cdrom usbcor=
e sd_mod ata_piix
kernel: [ 1210.999983] Pid: 3819, comm: kpktgend_0 Not tainted 2.6.34-rc6-d=
bg-git5 #109
kernel: [ 1210.999987] Call Trace:
kernel: [ 1210.999994]  [<c102e1c6>] warn_slowpath_common+0x65/0x7c
kernel: [ 1210.999999]  [<c12690a5>] ? dev_watchdog+0xc1/0x129
kernel: [ 1211.000005]  [<c102e211>] warn_slowpath_fmt+0x24/0x27
kernel: [ 1211.000010]  [<c12690a5>] dev_watchdog+0xc1/0x129
kernel: [ 1211.000017]  [<c1040039>] ? __kfifo_from_user_generic+0x18/0x5c
kernel: [ 1211.000024]  [<c1036af7>] ? run_timer_softirq+0x136/0x203
kernel: [ 1211.000029]  [<c1036b50>] run_timer_softirq+0x18f/0x203
kernel: [ 1211.000034]  [<c1036af7>] ? run_timer_softirq+0x136/0x203
kernel: [ 1211.000039]  [<c1268fe4>] ? dev_watchdog+0x0/0x129
kernel: [ 1211.000046]  [<c1032a86>] __do_softirq+0x88/0x10c
kernel: [ 1211.000051]  [<c1032b39>] do_softirq+0x2f/0x47
kernel: [ 1211.000059]  [<f80a3488>] ? pktgen_xmit+0xd3e/0xe0b [pktgen]
kernel: [ 1211.000064]  [<c1032d1c>] _local_bh_enable_ip+0x8b/0xb3
kernel: [ 1211.000070]  [<c1032d4c>] local_bh_enable_ip+0x8/0xa
kernel: [ 1211.000076]  [<c12c4858>] _raw_spin_unlock_bh+0x2f/0x32
kernel: [ 1211.000082]  [<f80a3488>] pktgen_xmit+0xd3e/0xe0b [pktgen]
kernel: [ 1211.000088]  [<c1044654>] ? sched_clock_cpu+0x121/0x131
kernel: [ 1211.000098]  [<fd1e75e9>] ? rtl8169_start_xmit+0x0/0x2f9 [r8169]
kernel: [ 1211.000104]  [<c1044691>] ? cpu_clock+0x2d/0x4e
kernel: [ 1211.000111]  [<c104d20f>] ? put_lock_stats+0xd/0x21
kernel: [ 1211.000116]  [<c104d2d8>] ? lock_release_holdtime+0xb5/0xba
kernel: [ 1211.000122]  [<f80a3793>] ? pktgen_thread_worker+0xd9/0x5e8 [pkt=
gen]
kernel: [ 1211.000129]  [<f80a382a>] pktgen_thread_worker+0x170/0x5e8 [pktg=
en]
kernel: [ 1211.000135]  [<c103fa5e>] ? autoremove_wake_function+0x0/0x2f
kernel: [ 1211.000141]  [<c103fa5e>] ? autoremove_wake_function+0x0/0x2f
kernel: [ 1211.000147]  [<f80a36ba>] ? pktgen_thread_worker+0x0/0x5e8 [pktg=
en]
kernel: [ 1211.000152]  [<c103f782>] kthread+0x6a/0x6f
kernel: [ 1211.000158]  [<c103f718>] ? kthread+0x0/0x6f
kernel: [ 1211.000163]  [<c1002dc2>] kernel_thread_helper+0x6/0x10
kernel: [ 1211.000167] ---[ end trace adf7c4da01cca262 ]---
kernel: [ 1211.013760] r8169 0000:02:00.0: eth0: link up


	Sergey

--jI8keyz6grp/JLjh
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iJwEAQECAAYFAkvixJYACgkQfKHnntdSXjRbvgQAuY6OpYbJqiYP4WUOXMszJbl0
CPB3JEMzBa6kgcYlRpv+8xS5GZDYUOqRDYALTOegcCin2zync0FM6yazvZ2sNZ9i
BD87CgKjzRQG9UcBEa/yVyKynW7TvcyTPAqe/6Du9TmvwXQ09tlAt6B+rfnnbMhL
Jqg6cZhQIKJ+72gm6nY=
=gPtv
-----END PGP SIGNATURE-----

--jI8keyz6grp/JLjh--
