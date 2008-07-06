From: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Sun, 6 Jul 2008 18:58:25 +0300
Message-ID: <20080706155825.GB21669@cs181140183.pp.htv.fi>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <alpine.LFD.1.10.0807060816070.3016@woody.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.1.10.0807060816070.3016-5CScLwifNT1QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

On Sun, Jul 06, 2008 at 08:46:09AM -0700, Linus Torvalds wrote:
> On Sun, 6 Jul 2008, Rafael J. Wysocki wrote:
>...
> Fixed by commit 494de90098784b8e2797598cefdd34188884ec2e: "Do not 
> overwrite nr_zones on !NUMA when initialising zlcache_ptr" by Mel.
>...
> This patch got merged: commit 1236edf1c70107a0d31b3fba0b2a8783615d0d24 
> ("USB: don't lose disconnections during suspend").
>...
> Ditto: commit 7cd95f56cb61f5348d062527c9d3653196f6e629 ("ide: fix 
> hwif->gendev refcounting")
>...
> Fixed in commit 70a3143af87c6ca188107cbd49ab5eec2c86c456 ("sata_uli: 
> hardreset is broken")
>...
> Fixed in commit efac41894df57d32b483ac622d03541b5b2692c0 ("x86: fix 
> NODES_SHIFT Kconfig range").
>...

Thanks, all closed.

(I do try to close fixed regression bugs immediately after a fix enters
 your tree, but espicially for commits without a reference to a Bugzilla
 entry I sometimes miss it.)

> 				Linus

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed
