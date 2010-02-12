From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bugme-new] [Bug 15273] New: Regression in ptrace (Wine)
 starting with 2.6.33-rc1
Date: Thu, 11 Feb 2010 22:20:58 -0800
Message-ID: <20100211222058.321448c0.akpm@linux-foundation.org>
References: <bug-15273-10286@http.bugzilla.kernel.org/>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <bug-15273-10286-V0hAGp6uBxO456/isadD/XN4h3HLQggn@public.gmane.org/>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>


post-2.6.32 rerression.

On Thu, 11 Feb 2010 16:21:38 GMT bugzilla-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org wrote:

> http://bugzilla.kernel.org/show_bug.cgi?id=15273
> 
>                URL: http://git.kernel.org/?p=linux/kernel/git/torvalds/lin
>                     ux-2.6.git;a=commit;h=72f674d203cd230426437cdcf7dd6f68
>                     1dad8b0d
>            Summary: Regression in ptrace (Wine) starting with 2.6.33-rc1
>            Product: Process Management
>            Version: 2.5
>     Kernel Version: 2.6.33-rc
>           Platform: All
>         OS/Version: Linux
>               Tree: Mainline
>             Status: NEW
>           Severity: high
>           Priority: P1
>          Component: Other
>         AssignedTo: process_other-ztI5WcYan/vQLgFONoPN62D2FQJk+8+b@public.gmane.org
>         ReportedBy: mstefani-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org
>         Regression: Yes
> 
> 
> 2.6.33-rc1 broke ptrace for Wine, specifically the setting of the debug
> registers. This is visible in the Wine ntdll exception tests failing on
> 2.6.33-rcX while they work just fine in 2.6.32.
> 
> A regression test resulted in:
> 72f674d203cd230426437cdcf7dd6f681dad8b0d is the first bad commit
> commit 72f674d203cd230426437cdcf7dd6f681dad8b0d
> Author: K.Prasad <prasad-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> Date:   Mon Jun 1 23:45:48 2009 +0530
> 
>     hw-breakpoints: modify Ptrace routines to access breakpoint registers
> 
>     This patch modifies the ptrace code to use the new wrapper routines around
> the
>     debug/breakpoint registers.
> 
>     [ Impact: adapt x86 ptrace to the new breakpoint Api ]
> 
>     Original-patch-by: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
>     Signed-off-by: K.Prasad <prasad-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
>     Signed-off-by: Maneesh Soni <maneesh-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
>     Reviewed-by: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
>     Signed-off-by: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> :040000 040000 f72ff4760c3fa1dffcd72494e77bee2c76039505
> b60d5fe2088ff635568e800d5759a0b373b5e439 M      arch
> 
> 
> The first ntdll exception test in test_exceptions()
> http://source.winehq.org/git/wine.git/?a=blob;f=dlls/ntdll/tests/exception.c;h=9149b6961764dec31a0af5cd3b93ab3072703dbb;hb=312e4f6b235a468f8bf764101a5b97cf34dd4143#l594
>   run_exception_test(dreg_handler, NULL, &segfault_code, sizeof(segfault_code),
> 0);
> produces (make exception.ok) the output:
>   err:seh:setup_exception_record stack overflow 932 bytes in thread 0009 eip
> 7bc3c97f esp 00240f8c stack 0x240000-0x241000-0x340000
> The stack overflow is detected by the ntdll internal function
> setup_exception_record()
> http://source.winehq.org/git/wine.git/?a=blob;f=dlls/ntdll/signal_i386.c;h=4eccb61954c43d75144575411313d59405decfc3;hb=312e4f6b235a468f8bf764101a5b97cf34dd4143#l1495
> which aborts the thread.
> The problem happens on both i386 (Intel Atom CPU) as well as on x86_64 (Intel
> Q9450); the stack overflow bytes differ though but are always the same for each
> box.
> 
> All the ntdll exception tests run just fine with 2.6.32 and older kernels. For
> a summary of the ntdll exception tests please see
> http://test.winehq.org/data/tests/ntdll:exception.html in the Wine column.
> 
> thanks
> bye
>     michael
> 
> -- 
> Configure bugmail: http://bugzilla.kernel.org/userprefs.cgi?tab=email
> ------- You are receiving this mail because: -------
> You are on the CC list for the bug.
