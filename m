From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Fri, 4 Sep 2009 07:53:29 -1000 (HST)
Message-ID: <alpine.LFD.2.00.0909040739060.17375@eeepc.linux-foundation.org>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <19099.52899.620345.326521@pilspetsen.it.uu.se> <19100.31254.666066.755541@pilspetsen.it.uu.se> <200909012042.59856.rjw@sisk.pl> <alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
 <19105.5352.28380.230615@pilspetsen.it.uu.se> <alpine.LFD.2.00.0909040729490.5232@eeepc.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0909040729490.5232-OZUqEyPC5NRQetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Fri, 4 Sep 2009, Linus Torvalds wrote:
> 
> And I suspect that that means that the bug is related to do_output_char() 
> expanding '\n' into '\r\n'. And the different buffering (and the pty 
> 'space' logic) just means that we now hit a case that we didn't use to 
> hit. The relevant call chain is
> 
>  - n_tty handling:
> 	n_tty_write() ->
> 	  process_output() ->
> 	    do_output_char() ->
> 	      tty_put_char(tty, '\r')
> 	      tty_put_char(tty, '\n')

Hmm. I think I have a clue.

process_output() does

        space = tty_write_room(tty);
        retval = do_output_char(c, tty, space);

so 'space' can never become off-by-one, since it's always re-calculated 
just before. And do_output_char() checks that there is room for two 
characters, and won't do just the '\r'.

So the fact that you see the '\r' and not the '\n' means that something 
dropped the second character _despite_ tty_write_room() saying there was 
room for two characters.

Now, with flow control that can in theory happen in case 'tty->stopped' 
gets set asynchronously in between, but that's not an issue here. 

So the most likely cause is just that the pty_write_room() function is 
simply buggered, or at least doesn't work together with the new world 
order.

How about something like this? It's way too anal - it says that we can 
only write data if there's enough space to always push it all the way to 
the receive buffer (including all the data that was already buffered up, 
ie the "memory_used" part). But if it finally makes the problem go away, 
we have another clue.

		Linus
