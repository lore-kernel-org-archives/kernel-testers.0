From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [Bug #13833] Kernel Oops when trying to suspend with ubifs
	mounted on block2mtd mtd device
Date: Thu, 30 Jul 2009 11:08:27 +0200
Message-ID: <20090730090826.GF1364@ucw.cz>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.gfC.QHObKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <3zAHs5O6maO.A.gfC.QHObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>, David Woodhouse <David.Woodhouse-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Eric Miao <eric.y.miao-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Diedrich <ranma-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>, rpurdie-Fm38FmjxZ/leoWH0uzbU5w@public.gmane.org, lenz-hcNo3dDEHLuVc3sceRu5cw@public.gmane.org, Dirk-RZHw+W3AUBHbFfAX06+HdQ@public.gmane.org, arminlitzel-S0/GAf8tV78@public.gmane.org, Cyril Hrubis <metan-+ZI9xUNit7I@public.gmane.org>, thommycheck-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-arm-kernel <linux-arm-kernel-xIg/pKzrS19vn6HldHNs0ANdhmdF6hFW@public.gmane.org>, dbaryshkov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, omegamoon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, eric.miao-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org

Hi!

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).

I believe I'm experiencing duplicate of this on zaurus.

I'm using (attached patch) to work around.

Legally speaking:

Signed-off-by: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
									Pavel


diff -ur mtd.ofic/mtdcore.c mtd/mtdcore.c
--- mtd.ofic/mtdcore.c	2009-07-15 01:42:06.000000000 +0200
+++ mtd/mtdcore.c	2009-07-21 17:55:45.000000000 +0200
@@ -29,8 +29,8 @@
 static struct class mtd_class = {
 	.name = "mtd",
 	.owner = THIS_MODULE,
-	.suspend = mtd_cls_suspend,
-	.resume = mtd_cls_resume,
+	//	.suspend = mtd_cls_suspend,
+	//.resume = mtd_cls_resume,
 };
 
 /* These are exported solely for the purpose of mtd_blkdevs.c. You
Only in mtd: mtdcore.c~
Binary files mtd.ofic/mtdcore.o and mtd/mtdcore.o differ

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
