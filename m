From: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Fri, 6 Feb 2009 22:17:41 +0000 (GMT)
Message-ID: <Pine.LNX.4.64.0902062205540.5710@blonde.anvils>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <1233898836.4612.116.camel@pasglop>
 <Pine.LNX.4.64.0902061248010.14011@blonde.anvils> <200902060849.45851.jbarnes@virtuousgeek.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902060849.45851.jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, 6 Feb 2009, Jesse Barnes wrote:
> 
> Hugh, did you get a chance to try my X patch (w/o Ben's patch applied)?  If it 
> also works, we should apply it to X too, if only to make porting to future 
> platforms a little easier.

I have tried it now: I'm sorry to say it does not work, fails with
(WW) xf86MapDomainMem():  mmap() failure: No such device or address

Fatal server error:
AddScreen/ScreenInit failed for driver 0

The "mmap() failure" line is of course the one you're intentionally
showing, but the AddScreen/ScreenInit one is not what you want.
Presumably it demands something other than a NULL addr returned,
but I haven't followed that up at all.

I have tried the obvious patch below, which reverts to the original
code if the mmap fails: this works, but presumably negates much of
what you intended to achieve with legacy_mem.

Easy for me to try something else, fire away.

Hugh

--- a/hw/xfree86/os-support/bus/linuxPci.c
+++ b/hw/xfree86/os-support/bus/linuxPci.c
@@ -501,8 +501,10 @@ xf86MapDomainMemory(int ScreenNum, int F
     if (fd >= 0)
 	close(fd);
     if (addr == NULL || addr == MAP_FAILED) {
-	perror("mmap failure");
-	FatalError("xf86MapDomainMem():  mmap() failure\n");
+	xf86Msg(X_WARNING, "xf86MapDomainMem():  mmap() failure: %s\n",
+		strerror(errno));
+	return linuxMapPci(ScreenNum, Flags, dev, Base, Size,
+			   PCIIOC_MMAP_IS_MEM);
     }
     return addr;
 }
