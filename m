From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
Date: Sat, 10 Jan 2009 01:18:41 +0300
Message-ID: <a4423d670901091418j5c7fdfb2oeba2f4640f8e29d0@mail.gmail.com>
References: <20090109044121.GA31280@orion> <20090109053858.GP9448@disturbed>
	 <a4423d670901091353s7ff12207gcb38eb093d77d401@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=AttF+NnBBd3iiflk8brw8v8XPZ0IsmlYZX9kZj/9KUE=;
        b=mTMfw/96Oi45lAEGmJqH8llNoK3yBmJ16kG+0CNWF+W6aBzZauQjsTHEd3x12HwGEF
         4tbQqoQTWxe0tfjgqIL1q2zgWkjXSixBKKldW6dDIpdGK5swQLdDJnzq42JA1asFIGP+
         ktByE6fq7L9TwL9yFkaC/u5lysZWka0589ZvQ=
In-Reply-To: <a4423d670901091353s7ff12207gcb38eb093d77d401-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

2009/1/10 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> 2009/1/9 Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>:
>> On Fri, Jan 09, 2009 at 07:41:21AM +0300, Alexander Beregalov wrote:
>> Looks like the same btree corruption problem as this:
>>
>> http://oss.sgi.com/archives/xfs/2009-01/msg00118.html
>>
>> We're working to find the cause right now, but I find it interesting
>> that you are running a CONFIG_XFS_DEBUG=y kernel and the first
>> point that something is found wrong is the same place that the
>> above non-debug case is detecting corruption.
>>
>> Can you reproduce it/have a reproducable test case?
> Yes, it is easy reproducible for me, it happens every time I run
> `rtorrent` during few minutes after boot.
> I will try to provide simpler testcase.
>

This time I get it during log replaing before mounting.

* Mounting local filesystems...
[  214.039447] XFS mounting filesystem sda3
[  214.190773] Ending clean XFS mount for filesystem: sda3
[  214.321525] XFS mounting filesystem sdb1
[  214.453029] Starting XFS recovery on filesystem: sdb1 (logdev: internal)
[  215.062964] Ending XFS recovery on filesystem: sdb1 (logdev: internal)
[  215.163358] Assertion failed: fs_is_ok, file: fs/xfs/xfs_btree.c, line: 3327
[  215.248223] ------------[ cut here ]------------
[  215.257815] kernel BUG at fs/xfs/support/debug.c:108!
[  215.257815] invalid opcode: 0000 [#1] PREEMPT DEBUG_PAGEALLOC
[  215.257815] last sysfs file: /sys/kernel/uevent_seqnum
[  215.257815] Modules linked in: i2c_nforce2
[  215.257815]
[  215.257815] Pid: 764, comm: async/1 Not tainted (2.6.28-08160-g7c51d57 #1)

It seems I need to downgrade the kernel to boot the machine.
