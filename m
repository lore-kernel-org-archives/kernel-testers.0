From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Fri, 4 Sep 2009 07:55:30 -1000 (HST)
Message-ID: <alpine.LFD.2.00.0909040753370.17375@eeepc.linux-foundation.org>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <19099.52899.620345.326521@pilspetsen.it.uu.se> <19100.31254.666066.755541@pilspetsen.it.uu.se> <200909012042.59856.rjw@sisk.pl> <alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
 <19105.5352.28380.230615@pilspetsen.it.uu.se> <alpine.LFD.2.00.0909040729490.5232@eeepc.linux-foundation.org> <alpine.LFD.2.00.0909040739060.17375@eeepc.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0909040739060.17375-OZUqEyPC5NRQetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Fri, 4 Sep 2009, Linus Torvalds wrote:
> 
> How about something like this? It's way too anal - it says that we can 
> only write data if there's enough space to always push it all the way to 
> the receive buffer (including all the data that was already buffered up, 
> ie the "memory_used" part). But if it finally makes the problem go away, 
> we have another clue.

I forgot to actually include the patch. Duh.

And again - UNTESTED. Maybe this makes the buffering _too_ small (the 
'memory_used' thing is not really counted in bytes buffered, it's counted 
in how much buffer space we've allocated) and things break even worse and 
pty's don't work at all. But I think it might work.

		Linus

---
 drivers/char/pty.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/char/pty.c b/drivers/char/pty.c
index d083c73..139fa5a 100644
--- a/drivers/char/pty.c
+++ b/drivers/char/pty.c
@@ -91,7 +91,7 @@ static void pty_unthrottle(struct tty_struct *tty)
 
 static int pty_space(struct tty_struct *to)
 {
-	int n = 8192 - to->buf.memory_used;
+	int n = to->receive_room - to->buf.memory_used;
 	if (n < 0)
 		return 0;
 	return n;
