From: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Subject: [regression][x86_64] 2.6.26-02962-g4515889, kernel panic on boot.
Date: Thu, 17 Jul 2008 12:38:09 +0200
Message-ID: <1216291089.6158.13.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Because of some other bugs, still can't really bisect it. So i need your
help.

with latest kernel i will get:
[    5.904697] EXT3-fs: mounted filesystem with ordered data mode.
[    5.904749] VFS: Mounted root (ext3 filesystem) readonly.
[    5.904807] Freeing unused kernel memory: 312k freed
[    5.904983] Write protecting the kernel read-only data: 3968k
[    5.987836] Kernel panic - not syncing: No init found.  Try passing
init= option to kernel.

same configuration as other kernels... bug history looks like this:
latest bad git 2.6.26-03414-g33af79d

a lot of can't compile -> may be this bug was introduced here

1.last good 3de352bbd86f890dd0c5e1c09a6a1b0b29e0f8ce

2.b4df32f4aeef8794d0135fc8dc250acb44cfee60 -> can't boot, kernel panic
on the realy begin -> is this bug began here ?

3.22cac1670786108ccd4caa0656c39fa4ba69fa7d -> can't boot without panic
-> or the beginig of this bug here :

[    6.371469] kjournald starting.  Commit interval 5 seconds
[    6.380455] EXT3-fs: mounted filesystem with ordered data mode.
[    6.380455] VFS: Mounted root (ext3 filesystem) readonly.
[    6.380455] debug: unmapping init memory
ffffffff806be000..ffffffff80767000
[   30.573683] CPA self-test:
[   30.573902]  4k 4496 large 1011 gb 0 x
1534[ffff880000000000-ffff88003fe00000] miss 0
[   30.586086]  4k 178576 large 671 gb 0 x
91470[ffff880000000000-ffff88003ffff000] miss 0
[   30.595042]  4k 178576 large 671 gb 0 x
91470[ffff880000000000-ffff88003ffff000] miss 0
[   30.595108] ok.
here will just freeze.
