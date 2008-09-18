From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release
	from	2.6.22 -&gt; 2.6.28
Date: Thu, 18 Sep 2008 09:12:50 +0200
Message-ID: <1221721970.5003.9.camel@marge.simson.net>
References: <1221306287.5213.111.camel@marge.simson.net>
	 <48CD1D25.9080301@linux-foundation.org>
	 <1221421907.4597.24.camel@marge.simson.net>
	 <1221475440.4784.39.camel@marge.simson.net>
	 <1221568105.5020.17.camel@marge.simson.net>
	 <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi>
	 <1221626391.5043.13.camel@marge.simson.net>
	 <1221627676.5125.3.camel@marge.simson.net> <20080917104044.GC18764@elte.hu>
	 <1221651701.5102.17.camel@marge.simson.net> <20080917124943.GA7738@elte.hu>
	 <1221657111.5511.14.camel@marge.simson.net>
	 <Pine.LNX.4.64.0809171629550.1034@wrl-59.cs.helsinki.fi>
	 <1221659858.8818.13.camel@marge.simson.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1221659858.8818.13.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Ilpo =?ISO-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, 2008-09-17 at 15:57 +0200, Mike Galbraith wrote:
> On Wed, 2008-09-17 at 16:36 +0300, Ilpo J=C3=A4rvinen wrote:
> > On Wed, 17 Sep 2008, Mike Galbraith wrote:
> >=20
> > > On Wed, 2008-09-17 at 14:49 +0200, Ingo Molnar wrote:
> > >=20
> > > > git log --pretty=3Dformat:"%h: %s" 2069f45..847106f | grep -viE=
 \
> > > > 'block|alsa|pcmcia|sound|Merge|iosched|blk|DAC960|scsi|s390|par=
ide|pktcdvd|filter|cdrom|drm'
> > > >=20
> > > > gives us:
> > > >=20
> > > >  7daf705: Start using the new '%pS' infrastructure to print sym=
bols
> > > >  6f0f0fd: security: remove register_security hook
> > > >  93cbace: security: remove dummy module fix
> > > >  5915eb5: security: remove dummy module
> > > >  b478a9f: security: remove unused sb_get_mnt_opts hook
> > > >  32502b8: splice: fix generic_file_splice_read() race with page=
 invalidation
> > > >  8b3d356: ramfs: enable splice write
> > > >  a144ff0: xen: Avoid allocations causing swap activity on the r=
esume path
> > > >=20
> > > > which really only leaves that security commit your bisection fi=
ngered.=20
> > > > Which _slightly_ raises its likelyhood of being implicated. Str=
ucture=20
> > > > size changes can move two formerly far-apart netperf-relevant s=
ymbols on=20
> > > > the same cacheline, which can start cache ping-pong-ing badly.
> > >=20
> > > I sure hope it's something like ping-pong, it's driving me NUTS.
> >=20
> > How about dividing the problem to smaller blocks then by restoring=20
> > parts of the change...
>=20
> Well, what I've done is check out the "bad" tree, reverted every darn
> commit between there and the "good" tree, and then reverted the rever=
ts
> so I have a nice merge-free line and don't have to remember to think
> backward.  (probably sounds silly to git-foo masters)  I'll try
> bisecting that in the a.m. and see what happens.

It bisected to 1c9ce52.  Reverting that in 27.git had the expected
result, nada.  Full bisection/test log below - you can jump straight to
post run sanity checks.  I'm torn between building a straight line tree
from v2.6.26 through git.today and bisecting that sucker, or exorcising
netperf from my box and swearing a sacred oath to never download the
damned thing again.  Nuking netperf is most attractive option.

1e65e841bb5584136ed6047c55cf77532afbbb55 is first bad commit
commit 1e65e841bb5584136ed6047c55cf77532afbbb55
Author: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Date:   Wed Sep 17 14:55:50 2008 +0200

    Revert "Revert "block: export "ro" attribute""

    This reverts commit 2c8803af5c1bf41200167f29349f7f1396683a51.

:040000 040000 08ca8ba7ff3f9506a5462b4122256356cae28ceb bef679485bc924a=
d1dc867858ebda1b68196b5a8 M      block


git bisect start
# good: [7804ad865f7d0cd9bdc51da601772ce4d2e252ca] Revert "[ALSA] soc -=
 tlv320aic3x - revisit clock setup"
git bisect good 7804ad865f7d0cd9bdc51da601772ce4d2e252ca
# bad: [2846693a63a34ac6d582dd55a7e00605b49b1cec] Revert "Revert "[S390=
] sclp_tty: Fix scheduling while atomic bug.""
git bisect bad 2846693a63a34ac6d582dd55a7e00605b49b1cec
# bad: [70477f86f63640be2dd1d8968aeb47870a5c21c6] Revert "Revert "xen/b=
lkfront: Make sure we don't use bounce buffers, we don't need them.""
git bisect bad 70477f86f63640be2dd1d8968aeb47870a5c21c6
# good: [7c6ccb520424939deff0a50f3fae621c6477dbbe] Revert "Revert "ALSA=
: hda - Add bdl_pos_adj option""
git bisect good 7c6ccb520424939deff0a50f3fae621c6477dbbe
# good: [66036beae94f043f99044e285935486126a9c4bd] Revert "Revert "pcmc=
ia: fix Alchemy warnings""
git bisect good 66036beae94f043f99044e285935486126a9c4bd
# good: [6b7b5ef18871c8f7c15eedc6eb53270eaf8bc613] Revert "Revert "ALSA=
: hda - Added SSID for 'Fujitsu Siemens Amilo M1451G' laptop""
git bisect good 6b7b5ef18871c8f7c15eedc6eb53270eaf8bc613
# good: [024905ea4b2d1ab5d6b845ba84ddfc0857fb2d2a] Revert "Revert "ALSA=
: hda - Add MacBook 3.1 support""
git bisect good 024905ea4b2d1ab5d6b845ba84ddfc0857fb2d2a
# good: [4bbe3501e06eddaa4900894efa519f1167cb8624] Revert "Revert "as-i=
osched: properly protect ioc_gone and ioc count""
git bisect good 4bbe3501e06eddaa4900894efa519f1167cb8624
# good: [e124683c1cd5c73c494f9ea6cee8a71e68bb70ca] Revert "Revert "Adde=
d in user-injected messages into blk traces""
git bisect good e124683c1cd5c73c494f9ea6cee8a71e68bb70ca
# bad: [f148fae0bc009aa23122c5762368a1a16bb55b86] Revert "Revert "block=
: kill request_queue_t""
git bisect bad f148fae0bc009aa23122c5762368a1a16bb55b86
# bad: [1e65e841bb5584136ed6047c55cf77532afbbb55] Revert "Revert "block=
: export "ro" attribute""
git bisect bad 1e65e841bb5584136ed6047c55cf77532afbbb55


v2.6.26-974-g2846693 (847106f)
16384  87380  1        1       60.00    94350.45
16384  87380  1        1       60.01    95857.25
16384  87380  1        1       60.00    95334.84
16384  87380  1        1       60.00    95052.11

v2.6.26-659-g7804ad8 (2069f45)
16384  87380  1        1       60.00    98630.64
16384  87380  1        1       60.00    98653.14
16384  87380  1        1       60.00    99162.65
16384  87380  1        1       60.00    98652.38

v2.6.26-816-g70477f8 (call it bad)
16384  87380  1        1       60.00    95532.19
16384  87380  1        1       60.01    96211.39
16384  87380  1        1       60.01    96246.73
16384  87380  1        1       60.01    96286.40

v2.6.26-737-g7c6ccb5
16384  87380  1        1       60.00    98478.00
16384  87380  1        1       60.00    99221.33
16384  87380  1        1       60.00    98930.70
16384  87380  1        1       60.00    98958.73

v2.6.26-776-g66036be
16384  87380  1        1       60.00    97958.10
16384  87380  1        1       60.01    98683.80
16384  87380  1        1       60.01    98515.34
16384  87380  1        1       60.00    98396.11

v2.6.26-796-g6b7b5ef
16384  87380  1        1       60.00    99047.21
16384  87380  1        1       60.00    98095.23
16384  87380  1        1       60.00    99811.18
16384  87380  1        1       60.00    98651.32

v2.6.26-806-g024905e
16384  87380  1        1       60.00    98823.46
16384  87380  1        1       60.00    98959.11
16384  87380  1        1       60.00    98709.95
16384  87380  1        1       60.00    99042.13

v2.6.26-811-g4bbe350
16384  87380  1        1       60.00    98144.99
16384  87380  1        1       60.01    99023.30
16384  87380  1        1       60.01    98685.45
16384  87380  1        1       60.01    98606.18

v2.6.26-813-ge124683
16384  87380  1        1       60.00    98458.18
16384  87380  1        1       60.00    98163.92
16384  87380  1        1       60.00    98115.62
16384  87380  1        1       60.00    98633.62

v2.6.26-815-gf148fae
16384  87380  1        1       60.00    95649.91
16384  87380  1        1       60.00    96292.34
16384  87380  1        1       60.00    96043.82
16384  87380  1        1       60.00    96093.81

v2.6.26-814-g1e65e84
16384  87380  1        1       60.00    94906.81
16384  87380  1        1       60.00    95445.05
16384  87380  1        1       60.01    94698.68
16384  87380  1        1       60.00    94938.65

Post bisection checkouts
------------------------------------------------
v2.6.26-rc8-208-g02c6230
16384  87380  1        1       60.00    98392.94
16384  87380  1        1       60.00    98199.96
16384  87380  1        1       60.00    98534.27
16384  87380  1        1       60.00    98501.02

v2.6.26-rc8-209-g1c9ce52
16384  87380  1        1       60.00    97583.88
16384  87380  1        1       60.00    97326.23
16384  87380  1        1       60.00    97582.80
16384  87380  1        1       60.00    97568.63

v2.6.26-814-g1e65e84
16384  87380  1        1       60.00    94856.33
16384  87380  1        1       60.00    94594.03
16384  87380  1        1       60.00    94751.74
16384  87380  1        1       60.01    96825.28

v2.6.26-813-ge124683
16384  87380  1        1       60.00    97550.64
16384  87380  1        1       60.00    98024.28
16384  87380  1        1       60.00    98486.85
16384  87380  1        1       60.00    98493.41


marge:..git/linux-2.6 # git rev-list v2.6.26-813-ge124683..v2.6.26-814-=
g1e65e84
1e65e841bb5584136ed6047c55cf77532afbbb55
marge:..git/linux-2.6 # git show 1e65e841bb5584136ed6047c55cf77532afbbb=
55

commit 1e65e841bb5584136ed6047c55cf77532afbbb55
Author: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Date:   Wed Sep 17 14:55:50 2008 +0200

    Revert "Revert "block: export "ro" attribute""
   =20
    This reverts commit 2c8803af5c1bf41200167f29349f7f1396683a51.

diff --git a/block/genhd.c b/block/genhd.c
index b922d48..43e468e 100644
--- a/block/genhd.c
+++ b/block/genhd.c
@@ -400,6 +400,14 @@ static ssize_t disk_removable_show(struct device *=
dev,
 		       (disk->flags & GENHD_FL_REMOVABLE ? 1 : 0));
 }
=20
+static ssize_t disk_ro_show(struct device *dev,
+				   struct device_attribute *attr, char *buf)
+{
+	struct gendisk *disk =3D dev_to_disk(dev);
+
+	return sprintf(buf, "%d\n", disk->policy ? 1 : 0);
+}
+
 static ssize_t disk_size_show(struct device *dev,
 			      struct device_attribute *attr, char *buf)
 {
@@ -472,6 +480,7 @@ static ssize_t disk_fail_store(struct device *dev,
=20
 static DEVICE_ATTR(range, S_IRUGO, disk_range_show, NULL);
 static DEVICE_ATTR(removable, S_IRUGO, disk_removable_show, NULL);
+static DEVICE_ATTR(ro, S_IRUGO, disk_ro_show, NULL);
 static DEVICE_ATTR(size, S_IRUGO, disk_size_show, NULL);
 static DEVICE_ATTR(capability, S_IRUGO, disk_capability_show, NULL);
 static DEVICE_ATTR(stat, S_IRUGO, disk_stat_show, NULL);
@@ -483,6 +492,7 @@ static struct device_attribute dev_attr_fail =3D
 static struct attribute *disk_attrs[] =3D {
 	&dev_attr_range.attr,
 	&dev_attr_removable.attr,
+	&dev_attr_ro.attr,
 	&dev_attr_size.attr,
 	&dev_attr_capability.attr,
 	&dev_attr_stat.attr,

