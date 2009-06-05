From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc6: BUG at fs/xfs/support/debug.c:109!
Date: Fri, 5 Jun 2009 13:23:38 +0400
Message-ID: <a4423d670906050223p4e72ceaaqa1dd942a2e52d1a3@mail.gmail.com>
References: <a4423d670906010822l6e8e112dl3d6f7de9e2179850@mail.gmail.com>
	 <20090604092330.GT16929@discord.disaster>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=P8B7lxhRcPC/m68ZGdeeQy80wMfuh3vFPGDuoqQ1vaE=;
        b=couvziYqF/UrGv//oJC8UjPLxkYwhfjJjBWn+TLorCpOr96OAW0PFopJgNNPgnb8Px
         sSSPDA6duNFrCq2Vth5Tr2b7jAulvVwzhxbW5acvSqJqlYzQ6VlNCjUcy5c6/M+QwsGG
         yQXHc8ACJ03s3XGAWNpwLpSIt281HhexKb2No=
In-Reply-To: <20090604092330.GT16929-CJ6yYqJ1V6CgjvmRZuSThA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

2009/6/4 Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>:
> On Mon, Jun 01, 2009 at 07:22:56PM +0400, Alexander Beregalov wrote:
>> Hi
>>
>> Assertion failed: *nmap >=3D 1, file: fs/xfs/xfs_bmap.c, line: 4846
> .....
>> Call Trace:
>> =C2=A0[<ffffffff803d6bad>] xfs_bmapi+0xad/0x1ad0
>> =C2=A0[<ffffffff803ee5c0>] xfs_dir2_leaf_getdents+0x640/0x7b0
>> =C2=A0[<ffffffff803e975c>] xfs_readdir+0x12c/0x140
>> =C2=A0[<ffffffff80430b57>] xfs_file_readdir+0x47/0x70
>> =C2=A0[<ffffffff802ec500>] vfs_readdir+0xd0/0xf0
>> =C2=A0[<ffffffff802ec6b6>] sys_getdents+0x96/0x110
>> =C2=A0[<ffffffff8020ba6b>] system_call_fastpath+0x16/0x1b
>
> I'd say this indicates a corrupted directory. =C2=A0Can you run
> 'xfs_repair -n' over the filesystem and see if it finds a bad
> directory?

Hi Dave

It is a rootfs. xfs_repair found and fixed all errors, but after
reboot the problem still persists (but at another stage of running
`emerge`).

localhost ~ # echo s > /proc/sysrq-trigger
localhost ~ # echo s > /proc/sysrq-trigger
localhost ~ # echo u > /proc/sysrq-trigger
localhost ~ # xfs_repair -nd /dev/sda2
Phase 1 - find and verify superblock...
Phase 2 - using internal log
        - scan filesystem freespace and inode maps...
        - found root inode chunk
Phase 3 - for each AG...
        - scan (but don't clear) agi unlinked lists...
        - process known inodes and perform inode discovery...
        - agno =3D 0
        - agno =3D 1
        - agno =3D 2
        - agno =3D 3
        - agno =3D 4
        - agno =3D 5
        - agno =3D 6
        - agno =3D 7
        - agno =3D 8
        - agno =3D 9
        - agno =3D 10
        - agno =3D 11
        - agno =3D 12
        - agno =3D 13
        - agno =3D 14
        - agno =3D 15
        - process newly discovered inodes...
Phase 4 - check for duplicate blocks...
        - setting up duplicate extent list...
        - check for inodes claiming duplicate blocks...
        - agno =3D 0
        - agno =3D 1
        - agno =3D 2
        - agno =3D 4
        - agno =3D 3
        - agno =3D 5
        - agno =3D 6
        - agno =3D 7
        - agno =3D 8
        - agno =3D 9
        - agno =3D 10
        - agno =3D 11
        - agno =3D 12
        - agno =3D 13
        - agno =3D 14
        - agno =3D 15
No modify flag set, skipping phase 5
Phase 6 - check inode connectivity...
        - traversing filesystem ...
        - traversal finished ...
        - moving disconnected inodes to lost+found ...
Phase 7 - verify link counts...
No modify flag set, skipping filesystem flush and exiting.
