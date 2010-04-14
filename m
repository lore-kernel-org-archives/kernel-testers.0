From: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15704] [r8169] WARNING: at net/sched/sch_generic.c
Date: Wed, 14 Apr 2010 13:12:20 +0300
Message-ID: <20100414101220.GA3681@swordfish.minsk.epam.com>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera>
 <JVS2s9dmTsP.A.YhG.FtPvLB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=fq9WA+9udoBTVg7xvIunADMq+xjhusZVaUkRb87ejT8=;
        b=lBsXcADMTcvkkSRuaFw0lkEK9hAZVe1pfa9pnZVPMwYnCfn5PgJ1OA7jlYH7GTLBXN
         KIsJqldJXNcxXzenU9P+lH+Uno8qsq1XCph1+AyWnJMRa+ptaD6RTAyk2XtwSSfHHmQ+
         ej61LMFTCIOfGpIuVk24M0P4noXSD+pZSj2zo=
Content-Disposition: inline
In-Reply-To: <JVS2s9dmTsP.A.YhG.FtPvLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,
Sorry for the delay, I've been away.

On (04/07/10 23:13), Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary repo=
rt
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the trac=
king team
> know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15704
> Subject		: [r8169] WARNING: at net/sched/sch_generic.c
> Submitter	: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-03-31 10:21 (8 days old)
> Message-ID	: <20100331102142.GA3294-dY8u8AhHFaWtd10JCjopabkcH5ONE+aC@public.gmane.org>
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D127003090406108&w=3D2
>=20
>=20


Yes, bug is still here (though I'm not sure whether it's correct to test wi=
th frame size 2048).

Here it is:

kernel: [ 2292.172886] pktgen 2.72: Packet Generator for packet performance=
 testing.
kernel: [ 2339.999788] ------------[ cut here ]------------
kernel: [ 2339.999800] WARNING: at net/sched/sch_generic.c:256 dev_watchdog=
+0xc1/0x125()
kernel: [ 2339.999803] Hardware name: F3JC               =20
kernel: [ 2339.999806] NETDEV WATCHDOG: eth0 (r8169): transmit queue 0 time=
d out
kernel: [ 2339.999809] Modules linked in: pktgen ipv6 snd_hwdep snd_hda_cod=
ec_si3054 snd_hda_codec_realtek sdhci_pci sdhci asus_laptop sparse_keymap s=
nd_hda_intel mmc_core
led_class snd_hda_codec psmouse snd_pcm snd_timer snd soundcore snd_page_al=
loc i2c_i801 serio_raw sg evdev rng_core r8169 mii usbhid hid uhci_hcd ehci=
_hcd sr_mod cdrom sd_mod
usbcore ata_piix
kernel: [ 2339.999857] Pid: 3720, comm: kpktgend_0 Not tainted 2.6.34-rc3-d=
bg-r8169-git6 #81
kernel: [ 2339.999861] Call Trace:
kernel: [ 2339.999868]  [<c102e7f7>] warn_slowpath_common+0x65/0x7c
kernel: [ 2339.999874]  [<c126e4f8>] ? dev_watchdog+0xc1/0x125
kernel: [ 2339.999879]  [<c102e842>] warn_slowpath_fmt+0x24/0x27
kernel: [ 2339.999884]  [<c126e4f8>] dev_watchdog+0xc1/0x125
kernel: [ 2339.999891]  [<c1040039>] ? abort_exclusive_wait+0x26/0x63
kernel: [ 2339.999897]  [<c103712b>] ? run_timer_softirq+0x120/0x1eb
kernel: [ 2339.999902]  [<c1037181>] run_timer_softirq+0x176/0x1eb
kernel: [ 2339.999907]  [<c103712b>] ? run_timer_softirq+0x120/0x1eb
kernel: [ 2339.999913]  [<c126e437>] ? dev_watchdog+0x0/0x125
kernel: [ 2339.999919]  [<c10332a1>] __do_softirq+0x8d/0x117
kernel: [ 2339.999925]  [<c1033356>] do_softirq+0x2b/0x43
kernel: [ 2339.999929]  [<c103347b>] irq_exit+0x38/0x75
kernel: [ 2339.999936]  [<c1015200>] smp_apic_timer_interrupt+0x6d/0x7b
kernel: [ 2339.999943]  [<c12cbcda>] apic_timer_interrupt+0x36/0x3c
kernel: [ 2339.999948]  [<c104007b>] ? finish_wait+0x5/0x49
kernel: [ 2339.999953]  [<c10400d8>] ? prepare_to_wait_exclusive+0x19/0x5b
kernel: [ 2339.999959]  [<c105106d>] ? lock_release+0x19a/0x1a1
kernel: [ 2339.999965]  [<c12cb259>] _raw_spin_unlock+0x16/0x3f
kernel: [ 2339.999972]  [<f80ea460>] pktgen_thread_worker+0xe0/0x631 [pktge=
n]
kernel: [ 2339.999978]  [<c103ffad>] ? autoremove_wake_function+0x0/0x2f
kernel: [ 2339.999983]  [<c103ffad>] ? autoremove_wake_function+0x0/0x2f
kernel: [ 2339.999989]  [<f80ea380>] ? pktgen_thread_worker+0x0/0x631 [pktg=
en]
kernel: [ 2339.999994]  [<c103fc8a>] kthread+0x6a/0x6f
kernel: [ 2339.999999]  [<c103fc20>] ? kthread+0x0/0x6f
kernel: [ 2340.000005]  [<c1002e82>] kernel_thread_helper+0x6/0x1a
kernel: [ 2340.000008] ---[ end trace 25113681b662d02f ]---


	Sergey

--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iJwEAQECAAYFAkvFlQQACgkQfKHnntdSXjSVbAP+IDlOvrysGQUU6OORiCTSfnB6
+1PciaA3KTlvhTX2KccqEoq/JrMUxHReiy+rlImbL2eK0vVUUk0q1rYdMwWZZBdp
mFD/koFUsNmC72FiURrm7LC6cbVQYz2lyiZ9vGkWdWHyb77+KiydGAoI/IzRokYb
2AsssWh6fhxLuneaPQY=
=9Yfq
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--
