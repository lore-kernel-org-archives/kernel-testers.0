From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Thu, 5 Feb 2009 14:33:22 -0800
Message-ID: <200902051433.23294.jbarnes@virtuousgeek.org>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <Pine.LNX.4.64.0902051713550.1445@blonde.anvils> <1233867944.4612.104.camel@pasglop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755249AbZBEWdf@vger.kernel.org>
In-Reply-To: <1233867944.4612.104.camel@pasglop>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Hugh Dickins <hugh@veritas.com>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Thursday, February 5, 2009 1:05 pm Benjamin Herrenschmidt wrote:
> > Is it a really a bug in X, or a misunderstanding between X and
> > the kernel as to what existence of the legacy_mem file implies?
> >
> > I may have got this quite wrong, but to me it appears that X assumes
> > that existence of the legacy_mem file implies that it will be useful;
> > whereas the kernel thinks it can make the legacy_mem file available,
> > even if it cannot be used for mmapping mem - which is its sole purpose?
> >
> > What if pci_create_legacy_files() were to call some new verification
> > routine, and only create the legacy_mem file if it would be usable?
> > (But perhaps that cannot be known at the time it needs to be created.)
>
> Well, first X should certainly not -fail- to launch if it fails to map
> legacy memory, which is generally not useful anyway. That's where the
> bug is. Jesse, did you have a chance to fix that yet or should I give it
> a go ?

No, sorry, but I just took a look and as long as the various callers can 
handle it (haven't checked), this patch would work.

> The second problem is that if I just don't expose the legacy_mem file,
> then X has no way to know whether the kernel doesn't support the
> interface or whether the HW doesn't support legacy memory access. So X
> will fallback to whacking /dev/mem which is even more bogus. At least
> that's what I remember from last I looked at that part of X code.
>
> It should be a trivial fix on X side tho.

One option there would be to provide the file but just use anonymous memory to 
back it.  X will happily think it's messing with legacy VGA memory, but it 
shouldn't matter that it's not actually affecting hw.

diff --git a/hw/xfree86/os-support/bus/linuxPci.c 
b/hw/xfree86/os-support/bus/li
index 263fd8f..5d2da32 100644
--- a/hw/xfree86/os-support/bus/linuxPci.c
+++ b/hw/xfree86/os-support/bus/linuxPci.c
@@ -484,8 +484,9 @@ xf86MapDomainMemory(int ScreenNum, int Flags, struct 
pci_dev
     if (fd >= 0)
        close(fd);
     if (addr == NULL || addr == MAP_FAILED) {
-       perror("mmap failure");
-       FatalError("xf86MapDomainMem():  mmap() failure\n");
+       xf86Msg(X_WARNING, "xf86MapDomainMem():  mmap() failure: %s\n",
+               strerror(errno));
+       return NULL;
     }
     return addr;
 }


-- 
Jesse Barnes, Intel Open Source Technology Center
