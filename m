From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
Date: Mon, 12 Jan 2009 05:19:21 +0300
Message-ID: <a4423d670901111819p7fdada21k6c20363c63cbc10c@mail.gmail.com>
References: <20090109044121.GA31280@orion>
	 <a4423d670901091418j5c7fdfb2oeba2f4640f8e29d0@mail.gmail.com>
	 <a4423d670901091511y68a53808rfaab8148526224c6@mail.gmail.com>
	 <a4423d670901100419s2ae106bexac1a538caf654153@mail.gmail.com>
	 <20090110143924.GA25900@infradead.org>
	 <a4423d670901100709v1e7ce0bfs167547c5001787ac@mail.gmail.com>
	 <20090110152803.GA7469@infradead.org> <20090110221459.GA8873@orion>
	 <20090111104659.GB8071@disturbed>
	 <a4423d670901111648w26e86baajcf7b6d98ff37d043@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=I929yQp2g6ZafTntfAxePZx54NYB6a5qOEfeAzWcNFQ=;
        b=LHOhnWnmJv7f9HzxtBLiMd7xdQiykoeFC97EBuZdd5oHgPh7ZS6ZBvAJmA6mZ3fgF6
         R/JZ9+vVy7yKeJgnoBMI5ynLlt8sS6+F+O1tAZmLGxcx6+Red9/cBiB/QGlDOQuRqkm1
         fzar8Kc0CTeNnzPPmAghYIXnodcU+BxcO7AlI=
In-Reply-To: <a4423d670901111648w26e86baajcf7b6d98ff37d043-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>, Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2009/1/12 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
>> Hmmmm - this might be getting closer to the source of the bug.
>> It's being detecting when reading in the buffer to do a left shift
>> now, not during the delete of a record.
>>
>> I'd suggest that you treat this as the same failure and continue
>> the bisect to try to find when no problems show up at all.
>
> 687b890a184fef263ebb773926e1f4aa69240d01 is the first bad commit.
> Does it make sense?
> It can not be reverted from the current git to be sure it is guilty
> due to merge conflicts.
>

No! I got similar bug message on 9eaead5 two hours later.
9eaead5 is previous to 687b890. 9eaead5 might be the first bad commit
or earlier one.
It seems I need to test the kernel for few hours before mark it good.

Filesystem "sdb1": XFS internal error xfs_btree_check_lblock at line
200 of file fs/xfs/xfs_btree.c.  Caller 0xc024c132
Pid: 2481, comm: pdflush Not tainted 2.6.28-rc2-00208-g9eaead5 #4
Call Trace:
 [<c025f212>] ? xfs_cmn_err+0x32/0x60
 [<c025f28e>] xfs_error_report+0x4e/0x50
 [<c024c132>] ? xfs_btree_check_block+0x32/0x40
 [<c024bfbd>] xfs_btree_check_lblock+0x4d/0x190
 [<c024c132>] ? xfs_btree_check_block+0x32/0x40
<...>
Assertion failed: cur->bc_btnum != XFS_BTNUM_BMAP ||
cur->bc_private.b.allocated == 0, file: fs/xfs/xfs_btree.c, line: 348
------------[ cut here ]------------
kernel BUG at fs/xfs/support/debug.c:81!
invalid opcode: 0000 [#1] PREEMPT DEBUG_PAGEALLOC
last sysfs file: /sys/devices/platform/w83627hf.656/name
Modules linked in: w83627hf hwmon_vid i2c_nforce2
Pid: 2481, comm: pdflush Not tainted (2.6.28-rc2-00208-g9eaead5 #4)
EIP: 0060:[<c029d6ee>] EFLAGS: 00010282 CPU: 0
EIP is at assfail+0x1e/0x30
<..>
Call Trace:
 [<c024bcd0>] ? xfs_btree_del_cursor+0x60/0x80
 [<c02445be>] ? xfs_bmapi+0x48e/0x1c90
 [<c014b7a5>] ? __lock_acquire+0x2c5/0x1000
 [<c014b7a5>] ? __lock_acquire+0x2c5/0x1000
 [<c0270cd4>] ? xfs_iomap_write_allocate+0x254/0x450
