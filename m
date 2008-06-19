From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm3
Date: Thu, 19 Jun 2008 11:13:37 +0200
Message-ID: <20080619091337.GA15228@elte.hu>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <alpine.DEB.1.00.0806130006490.14928@gamma> <1213811751.11203.73.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1213811751.11203.73.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Daniel Walker <dwalker-Igf4POYTYCDQT0dZR+AlfA@public.gmane.org>
Cc: Byron Bradley <byron.bbradley-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Hua Zhong <hzhong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


* Daniel Walker <dwalker-Igf4POYTYCDQT0dZR+AlfA@public.gmane.org> wrote:

> 
> On Fri, 2008-06-13 at 00:32 +0100, Byron Bradley wrote:
> > Looks like x86 and ARM both fail to boot if PROFILE_LIKELY, FTRACE and 
> > DYNAMIC_FTRACE are selected. If any one of those three are disabled it 
> > boots (or fails in some other way which I'm looking at now). The serial 
> > console output from both machines when they fail to boot is below, let me 
> > know if there is any other information I can provide.
> 
> I was able to reproduce a hang on x86 with those options. The patch
> below is a potential fix. I think we don't want to trace
> do_check_likely(), since the ftrace internals might use likely/unlikely
> macro's which will just cause recursion back to do_check_likely()..
> 
> Signed-off-by: Daniel Walker <dwalker-Igf4POYTYCDQT0dZR+AlfA@public.gmane.org>
> 
> ---
>  lib/likely_prof.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Index: linux-2.6.25/lib/likely_prof.c
> ===================================================================
> --- linux-2.6.25.orig/lib/likely_prof.c
> +++ linux-2.6.25/lib/likely_prof.c
> @@ -22,7 +22,7 @@
>  
>  static struct likeliness *likeliness_head;
>  
> -int do_check_likely(struct likeliness *likeliness, unsigned int ret)
> +int notrace do_check_likely(struct likeliness *likeliness, unsigned int ret)

the better fix would be to add likely_prof.o to this list of exceptions 
in lib/Makefile:

 ifdef CONFIG_FTRACE
 # Do not profile string.o, since it may be used in early boot or vdso
 CFLAGS_REMOVE_string.o = -pg
 # Also do not profile any debug utilities
 CFLAGS_REMOVE_spinlock_debug.o = -pg
 CFLAGS_REMOVE_list_debug.o = -pg
 CFLAGS_REMOVE_debugobjects.o = -pg
 endif

instead of adding notrace to the source.

	Ingo
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
