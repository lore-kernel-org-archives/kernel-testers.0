From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc6: BUG at fs/xfs/support/debug.c:109!
Date: Thu, 2 Jul 2009 14:38:36 +0400
Message-ID: <a4423d670907020338h430a4e53o2cf1b65d2ac14dfa@mail.gmail.com>
References: <824092896.830901246499419777.JavaMail.root@zmail05.collab.prod.int.phx2.redhat.com>
	 <584076313.830951246499556455.JavaMail.root@zmail05.collab.prod.int.phx2.redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=jy/C2emQ0Qgea5exsm+EmC/dfAAWjyrnO9jSkz/MoQA=;
        b=Tjp3E/c0Jk/bSfPZlr7Ja6G4/UmpqbOOE9uR0JaIpSH+2zMdVgrphDkzgi+6buyiZu
         aO0VVNpzxuNQtGScF+g2DfLqe16GBBXMMItXURP4XSTy9xswikIdzy9Xxe57yepYt35Q
         1+afWJpm7lVvHJjzlAjen4Sr57hjJ992rIVgw=
In-Reply-To: <584076313.830951246499556455.JavaMail.root-rwXUz/BPrj9+R5eDjrG6zsCp5Q1pQRjfhaY/URYTgi6ny3qCrzbmXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Lachlan McIlroy <lmcilroy-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

2009/7/2 Lachlan McIlroy <lmcilroy-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>:
> Alexander,
>
> Are you running with this fix?
>
> http://git.kernel.org/?p=3Dlinux/kernel/git/stable/linux-2.6.29.y.git=
;a=3Dcommitdiff;h=3Dd415867e0abc35e3b2f0d4196e98c339d6fe29a2

Yes, I use 2.6.31-rc1-git and it contains this fix.
>
> I've seen this assertion before and the above patch fixed it
> for me. =C2=A0Hmmm, looks like you're running a recent kernel so
> you should have this fix - maybe the fix wasn't quite right.
>
> Lachlan
>
>
> ----- "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>
>> 2009/6/5 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
>> > 2009/6/4 Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>:
>> >> On Mon, Jun 01, 2009 at 07:22:56PM +0400, Alexander Beregalov
>> wrote:
>> >>> Hi
>> >>>
>> >>> Assertion failed: *nmap >=3D 1, file: fs/xfs/xfs_bmap.c, line: 4=
846
>> >> .....
>> >>> Call Trace:
>> >>> =C2=A0[<ffffffff803d6bad>] xfs_bmapi+0xad/0x1ad0
>> >>> =C2=A0[<ffffffff803ee5c0>] xfs_dir2_leaf_getdents+0x640/0x7b0
>> >>> =C2=A0[<ffffffff803e975c>] xfs_readdir+0x12c/0x140
>> >>> =C2=A0[<ffffffff80430b57>] xfs_file_readdir+0x47/0x70
>> >>> =C2=A0[<ffffffff802ec500>] vfs_readdir+0xd0/0xf0
>> >>> =C2=A0[<ffffffff802ec6b6>] sys_getdents+0x96/0x110
>> >>> =C2=A0[<ffffffff8020ba6b>] system_call_fastpath+0x16/0x1b
>> >>
>> >> I'd say this indicates a corrupted directory. =C2=A0Can you run
>> >> 'xfs_repair -n' over the filesystem and see if it finds a bad
>> >> directory?
>>
>> Still cannot fix the filesystem. After repairing all corruptions fro=
m
>> LiveCD it still fails on the same workload.
>>
>> Do you need metadump or anything else?
>>
>> _______________________________________________
>> xfs mailing list
>> xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org
>> http://oss.sgi.com/mailman/listinfo/xfs
>
