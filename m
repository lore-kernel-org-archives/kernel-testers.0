From: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Tue, 20 Apr 2010 22:18:18 +1000
Message-ID: <1271765898.4324.2.camel@concordia>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vUB.fSSzLB@tosh>
	 <alpine.DEB.2.01.1004192339190.13016@bogon.housecafe.de>
Reply-To: michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.01.1004192339190.13016-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, schwab-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, 2010-04-19 at 23:45 -0700, Christian Kujau wrote:
> On Tue, 20 Apr 2010 at 05:19, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15589
> > Subject		: 2.6.34-rc1: Badness at fs/proc/generic.c:316
> > Submitter	: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
> > Date		: 2010-03-13 23:53 (38 days old)
> > Message-ID	: <alpine.DEB.2.01.1003131544340.5493-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=126852442903680&w=2
> 
> Yes, unless something in this area has changed from -rc4 to -rc5, this is 
> still printed during boot:
> 
> 
> device-tree: Duplicate name in /cpus/PowerPC,G4@0, renamed to "l2-cache#1"
> name 'pulses/rev'
> ------------[ cut here ]------------

Don't cut here, sigh.

> Badness at fs/proc/generic.c:317

Try this 100% unbuilt, 100% untested patch.

cheers


diff --git a/fs/proc/proc_devtree.c b/fs/proc/proc_devtree.c
index f8650dc..9502b48 100644
--- a/fs/proc/proc_devtree.c
+++ b/fs/proc/proc_devtree.c
@@ -175,6 +175,24 @@ retry:
        return fixed_name;
 }
 
+static const char *unslash_name(const char *name)
+{
+       char *p, *fixed_name;
+
+       fixed_name = kstrdup(name);
+       if (!fixed_name) {
+               printk(KERN_ERR "device-tree: Out of memory trying to unslash "
+                               "name \"%s\"\n", name);
+               return name;
+       }
+
+       p = fixed_name;
+       while ((p = strstr(p, "/")))
+               *p++ = '_';
+
+       return fixed_name;
+}
+
 /*
  * Process a node, adding entries for its children and its properties.
  */
@@ -211,6 +229,9 @@ void proc_device_tree_add_node(struct device_node *np,
                if (duplicate_name(de, p))
                        p = fixup_name(np, de, p);
 
+               if (strstr(p, "/"))
+                       p = unslash_name(p);
+
                ent = __proc_device_tree_add_prop(de, pp, p);
                if (ent == NULL)
                        break;

