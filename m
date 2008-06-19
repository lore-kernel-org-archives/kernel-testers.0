From: Daniel Walker <dwalker-Igf4POYTYCDQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm3
Date: Thu, 19 Jun 2008 07:39:30 -0700
Message-ID: <1213886370.11203.80.camel@localhost.localdomain>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
	 <alpine.DEB.1.00.0806130006490.14928@gamma>
	 <1213811751.11203.73.camel@localhost.localdomain>
	 <20080619091337.GA15228@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080619091337.GA15228-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Byron Bradley <byron.bbradley-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Hua Zhong <hzhong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


On Thu, 2008-06-19 at 11:13 +0200, Ingo Molnar wrote:

> the better fix would be to add likely_prof.o to this list of exceptions 
> in lib/Makefile:
> 
>  ifdef CONFIG_FTRACE
>  # Do not profile string.o, since it may be used in early boot or vdso
>  CFLAGS_REMOVE_string.o = -pg
>  # Also do not profile any debug utilities
>  CFLAGS_REMOVE_spinlock_debug.o = -pg
>  CFLAGS_REMOVE_list_debug.o = -pg
>  CFLAGS_REMOVE_debugobjects.o = -pg
>  endif
> 
> instead of adding notrace to the source.
> 
> 	Ingo

Here's the fix mentioned above.

--

Remove tracing from likely profiling since it could cause recursion if
ftrace uses likely/unlikely macro's internally.

Signed-off-by: Daniel Walker <dwalker-Igf4POYTYCDQT0dZR+AlfA@public.gmane.org>

---
 lib/Makefile |    2 ++
 1 file changed, 2 insertions(+)

Index: linux-2.6.25/lib/Makefile
===================================================================
--- linux-2.6.25.orig/lib/Makefile
+++ linux-2.6.25/lib/Makefile
@@ -15,6 +15,8 @@ CFLAGS_REMOVE_string.o = -pg
 CFLAGS_REMOVE_spinlock_debug.o = -pg
 CFLAGS_REMOVE_list_debug.o = -pg
 CFLAGS_REMOVE_debugobjects.o = -pg
+# likely profiling can cause recursion in ftrace, so don't trace it.
+CFLAGS_REMOVE_likely_prof.o = -pg
 endif
 
 lib-$(CONFIG_MMU) += ioremap.o


--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
