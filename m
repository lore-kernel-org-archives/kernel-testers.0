From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Fri, 6 Feb 2009 14:45:10 -0800
Message-ID: <200902061445.11379.jbarnes@virtuousgeek.org>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <200902060849.45851.jbarnes@virtuousgeek.org> <Pine.LNX.4.64.0902062205540.5710@blonde.anvils>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0902062205540.5710-XZxpfvf5U/bbmfIwyoSfiQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Friday, February 6, 2009 2:17 pm Hugh Dickins wrote:
> On Fri, 6 Feb 2009, Jesse Barnes wrote:
> > Hugh, did you get a chance to try my X patch (w/o Ben's patch applied)? 
> > If it also works, we should apply it to X too, if only to make porting to
> > future platforms a little easier.
>
> I have tried it now: I'm sorry to say it does not work, fails with
> (WW) xf86MapDomainMem():  mmap() failure: No such device or address
>
> Fatal server error:
> AddScreen/ScreenInit failed for driver 0
>
> The "mmap() failure" line is of course the one you're intentionally
> showing, but the AddScreen/ScreenInit one is not what you want.
> Presumably it demands something other than a NULL addr returned,
> but I haven't followed that up at all.
>
> I have tried the obvious patch below, which reverts to the original
> code if the mmap fails: this works, but presumably negates much of
> what you intended to achieve with legacy_mem.
>
> Easy for me to try something else, fire away.
>
> Hugh
>
> --- a/hw/xfree86/os-support/bus/linuxPci.c
> +++ b/hw/xfree86/os-support/bus/linuxPci.c
> @@ -501,8 +501,10 @@ xf86MapDomainMemory(int ScreenNum, int F
>      if (fd >= 0)
>  	close(fd);
>      if (addr == NULL || addr == MAP_FAILED) {
> -	perror("mmap failure");
> -	FatalError("xf86MapDomainMem():  mmap() failure\n");
> +	xf86Msg(X_WARNING, "xf86MapDomainMem():  mmap() failure: %s\n",
> +		strerror(errno));
> +	return linuxMapPci(ScreenNum, Flags, dev, Base, Size,
> +			   PCIIOC_MMAP_IS_MEM);
>      }
>      return addr;
>  }

Yeah that should work.  I always hated this code (well most of X actually); we
could probably clean up the logic a little.  If this works I'll send it
out to the Xorg list for review.

-- 
Jesse Barnes, Intel Open Source Technology Center

diff --git a/hw/xfree86/os-support/bus/linuxPci.c b/hw/xfree86/os-support/bus/linuxPci.c
index 263fd8f..fa0fc0a 100644
--- a/hw/xfree86/os-support/bus/linuxPci.c
+++ b/hw/xfree86/os-support/bus/linuxPci.c
@@ -471,23 +471,18 @@ xf86MapDomainMemory(int ScreenNum, int Flags, struct pci_device *dev,
     int fd = -1;
     pointer addr;
 
-    /*
-     * We use /proc/bus/pci on non-legacy addresses or if the Linux sysfs
-     * legacy_mem interface is unavailable.
-     */
-    if ((Base > 1024*1024) || ((fd = linuxOpenLegacy(dev, "legacy_mem")) < 0))
-	return linuxMapPci(ScreenNum, Flags, dev, Base, Size,
-			   PCIIOC_MMAP_IS_MEM);
-    else
-	addr = mmap(NULL, Size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, Base);
-
-    if (fd >= 0)
-	close(fd);
-    if (addr == NULL || addr == MAP_FAILED) {
-	perror("mmap failure");
-	FatalError("xf86MapDomainMem():  mmap() failure\n");
+    if (Base <= 1024*1024) {
+        /* Try legacy_mem (may not be available or implemented) */
+        if ((fd = linuxOpenLegacy(dev, "legacy_mem")) < 0) {
+            addr = mmap(NULL, Size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, Base);
+            close(fd);
+            if (addr && addr != MAP_FAILED)
+                return addr;
+        }
     }
-    return addr;
+
+    /* Fall back to old method if legacy_mem fails or Base >= 1M */
+    return linuxMapPci(ScreenNum, Flags, dev, Base, Size, PCIIOC_MMAP_IS_MEM);
 }
 
 /**
