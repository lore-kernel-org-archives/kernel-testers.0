From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Fri, 4 Sep 2009 08:11:50 -1000 (HST)
Message-ID: <alpine.LFD.2.00.0909040804450.23850@eeepc.linux-foundation.org>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <19099.52899.620345.326521@pilspetsen.it.uu.se> <19100.31254.666066.755541@pilspetsen.it.uu.se> <200909012042.59856.rjw@sisk.pl> <alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
 <19105.5352.28380.230615@pilspetsen.it.uu.se> <alpine.LFD.2.00.0909040729490.5232@eeepc.linux-foundation.org> <alpine.LFD.2.00.0909040739060.17375@eeepc.linux-foundation.org> <alpine.LFD.2.00.0909040753370.17375@eeepc.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0909040753370.17375-OZUqEyPC5NRQetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Fri, 4 Sep 2009, Linus Torvalds wrote:
> 
> And again - UNTESTED. Maybe this makes the buffering _too_ small (the 
> 'memory_used' thing is not really counted in bytes buffered, it's counted 
> in how much buffer space we've allocated) and things break even worse and 
> pty's don't work at all. But I think it might work.

Actually, scratch that patch.

After writing the above, the voices in my head started clamoring about 
this "space allocated" vs "bytes buffered" thing, which I was obviously 
aware of, but hadn't thought about as an issue.

And you know what? The thing about "space allocated" vs "bytes buffered" 
is that writing _one_ byte (the '\r') can cause a lot more than one byte 
to be allocated for a buffer (we do minimum 256-byte buffers).

So let's say that 'space' was initially 20 - plenty big enough to hold two 
characters. But if the '\r' just happened to need a new buffer, it would 
actually increase 'memory_used' by 256, and now the next time we call 
'pty_space()' it doesn't return 19, but 0 - because now memory_used is 
larger than the 8192 we allowed.

So I'm starting to suspect that the real bug is that we do that 
'pty_space()' in pty_write() call at all. The _callers_ should already 
have done the write_room() check, and if somebody doesn't do it, then the 
tty buffering will eventually do a hard limit at the 65kB allocation mark.

So doing it in pty_write() is (a) unnecessary and (b) actively wrong, 
because it means that in the situation above, pty_write() won't be allowin 
the slop that it _needs_ to allow due to the buffering not being exact 
"this many bytes buffered up", but "this many bytes allocated for 
buffering".

So rather than the previous patch, try this one instead.

		Linus
---
 drivers/char/pty.c |    6 ------
 1 files changed, 0 insertions(+), 6 deletions(-)

diff --git a/drivers/char/pty.c b/drivers/char/pty.c
index d083c73..45a7ca2 100644
--- a/drivers/char/pty.c
+++ b/drivers/char/pty.c
@@ -118,12 +118,6 @@ static int pty_write(struct tty_struct *tty, const unsigned char *buf,
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
