From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Fri, 4 Sep 2009 09:19:34 -1000 (HST)
Message-ID: <alpine.LFD.2.00.0909040917120.4537@eeepc.linux-foundation.org>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <19099.52899.620345.326521@pilspetsen.it.uu.se> <19100.31254.666066.755541@pilspetsen.it.uu.se> <200909012042.59856.rjw@sisk.pl> <alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
 <19105.5352.28380.230615@pilspetsen.it.uu.se> <alpine.LFD.2.00.0909040729490.5232@eeepc.linux-foundation.org> <alpine.LFD.2.00.0909040739060.17375@eeepc.linux-foundation.org> <alpine.LFD.2.00.0909040753370.17375@eeepc.linux-foundation.org>
 <alpine.LFD.2.00.0909040804450.23850@eeepc.linux-foundation.org> <alpine.LFD.2.00.0909040910140.4537@eeepc.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0909040910140.4537-OZUqEyPC5NRQetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Fri, 4 Sep 2009, Linus Torvalds wrote:
> 
> I'm sure you already figured the obvious meaning out, but here's a fixed 
> version.

And here's another patch that may also fix this, simply by virtue of 
writing the "\r\n" as a single string, rather than as two characters. That 
way, we should never get into the situation that th '\r' allocates a new 
buffer (larger than one character), and then the later '\n' writing 
decides that we've filled up.

Besides, it's a cleanup. An untested one, naturally.

			Linus

---
 drivers/char/n_tty.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/drivers/char/n_tty.c b/drivers/char/n_tty.c
index 973be2f..4e28b35 100644
--- a/drivers/char/n_tty.c
+++ b/drivers/char/n_tty.c
@@ -300,8 +300,7 @@ static int do_output_char(unsigned char c, struct tty_struct *tty, int space)
 			if (space < 2)
 				return -1;
 			tty->canon_column = tty->column = 0;
-			tty_put_char(tty, '\r');
-			tty_put_char(tty, c);
+			tty->ops->write(tty, "\r\n", 2);
 			return 2;
 		}
 		tty->canon_column = tty->column;
