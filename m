From: "Luiz Fernando N. Capitulino" <lcapitulino-4qZELD6Fgxg39yzSjRtAkw@public.gmane.org>
Subject: Re: [Bug #11035] System hangs on 2.6.26-rc8
Date: Thu, 10 Jul 2008 15:08:41 -0300
Message-ID: <20080710150841.139c2a71@doriath.conectiva>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	<uBi7uNfg81L.A.xt.SzLcIB@albercik>
	<487600B3.2010008@r000n.net>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/FxRWw45TbWmoKPpf4pmqQzB"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <487600B3.2010008-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

--MP_/FxRWw45TbWmoKPpf4pmqQzB
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Em Thu, 10 Jul 2008 16:29:39 +0400
Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org> escreveu:

| Rafael J. Wysocki wrote:
| > This message has been generated automatically as a part of a report
| > of recent regressions.
| > 
| > The following bug entry is on the current list of known regressions
| > from 2.6.25.  Please verify if it still should be listed.
| > 
| > 
| > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11035
| > Subject		: System hangs on 2.6.26-rc8
| > Submitter	: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
| > Date		: 2008-07-02 14:25 (5 days old)
| > References	: http://marc.info/?l=linux-kernel&m=121500871414995&w=4
| > 
| > 
| > 
| I have this problem with 2.6.25 too.
| Unfortunately, I can't check 2.6.24. With config from 2.6.26-rc8 I got
| error of compiling:
| 
|   LD      .tmp_vmlinux1
| kernel/built-in.o: In function `timespec_add_ns':
| /usr/src/kernels/linux-2.6.24/include/linux/time.h:179: undefined
| reference to `__umoddi3'

 [...]

 You're trying to compile with gcc 4.3, right? You can try the
attached fix or the following cherry-pick if you're compiling
from a git tree:

$ git cherry-pick 38332cb98772f5ea757e6486bed7ed0381cb5f98

 But I can't tell whether the compiler and/or the fix will
change the behaivor of the bug you're reporting.

-- 
Luiz Fernando N. Capitulino

--MP_/FxRWw45TbWmoKPpf4pmqQzB
Content-Type: text/x-patch; name=time.patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=time.patch

commit 38332cb98772f5ea757e6486bed7ed0381cb5f98
Author: Segher Boessenkool <segher-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Date:   Tue Mar 4 14:59:54 2008 -0800

    time: prevent the loop in timespec_add_ns() from being optimised away
    
    Since some architectures don't support __udivdi3().
    
    Signed-off-by: Segher Boessenkool <segher-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
    Cc: john stultz <johnstul-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
    Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
    Signed-off-by: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
    Signed-off-by: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>

diff --git a/include/linux/time.h b/include/linux/time.h
index 2091a19..d32ef0a 100644
--- a/include/linux/time.h
+++ b/include/linux/time.h
@@ -174,6 +174,10 @@ static inline void timespec_add_ns(struct timespec *a, u64 ns)
 {
 	ns += a->tv_nsec;
 	while(unlikely(ns >= NSEC_PER_SEC)) {
+		/* The following asm() prevents the compiler from
+		 * optimising this loop into a modulo operation.  */
+		asm("" : "+r"(ns));
+
 		ns -= NSEC_PER_SEC;
 		a->tv_sec++;
 	}

--MP_/FxRWw45TbWmoKPpf4pmqQzB--
