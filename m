From: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13463] Poor SSD performance
Date: Wed, 10 Jun 2009 14:37:46 +0800
Message-ID: <20090610063746.GA26773@localhost>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <AN6kEAA5GQ.A.23.sj7KKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <AN6kEAA5GQ.A.23.sj7KKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jake <ellowitz-t4+EzPmVLfD2fBVCVOL8/A@public.gmane.org>, tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13463
> Subject		: Poor SSD performance
> Submitter	: Jake <ellowitz-t4+EzPmVLfD2fBVCVOL8/A@public.gmane.org>
> Date		: 2009-06-05 17:37 (3 days old)

Hi Jake,

Could you collect some blktrace data for the dd commands on new/old
kernels?

dd if=/dev/sda of=/dev/null bs=1M count=1024 iflag=direct
dd if=/dev/sda of=/dev/null bs=1M count=1024


You need to install the blktrace tool and run these commands:

        cd /dev/shm
        blktrace /dev/sda # do this while dd is running
        # ^C to interrupt
        blkparse sda


Package: blktrace
Description: utilities for block layer IO tracing
 blktrace is a block layer IO tracing mechanism which provides detailed
 information about request queue operations up to user space. There are

Thanks,
Fengguang
