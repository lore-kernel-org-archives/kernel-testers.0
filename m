From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #14015] pty regressed again, breaking expect and gcc's
 testsuite
Date: Fri, 4 Sep 2009 07:30:43 -1000 (HST)
Message-ID: <alpine.LFD.2.00.0909040729490.5232@eeepc.linux-foundation.org>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera> <19099.52899.620345.326521@pilspetsen.it.uu.se> <19100.31254.666066.755541@pilspetsen.it.uu.se> <200909012042.59856.rjw@sisk.pl> <alpine.LFD.2.00.0909021429360.3590@eeepc.linux-foundation.org>
 <19105.5352.28380.230615@pilspetsen.it.uu.se>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19105.5352.28380.230615-tgku4HJDRZih8lFjZTKsyTAV6s6igYVG@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>



On Fri, 4 Sep 2009, Mikael Pettersson wrote:
> 
> Comparing the gcc outputs for this test case from runs with 2.6.30 and
> 2.6.31-rc8 shows that 2.6.31-rc8 lost a single newline (\n) byte at byte
> offset 131660. So two lines of diagnostics were fused together and the
> testsuite framework failed to match the second of those lines.

Goodie. That was the kind of hint I was looking for.

And I suspect that that means that the bug is related to do_output_char() 
expanding '\n' into '\r\n'. And the different buffering (and the pty 
'space' logic) just means that we now hit a case that we didn't use to 
hit. The relevant call chain is

 - n_tty handling:
	n_tty_write() ->
	  process_output() ->
	    do_output_char() ->
	      tty_put_char(tty, '\r')
	      tty_put_char(tty, '\n')

I'll see what I can find. But your "loses \n character" does mean that the 
'lost bytes at the end when the other end closed it' is probably not the 
issue, and we're talking about a different kind of bug entirely.

			Linus
