From: tytso@mit.edu
Subject: Re: [Bug #14936] kernel BUG at fs/ext4/inode.c:1063 if attempted
 to use non-ext4 partition with ext4
Date: Thu, 31 Dec 2009 13:15:10 -0500
Message-ID: <20091231181510.GF828@thunk.org>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
 <20091229165712.GH4429@thunk.org>
 <20091230190120.GQ4429@thunk.org>
 <200912302252.12140.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752928AbZLaSPS@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200912302252.12140.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Gene Heskett <gene.heskett@verizon.net>, okias <d.okias@gmail.com>

On Wed, Dec 30, 2009 at 10:52:12PM +0100, Rafael J. Wysocki wrote:
> > I'm working on a fix, and have a proposed patch.  See the thread on
> > linux-ext4 here:
> > 
> > http://marc.info/?l=linux-kernel&m=126219515024315&w=2
> > 
> > This patch also fixes the dq_claim_space kerneloops problem as
> > well....
> 
> Thanks, I've added your patch to the Bugzilla entry.

This patch has been merged to mainline.  I'm working on improving
things so that we don't lose performance by unnecessarily forcing
delalloc blocks out to disk when the (wildly overestimated) number of
required metadata blocks approaches the user's remaining quota or
remaining free space on disk, but the fundamental fix is in mainline.

(The performance hit was something I knew about when I pushed the
patch to Linus, but after discussing things with Eric Sandeen, we
figured that for users who were converting from ext3, which didn't
have delayed allocation support at all, even with the performance hit
when the user approached the quota limit, ext4 with delalloc+quota was
still better than ext3 --- and I wanted a fix in mainline ASAP.
Fortunately, it's not going to be that hard make the required metadata
much more accurate.)

	     	      	       	       	    - Ted
