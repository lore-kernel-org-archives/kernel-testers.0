From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Resend] 3.2-rc6+: Reported regressions from 3.0 and 3.1
Date: Wed, 21 Dec 2011 00:54:46 +0100
Message-ID: <201112210054.46995.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org

[Evidently, vger has blocked the previous attempts to post this message
for some reason.  I wonder why?]

This message contains a list of some regressions from 3.0 and 3.1
for which there are no fixes in the mainline known to the tracking team=
=2E
If any of them have been fixed already, please let us know.

If you know of any other unresolved regressions from 3.0 and 3.1, pleas=
e let us
know either and we'll add them to the list.  Also, please let us know i=
f any of
the entries below are invalid.

The entries below are simplified and the statistics are not present due=
 to the
continuing Bugzilla outage.


Subject    : iwlagn is getting very shaky
Submitter  : Norbert Preining <preining-DX+603jRYB8@public.gmane.org>
Date       : 2011-10-19 6:01
Message-ID : 20111019060108.GA11588-DqSSrKF0TaySnEC3TeqHn5dqbFPxfnh/@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D131914553920614&w=3D=
2

Subject    : Regression: "irqpoll" hasn't been working for me since Mar=
ch 16 IRQ
Submitter  : Edward Donovan <edward.donovan-mb/Bq7DTvoSsTnJN9+BGXg@public.gmane.org>
Date       : 2011-10-19 22:09
Message-ID : CADdbW+HXdCPfJu2RTF6zz+ujCmiu_dmZwL2iScuF53p=3DAaZ1Uw@mail=
=2Egmail.com
References : http://marc.info/?l=3Dlinux-kernel&m=3D131914554220679&w=3D=
2

Subject    : 3.1+ iwlwifi lockup
Submitter  : Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date       : 2011-10-31 14:34
Message-ID : 20111031143408.GA17152-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132007169420160&w=3D=
2

Subject    : Linus GIT - INFO: possible circular locking dependency det=
ected
Submitter  : Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date       : 2011-11-03 15:57
Message-ID : CAHFgRy8S0xLfhZxTUOEH5A0PL_Fb79-0-gmbQ=3D9h2D-xMqt1hA@mail=
=2Egmail.com
References : http://marc.info/?l=3Dlinux-kernel&m=3D132033587908426&w=3D=
2

Subject    : DMA-API check_sync errors with 3.2
Submitter  : Josh Boyer <jwboyer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date       : 2011-11-08 17:31
Message-ID : 20111108173153.GE14216-8k7Gwy46GHkf7BdofF/totBPR1lH4CV8@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132077357608797&w=3D=
2

Subject    : 3.2-rc1 doesn't boot on dual socket opteron without swap
Submitter  : Niklas Schnelle <niklas-74wnUeZ+fLazQB+pC5nmwQ@public.gmane.org>
Date       : 2011-11-10 20:09
Message-ID : 1320955769.1718.8.camel@jupiter
References : http://marc.info/?l=3Dlinux-kernel&m=3D132095583501767&w=3D=
2

Subject    : Sparc-32 doesn't work in 3.1.
Submitter  : Rob Landley <rob-VoJi6FS/r0vR7s880joybQ@public.gmane.org>
Date       : 2011-11-12 11:22
Message-ID : 4EBEAB5A.5020809-VoJi6FS/r0vR7s880joybQ@public.gmane.org
References : http://www.spinics.net/lists/kernel/msg1260383.html

Subject    : WARNING: at fs/sysfs/sysfs.h:195 (during boot)
Submitter  : Markus Trippelsdorf <markus-xp2qqqlHh3xzoYq+O6RWwA@public.gmane.org>
Date       : 2011-11-13 19:24
Message-ID : 20111113192417.GA1659-tLCgZGx+iJ+kxVt8IV0GqQ@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132121231921932&w=3D=
2

Subject    : max PWM is zero
Submitter  : Marcos Paulo de Souza <marcos.mage-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date       : 2011-11-15 15:14
Message-ID : alpine.LNX.2.00.1111151301410.2693-4/PLUo9XfK9uYUHNOcvv8+TW4wlIGRCZ@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132137019330548&w=3D=
2

Subject    : Oops on suspend with libertas SDIO (Linux 3.2-rc2)
Submitter  : Sven Neumann <s.neumann-5g8ninUHluJWk0Htik3J/w@public.gmane.org>
Date       : 2011-11-17 15:36
Message-ID : 1321544210.31090.6.camel@sven
References : http://marc.info/?l=3Dlinux-kernel&m=3D132154527715807&w=3D=
2

Subject    : Impossible high cpu-time values for migration threads
Submitter  : Markus Trippelsdorf <markus-xp2qqqlHh3xzoYq+O6RWwA@public.gmane.org>
Date       : 2011-11-17 22:17
Message-ID : 20111117221731.GA9229-tLCgZGx+iJ+kxVt8IV0GqQ@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132156832124314&w=3D=
2

Subject    : WARNING: at mm/slub.c:3357, kernel BUG at mm/slub.c:3413
Submitter  : Markus Trippelsdorf <markus-xp2qqqlHh3xzoYq+O6RWwA@public.gmane.org>
Date       : 2011-11-18 7:25
Message-ID : 20111118072519.GA1615-tLCgZGx+iJ+kxVt8IV0GqQ@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132160119031794&w=3D=
2

Subject    : [REGRESSION] resume takes 10s longer due to e1b6eb3 (Bluet=
ooth: Increase HCI reset timeout ...)
Submitter  : Tom=C3=A1=C5=A1 Janou=C5=A1ek <tomi-YoqI/XImC7s@public.gmane.org>
Date       : 2011-11-18 18:40
Message-ID : 20111118184017.GA5052-YoqI/XImC7s@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132164169511416&w=3D=
2

Subject    : [REGRESSION] sudden cpu hogging in kernel 3.2 rc-series
Submitter  : "Nicolas Kalkhof" <nkalkhof-S0/GAf8tV78@public.gmane.org>
Date       : 2011-11-18 20:33
Message-ID : 506786689.810044.1321648395265.JavaMail.fmail@mwmweb010
References : http://marc.info/?l=3Dlinux-kernel&m=3D132164909313594&w=3D=
2

Subject    : Bisected regression: hang on i915 between 3.1.0-rc9 and 3.=
1.0
Submitter  : Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>
Date       : 2011-11-22 10:15
Message-ID : alpine.SOC.1.00.1111221207090.6490-ptEonEWSGqKptlylMvRsHA@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132195700023709&w=3D=
2

Subject    : 3.2-rc2 regression: floppy driver breaks boot
Submitter  : Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Date       : 2011-11-22 11:14
Message-ID : 20111122111405.GA28215-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132196052124801&w=3D=
2

Subject    : [regression 3.1.0 -> 3.20rc] USB Oops
Submitter  : Norbert Preining <preining-DX+603jRYB8@public.gmane.org>
Date       : 2011-11-22 12:52
Message-ID : 20111122125256.GB32440-DqSSrKF0TaySnEC3TeqHn5dqbFPxfnh/@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132196644726900&w=3D=
2

Subject    : Freezing of tasks failed after 20.01 seconds in kernel 3.2=
=2E0-rc2
Submitter  : Belisko Marek <marek.belisko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date       : 2011-11-22 21:20
Message-ID :=20
CAAfyv36nxYq1EA2pcHi5WR1BdWYHp2sQTY1mMA4Q3JjcOG5RDw-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132199691706100&w=3D=
2

Subject    : 3.2.0-rc2+git: possible recursive locking detected in proc=
ess=20
memory freeing
Submitter  : Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>
Date       : 2011-11-23 13:12
Message-ID : alpine.SOC.1.00.1111231311490.15939-ptEonEWSGqKptlylMvRsHA@public.gmane.org
References : http://lkml.org/lkml/2011/11/23/159

Subject    : i915: 3.2 rc1/2 KMS regression
Submitter  : Patrik Kullman <patrik.kullman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date       : 2011-11-23 23:43
Message-ID : CAGPN=3D9THOv-
M4Td4haE94uDcsAjW3eGMG7ioLeu+p8xUOBPd7w-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132209186403288&w=3D=
2

Subject    : 3.2-rc2: regression after hibernate: lots of warnings, bro=
ken=20
system
Submitter  : Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Date       : 2011-11-24 15:40
Message-ID : 20111124154014.GA2153-I/5MKhXcvmPrBKCeMvbIDA@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132214929818015&w=3D=
2

Subject    : [regression] WARNING: at drivers/block/floppy.c:2929=20
do_fd_request+0xb7/0xb9() in 3.2.0-rc2 and 3
Submitter  : Ralf Hildebrandt <Ralf.Hildebrandt-jq1tPX9l7E6ELgA04lAiVw@public.gmane.org>
Date       : 2011-11-25 10:34
Message-ID : 20111125103420.GO4581-jq1tPX9l7E6ELgA04lAiVw@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132221799501685&w=3D=
2

Subject    : [BUG] 3.2-rcX radeon KMS system freeze
Submitter  : Bob Tracy <rct-GsGdjl1a1FBK+8ot1e1MDQ@public.gmane.org>
Date       : 2011-11-25 20:33
Message-ID : 20111125203351.GA3651-GsGdjl1a1FBK+8ot1e1MDQ@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132225331312019&w=3D=
2

Subject    : 3.2-rc2 regression due to commit "USB: EHCI: fix HUB TT sc=
heduling=20
issue with iso transfer" 811c926c538f7e8d3c08b630dd5844efd7e000f6
Submitter  : Sander Eikelenboom <linux-6SM94LqRVpn6gRhOQ7JHfg@public.gmane.org>
Date       : 2011-11-26 15:47
Message-ID : 1001209018.20111126164712-6SM94LqRVpn6gRhOQ7JHfg@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132232295425393&w=3D=
2

Subject    : 3.2-rc3+: [drm:i915_hangcheck_elapsed] ERROR Hangcheck tim=
er=20
elapsed... GPU hung
Submitter  : Sergei Trofimovich <slyich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date       : 2011-12-02 17:56
Message-ID : 20111202205601.115522b1-rUBWEpAk+NE@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132284845705156&w=3D=
2

Subject    : [BUG] deadlock: jfs (3.2.0-rc4-00154-g8e8da02)
Submitter  : Nico Schottelius <nico-linux-20111201-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
Date       : 2011-12-06 10:05
Message-ID : 20111206100533.GB6161-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132317917827825&w=3D=
2

Subject    : [3.2-rc4] pcnet32: DMA-API: device driver tries to sync DM=
A=20
memory it has not allocated
Submitter  : Tetsuo Handa <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org>
Date       : 2011-12-09 3:40
Message-ID : 201112090340.pB93ek9i086855-etx+eQDEXHD7nzcFbJAaVXf5DAMn2ifp@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132340215706219&w=3D=
2

Subject    : Enabling FCoE point-to-point mode triggers a deadlock
Submitter  : Bart Van Assche <bvanassche-HInyCGIudOg@public.gmane.org>
Date       : 2011-12-09 14:33
References : http://permalink.gmane.org/gmane.linux.scsi.open-fcoe.deve=
l/11451

Subject    : iwlagn unusable in 3.2.0rc4
Submitter  : Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date       : 2011-12-09 19:42
Message-ID : 20111209194208.GA15236-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132345984724433&w=3D=
2

Subject    : DRM nouveau crash with 3.2.0-rc5
Submitter  : "Berck E. Nash" <flyboy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date       : 2011-12-10 5:10
Message-ID : 4EE2E9BB.8060801-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132349393700419&w=3D=
2

Subject    : Reiserfs.c bug in 3.2-rc5
Submitter  : "Jorge Bastos" <mysql.jorge-lcG7AWEBJY0VhHzd4jOs4w@public.gmane.org>
Date       : 2011-12-10 23:48
Message-ID : 43556.213.228.140.150.1323560920.squirrel-2RFepEojUI2VwbsBYQEljQ@public.gmane.org=
pt
References : http://marc.info/?l=3Dlinux-kernel&m=3D132356156914296&w=3D=
2

Subject    : [REGRESSION] 3.2.0-rc3 Bluetooth L2CAP Linux to Linux rfco=
mm=20
fails
Submitter  : David Fries <david-CAZ2Ig26prheoWH0uzbU5w@public.gmane.org>
Date       : 2011-12-11 5:16
Message-ID : 20111211051624.GA12050-6Mk49KDF3Zwuqz//ww0BS9HuzzzSOjJt@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132358071417198&w=3D=
2

Subject    : recent regression: after resume the mouse and X is extreme=
ly slow
Submitter  : Norbert Preining <preining-DX+603jRYB8@public.gmane.org>
Date       : 2011-12-11 22:13
Message-ID : 20111211221303.GA8710-DqSSrKF0TaySnEC3TeqHn5dqbFPxfnh/@public.gmane.org
References : http://marc.info/?l=3Dlinux-kernel&m=3D132364169929740&w=3D=
2


Thanks!
