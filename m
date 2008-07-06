From: James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Sun, 06 Jul 2008 11:11:58 -0500
Message-ID: <1215360718.4197.14.camel@localhost.localdomain>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	 <alpine.LFD.1.10.0807060816070.3016@woody.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=2007; t=1215360721; bh=din352zc+eHK3cEe3hrGMdHsZXaf5dN0bQPUi9023x
	Q=; l=1383; h=Subject:From:To:Cc:In-Reply-To:References:
	 Content-Type:Date:Message-Id:Mime-Version:
	 Content-Transfer-Encoding; b=f8x8lRvuGoM0Ivsmb+Qbj6poWRAZ/PX3j2vi2
	FjEiZjoKJXtTbyQmZwLmuAqGNn4pUEQAwN8eqZKzYbYDo5PTwtg1RrNnRV9X93Tjadt
	/f+ERd8Oz93ePrCgQjhaeHGa8Hijg/tslLQwSDmT2DdF4UDsgNG4iKXYua3Lc45l+iU
	=
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=2007; t=1215360719; bh=din352zc+eHK3cEe3hrGMdHsZXaf5dN0bQPUi9023x
	Q=; l=1383; h=Subject:From:To:Cc:In-Reply-To:References:
	 Content-Type:Date:Message-Id:Mime-Version:
	 Content-Transfer-Encoding; b=koEkD1bEFyjQTYDnmTWxAKwSeCg/fH3p+8mkV
	oN1Qwq07LjtZoXTlnnpf6aAPN575KYAga/YGRluNtQbCjVa10inGe0IeE9X6ICwCHAD
	+IsIoapNWAknCPJNDHmlw/g4ApFIKERXrYtk5H5C3nZsomm6BpUNhvBiCVmCinGB7Rs
	=
In-Reply-To: <alpine.LFD.1.10.0807060816070.3016-5CScLwifNT1QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>

On Sun, 2008-07-06 at 08:46 -0700, Linus Torvalds wrote:
> > Bug-Entry     : http://bugzilla.kernel.org/show_bug.cgi?id=10725
> > Subject               : USB Mass storage mount fails: Write protect on
> > Submitter     : Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date          : 2008-05-16 14:55 (52 days old)
> > References    : http://marc.info/?l=linux-kernel&m=121095168003572&w=4
> > Handled-By    : Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> > Patch         : http://marc.info/?l=linux-scsi&m=121433068314568&w=2
> 
> Hmm. James?

Oh ... it was reported against 2.6.26-rc1, so the fix is actually
crrently queued for scsi-misc in my internal test rig.  However, the
reason for the long QA is that there's a potential danger to the fix
which is clearing the buffer from the reported length to the actual
length will break a SCSI card that misreports the returned length.  It
seems to be OK on my esoteric SCSI card collection, so I'll push it out
to scsi-rc-fixes.  However, I think it still wants to run in linux-next
for a few days to see if anyone else can turn up a problem.

The true issue, of course, is that we won't see a problem until the
2.6.26 release because the hardware that triggers it isn't in the set
we're testing with.  A less risky fix for 2.6.26-rc9 might be to move
the clearing into the affected subsystem (usbstorage).

James

