From: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Fri, 4 Sep 2009 15:23:52 +0200
Message-ID: <19105.5352.28380.230615@pilspetsen.it.uu.se>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	<19099.52899.620345.326521@pilspetsen.it.uu.se>
	<19100.31254.666066.755541@pilspetsen.it.uu.se>
	<200909012042.59856.rjw@sisk.pl>
	<alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0909021429360.3590-OZUqEyPC5NRQetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

Linus Torvalds writes:
 > Here's a totally untested trial patch. I only have this dead-slow netbook  
 > for reading email with me, and I don't have a failing test-case anyway, 
 > but if my analysis is right, then the patch might fix it. It just forces 
 > the re-calculation of the receive buffer before flushing the ldisc.
 > 
 > (And btw, from a performance standpoint, it might make more sense to only 
 > do this whole read-room / ldisc-flush thing if we are about to return 
 > zero. If we already have data available, we probably shouldn't waste time 
 > trying to see if we need to do anything fancy like this.)
 > 
 > CAVEAT EMPTOR. Not tested. It compiled for me, but maybe that was due to 
 > me compiling the wrong file or something.
 > 
 > 		Linus
 > 
 > ---
 >  drivers/char/n_tty.c |    1 +
 >  1 files changed, 1 insertions(+), 0 deletions(-)
 > 
 > diff --git a/drivers/char/n_tty.c b/drivers/char/n_tty.c
 > index 973be2f..7fa3452 100644
 > --- a/drivers/char/n_tty.c
 > +++ b/drivers/char/n_tty.c
 > @@ -1583,6 +1583,7 @@ static int n_tty_open(struct tty_struct *tty)
 >  
 >  static inline int input_available_p(struct tty_struct *tty, int amt)
 >  {
 > +	n_tty_set_room(tty);
 >  	tty_flush_to_ldisc(tty);
 >  	if (tty->icanon) {
 >  		if (tty->canon_data)
 > 

Unfortunately this did not fix the bug. The gcc-4.3 testsuite failed
as usual in gcc.dg/c99-typespec-1.c.

Comparing the gcc outputs for this test case from runs with 2.6.30 and
2.6.31-rc8 shows that 2.6.31-rc8 lost a single newline (\n) byte at byte
offset 131660. So two lines of diagnostics were fused together and the
testsuite framework failed to match the second of those lines.

This is what 2.6.30 output at that place:

/mnt/work1/gcc-4.3-20090830/gcc/testsuite/gcc.dg/c99-typespec-1.c:1143: error: two or more data types in declaration specifiers
/mnt/work1/gcc-4.3-20090830/gcc/testsuite/gcc.dg/c99-typespec-1.c:1144: error: two or more data types in declaration specifiers
/mnt/work1/gcc-4.3-20090830/gcc/testsuite/gcc.dg/c99-typespec-1.c:1145: error: both 'long' and 'short' in declaration specifiers
/mnt/work1/gcc-4.3-20090830/gcc/testsuite/gcc.dg/c99-typespec-1.c:1146: error: two or more data types in declaration specifiers

And this is what 2.6.31-rc8 + the patch output at that place:

/mnt/work1/gcc-4.3-20090830/gcc/testsuite/gcc.dg/c99-typespec-1.c:1143: error: two or more data types in declaration specifiers
/mnt/work1/gcc-4.3-20090830/gcc/testsuite/gcc.dg/c99-typespec-1.c:1144: error: two or more data types in declaration specifiers/mnt/work1/gcc-4.3-20090830/gcc/testsuite/gcc.dg/c99-typespec-1.c:1145: error: both 'long' and 'short' in declaration specifiers
/mnt/work1/gcc-4.3-20090830/gcc/testsuite/gcc.dg/c99-typespec-1.c:1146: error: two or more data types in declaration specifiers

The actual logs use \r\n line endings, so between the diagnostics for source
lines 1144 and 1145 there is now a single \r. Some software will display \r
line ending as \r\n, so a missing \n may not be visible. So I've removed the
\r characters in the text above to avoid affecting how it is presented.
The original logs are available in <http://user.it.uu.se/~mikpe/linux/pty-bug/>
if you need them.

/Mikael
