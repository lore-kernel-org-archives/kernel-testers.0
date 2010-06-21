From: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15704] [r8169] WARNING: at net/sched/sch_generic.c
Date: Mon, 21 Jun 2010 13:59:34 +0300
Message-ID: <20100621105934.GB4010@swordfish.minsk.epam.com>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
 <rHrHQMIU4rI.A.edC.tdpHMB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EuxKj2iCbKjpUGkD"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=5A8fIW0V+r1NZFOC3rjaMx5Iwgomls09W1knaVtYjOI=;
        b=XIj6HmkDGDrUOXwoJ79pXholEkqi57o3pbq9SZFUrKFe7sxanTaLCMIqTcpkFN2haG
         +ANLmVv2U0blphtN0g4D8u20UmBDJqCTIjMQdVGGFeQrt1oN+aKEXFlYvn8qMLMz6CHo
         jM3cwa2pvSy1juHgKqUVCaBhmy53OVUzZuxMA=
Content-Disposition: inline
In-Reply-To: <rHrHQMIU4rI.A.edC.tdpHMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


--EuxKj2iCbKjpUGkD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On (06/21/10 00:34), Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15704
> Subject		: [r8169] WARNING: at net/sched/sch_generic.c
> Submitter	: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-03-31 10:21 (82 days old)
> Message-ID	: <20100331102142.GA3294-dY8u8AhHFaWtd10JCjopabkcH5ONE+aC@public.gmane.org>
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D127003090406108&w=3D2
>=20
>=20

Hello,

[10117.304064] pktgen 2.73: Packet Generator for packet performance testing.
[10153.013177] ------------[ cut here ]------------
[10153.013189] WARNING: at net/sched/sch_generic.c:258 dev_watchdog+0xc1/0x=
129()
[10153.013193] Hardware name: F3JC               =20
[10153.013197] NETDEV WATCHDOG: eth0 (r8169): transmit queue 0 timed out
[10153.013200] Modules linked in: pktgen fuse usb_storage ipv6 snd_seq_dumm=
y snd_seq_oss snd_seq_midi_event snd_seq snd_seq_device snd_hwdep snd_pcm_o=
ss asus_laptop sparse_keymap sdhci_pci sdhci snd_mixer_oss mmc_core led_cla=
ss
snd_hda_codec_si3054 snd_hda_codec_realtek snd_hda_intel psmouse snd_hda_co=
dec snd_pcm sg snd_timer rng_core i2c_i801 evdev serio_raw snd_page_alloc s=
nd soundcore r8169 mii usbhid hid uhci_hcd ehci_hcd sr_mod usbcore cdrom sd=
_mod ata_piix
[10153.013267] Pid: 0, comm: swapper Not tainted 2.6.35-rc3-dbg-00106-ga75e=
02b-dirty #57
[10153.013271] Call Trace:
[10153.013279]  [<c102e3ba>] warn_slowpath_common+0x65/0x7a
[10153.013284]  [<c12694af>] ? dev_watchdog+0xc1/0x129
[10153.013290]  [<c102e433>] warn_slowpath_fmt+0x26/0x2a
[10153.013295]  [<c12694af>] dev_watchdog+0xc1/0x129
[10153.013302]  [<c10370fb>] ? run_timer_softirq+0x136/0x22b
[10153.013307]  [<c1037154>] run_timer_softirq+0x18f/0x22b
[10153.013312]  [<c10370fb>] ? run_timer_softirq+0x136/0x22b
[10153.013318]  [<c12693ee>] ? dev_watchdog+0x0/0x129
[10153.013324]  [<c1032c7d>] __do_softirq+0x88/0x10c
[10153.013330]  [<c1032d30>] do_softirq+0x2f/0x47
[10153.013335]  [<c1032fed>] irq_exit+0x38/0x75
[10153.013340]  [<c10159a8>] smp_apic_timer_interrupt+0x5f/0x6d
[10153.013347]  [<c12c7192>] apic_timer_interrupt+0x36/0x3c
[10153.013354]  [<c104007b>] ? __init_waitqueue_head+0x24/0x3d
[10153.013360]  [<c11dd662>] ? acpi_idle_enter_simple+0x117/0x14b
[10153.013367]  [<c124691d>] cpuidle_idle_call+0x6a/0xa0
[10153.013372]  [<c100170d>] cpu_idle+0x89/0xbe
[10153.013379]  [<c12c1ce3>] start_secondary+0x1f4/0x1fb
[10153.013384] ---[ end trace 3fa0d4e1d1133bed ]---
[10153.027032] r8169 0000:02:00.0: eth0: link up
[10165.025777] r8169 0000:02:00.0: eth0: link up


	Sergey

--EuxKj2iCbKjpUGkD
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iJwEAQECAAYFAkwfRhYACgkQfKHnntdSXjQIPgQAwkdTURZPN/wmgbi6DThkXD5p
YRoY7goYDHXMy0+oeGxPv/0d9wH7ecTfNGD40LsdqbduA2VWl/Aj8KJiwz5YHqLr
+pKL1BwvPfokASOsXGEHodOkrK9Hlp4sJc5ValPM7LZyBSOYxKfkv9UDOQ7SYcu5
Wylu/+ZOdNLTvXRSVok=
=8+VA
-----END PGP SIGNATURE-----

--EuxKj2iCbKjpUGkD--
