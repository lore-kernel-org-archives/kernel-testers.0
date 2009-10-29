From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #14472] EXT4 corruption
Date: Thu, 29 Oct 2009 18:23:35 -0400
Message-ID: <20091029222335.GJ18464@mit.edu>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.haF.Are5KB@chimera> <cb0375e10910291257t1f2f16ciade932bd78689ccc@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <cb0375e10910291257t1f2f16ciade932bd78689ccc-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Lutomirski <luto-DPNOqEs/LNQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>

On Thu, Oct 29, 2009 at 03:57:32PM -0400, Andrew Lutomirski wrote:
> 
> This but is *not* fixed.  I just triggered it a few minutes ago by
> abusing i915 and drm, which caused a panic.  This is slightly newer
> than 2.6.32-rc5, with a couple of i915 bugfixes thrown in.

Andrew, can you test to see if this patch helps?

Thanks,

						- Ted

commit a8836b1d6f92273e001012c7705ae8f4c3d5fb65
Author: Aneesh Kumar K.V <aneesh.kumar-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date:   Tue Oct 27 15:36:38 2009 +0530

    ext4: discard preallocation during truncate
    
    We need to make sure when we drop and reacquire the inode's
    i_data_sem we discard the inode preallocation. Otherwise we
    could have blocks marked as free in bitmap but still belonging
    to prealloc space.
    
    Signed-off-by: Aneesh Kumar K.V <aneesh.kumar-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>

diff --git a/fs/ext4/inode.c b/fs/ext4/inode.c
index 5c5bc5d..a1ef1c3 100644
--- a/fs/ext4/inode.c
+++ b/fs/ext4/inode.c
@@ -209,6 +209,12 @@ static int try_to_extend_transaction(handle_t *handle, struct inode *inode)
 	up_write(&EXT4_I(inode)->i_data_sem);
 	ret = ext4_journal_restart(handle, blocks_for_truncate(inode));
 	down_write(&EXT4_I(inode)->i_data_sem);
+	/*
+	 * We have dropped i_data_sem. So somebody else could have done
+	 * block allocation. So discard the prealloc space created as a
+	 * part of block allocation
+	 */
+	ext4_discard_preallocations(inode);
 
 	return ret;
 }
