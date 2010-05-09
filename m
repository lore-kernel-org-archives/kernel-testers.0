From: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Sun, 9 May 2010 15:27:29 -0700 (PDT)
Message-ID: <alpine.DEB.2.01.1005091519130.3067@bogon.housecafe.de>
References: <10aqDnTJcLO.A.mLE.48y5LB@chimera> <HqroMXsT-CJ.A.DnG.m_y5LB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <HqroMXsT-CJ.A.DnG.m_y5LB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, schwab-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org, michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org

On Sun, 9 May 2010 at 23:17, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15589
> Subject		: 2.6.34-rc1: Badness at fs/proc/generic.c:316
> Submitter	: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
> Date		: 2010-03-13 23:53 (58 days old)
> Message-ID	: <<alpine.DEB.2.01.1003131544340.5493-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>>
> References	: http://marc.info/?l=linux-kernel&m=126852442903680&w=2

The bug is still present in -rc6, but Michael Ellerman has a patch[0] 
which made the warning go away.

@Michael: will you post your patch with a Sign-Off, so that it can be 
          pushed into mainline?

Thanks,
Christian.

[0] http://patchwork.ozlabs.org/patch/50557/

diff --git a/fs/proc/proc_devtree.c b/fs/proc/proc_devtree.c
index ce94801..019581d 100644
--- a/fs/proc/proc_devtree.c
+++ b/fs/proc/proc_devtree.c
@@ -176,6 +176,24 @@ retry:
 	return fixed_name;
 }
 
+static const char *unslash_name(const char *name)
+{
+	char *p, *fixed_name;
+
+	fixed_name = kstrdup(name, GFP_KERNEL);
+	if (!fixed_name) {
+		printk(KERN_ERR "device-tree: Out of memory trying to unslash "
+				"name \"%s\"\n", name);
+	return name;
+	}
+
+	p = fixed_name;
+	while ((p = strstr(p, "/")))
+		*p++ = '_';
+
+	return fixed_name;
+}
+
 /*
  * Process a node, adding entries for its children and its properties.
  */
@@ -212,6 +230,9 @@ void proc_device_tree_add_node(struct device_node *np,
 		if (duplicate_name(de, p))
 			p = fixup_name(np, de, p);
 
+		if (strstr(p, "/"))
+			p = unslash_name(p);
+
 		ent = __proc_device_tree_add_prop(de, pp, p);
 		if (ent == NULL)
 			break;
-- 
BOFH excuse #188:

..disk or the processor is on fire.
