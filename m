From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc6: BUG at fs/xfs/support/debug.c:109!
Date: Wed, 1 Jul 2009 20:21:20 +0400
Message-ID: <a4423d670907010921h7f5a7448x7575836586d7aee7@mail.gmail.com>
References: <a4423d670906010822l6e8e112dl3d6f7de9e2179850@mail.gmail.com>
	 <20090604092330.GT16929@discord.disaster>
	 <a4423d670906050223p4e72ceaaqa1dd942a2e52d1a3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=38TWLhQghkcnwHj4DIpwACcmzjEtABa/+BRxdJLRDFY=;
        b=a+loPMJqpoqIHeE3s1CS+6DPGSiHhOqfXfVIbGYimWKL3GUnjjJMXRmuDhFdfmsRFs
         53DzZYn/tmAUpS4K0opjL8oyrB0SR6eVO7nQQx9IHA3S7J9iPJt2iQuXjHRc/NuTs8cw
         L+bYVVDK0dDZI41KU00ixvkYbOpyr8klHIO+Y=
In-Reply-To: <a4423d670906050223p4e72ceaaqa1dd942a2e52d1a3-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

2009/6/5 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> 2009/6/4 Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>:
>> On Mon, Jun 01, 2009 at 07:22:56PM +0400, Alexander Beregalov wrote:
>>> Hi
>>>
>>> Assertion failed: *nmap >=3D 1, file: fs/xfs/xfs_bmap.c, line: 4846
>> .....
>>> Call Trace:
>>> =C2=A0[<ffffffff803d6bad>] xfs_bmapi+0xad/0x1ad0
>>> =C2=A0[<ffffffff803ee5c0>] xfs_dir2_leaf_getdents+0x640/0x7b0
>>> =C2=A0[<ffffffff803e975c>] xfs_readdir+0x12c/0x140
>>> =C2=A0[<ffffffff80430b57>] xfs_file_readdir+0x47/0x70
>>> =C2=A0[<ffffffff802ec500>] vfs_readdir+0xd0/0xf0
>>> =C2=A0[<ffffffff802ec6b6>] sys_getdents+0x96/0x110
>>> =C2=A0[<ffffffff8020ba6b>] system_call_fastpath+0x16/0x1b
>>
>> I'd say this indicates a corrupted directory. =C2=A0Can you run
>> 'xfs_repair -n' over the filesystem and see if it finds a bad
>> directory?

Still cannot fix the filesystem. After repairing all corruptions from
LiveCD it still fails on the same workload.

Do you need metadump or anything else?
