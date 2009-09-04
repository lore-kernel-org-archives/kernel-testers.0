From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Fri, 4 Sep 2009 09:11:58 -1000 (HST)
Message-ID: <alpine.LFD.2.00.0909040910140.4537@eeepc.linux-foundation.org>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <19099.52899.620345.326521@pilspetsen.it.uu.se> <19100.31254.666066.755541@pilspetsen.it.uu.se> <200909012042.59856.rjw@sisk.pl> <alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
 <19105.5352.28380.230615@pilspetsen.it.uu.se> <alpine.LFD.2.00.0909040729490.5232@eeepc.linux-foundation.org> <alpine.LFD.2.00.0909040739060.17375@eeepc.linux-foundation.org> <alpine.LFD.2.00.0909040753370.17375@eeepc.linux-foundation.org>
 <alpine.LFD.2.00.0909040804450.23850@eeepc.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0909040804450.23850-OZUqEyPC5NRQetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Fri, 4 Sep 2009, Linus Torvalds wrote:
> 
> So I'm starting to suspect that the real bug is that we do that 
> 'pty_space()' in pty_write() call at all. The _callers_ should already 
> have done the write_room() check, and if somebody doesn't do it, then the 
> tty buffering will eventually do a hard limit at the 65kB allocation mark.

Ok, so the thought was right, but the patch was obviously not even 
compiled, because the compiler points out that 'c' was not initialized.

I'm sure you already figured the obvious meaning out, but here's a fixed 
version.

		Linus
---
 drivers/char/pty.c |   10 +---------
 1 files changed, 1 insertions(+), 9 deletions(-)

diff --git a/drivers/char/pty.c b/drivers/char/pty.c
index d083c73..b33d668 100644
--- a/drivers/char/pty.c
+++ b/drivers/char/pty.c
@@ -109,21 +109,13 @@ static int pty_space(struct tty_struct *to)
  *	the other side of the pty/tty pair.
  */
 
-static int pty_write(struct tty_struct *tty, const unsigned char *buf,
-								int count)
+static int pty_write(struct tty_struct *tty, const unsigned char *buf, int c)
 {
 	struct tty_struct *to = tty->link;
-	int c;
 
 	if (tty->stopped)
 		return 0;
 
-	/* This isn't locked but our 8K is quite sloppy so no
-	   big deal */
-
-	c = pty_space(to);
-	if (c > count)
-		c = count;
 	if (c > 0) {
 		/* Stuff the data into the input queue of the other end */
 		c = tty_insert_flip_string(to, buf, c);
