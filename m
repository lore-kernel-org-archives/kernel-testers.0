From: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Tue, 20 Apr 2010 11:15:05 -0700 (PDT)
Message-ID: <alpine.DEB.2.01.1004201104170.13016@bogon.housecafe.de>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vUB.fSSzLB@tosh>  <alpine.DEB.2.01.1004192339190.13016@bogon.housecafe.de> <1271765898.4324.2.camel@concordia>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1271765898.4324.2.camel@concordia>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="utf-8"
To: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, schwab-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tue, 20 Apr 2010 at 22:18, Michael Ellerman wrote:
> Try this 100% unbuilt, 100% untested patch.

I added GFP_KERNEL to kstrdup to make the compile error go away:

fs/proc/proc_devtree.c: In function =E2=80=98unslash_name=E2=80=99:
fs/proc/proc_devtree.c:183: error: too few arguments to function =E2=80=
=98kstrdup=E2=80=99
make[2]: *** [fs/proc/proc_devtree.o] Error 1
make[1]: *** [fs/proc] Error 2
make: *** [fs] Error 2

And now 2.6.34-rc5 compiles and boots without the warning. Thanks!=20
New dmesg and /proc/device-tree on:

  http://nerdbynature.de/bits/2.6.34-rc1/xlate_proc_name/

Alexey mentioned that this is "wasteful" - does it make the kernel slow=
er?=20
I have not done any performance tests, but I'd rather stick with the=20
warning than make this Powerbook G4 any more slower :-\


Thanks again,
Christian.

diff --git a/fs/proc/proc_devtree.c b/fs/proc/proc_devtree.c
index ce94801..019581d 100644
--- a/fs/proc/proc_devtree.c
+++ b/fs/proc/proc_devtree.c
@@ -176,6 +176,24 @@ retry:
 	return fixed_name;
 }
=20
+static const char *unslash_name(const char *name)
+{
+	char *p, *fixed_name;
+
+	fixed_name =3D kstrdup(name, GFP_KERNEL);
+	if (!fixed_name) {
+		printk(KERN_ERR "device-tree: Out of memory trying to unslash "
+				"name \"%s\"\n", name);
+	return name;
+	}
+
+	p =3D fixed_name;
+	while ((p =3D strstr(p, "/")))
+		*p++ =3D '_';
+
+	return fixed_name;
+}
+
 /*
  * Process a node, adding entries for its children and its properties.
  */
@@ -212,6 +230,9 @@ void proc_device_tree_add_node(struct device_node *=
np,
 		if (duplicate_name(de, p))
 			p =3D fixup_name(np, de, p);
=20
+		if (strstr(p, "/"))
+			p =3D unslash_name(p);
+
 		ent =3D __proc_device_tree_add_prop(de, pp, p);
 		if (ent =3D=3D NULL)
 			break;
--=20
BOFH excuse #369:

Virus transmitted from computer to sysadmins.
