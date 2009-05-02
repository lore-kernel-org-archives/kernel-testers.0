From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc4: xfs_fsr hangs
Date: Sat, 2 May 2009 22:59:33 +0400
Message-ID: <a4423d670905021159k51e91b12h96189005980b5e73@mail.gmail.com>
References: <a4423d670905011333s664115bdh1d72392897567c1d@mail.gmail.com>
	 <20090502101405.GA6145@fancy-poultry.org>
	 <a4423d670905021135s4fdbea82t20cf75b61c59dc75@mail.gmail.com>
	 <49FC9762.6010109@sandeen.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=RrNhnQjghgiZTH6O3JAdjwXPh7WGJQlI7zzo7POx+QE=;
        b=CIfL81JoJ0NGpdLN12yRb4WrZrNy/cMd8U/q8KOvXcyRcsXrxMwLWoNneXpCaAs28C
         hGfsmQeHAVIkTQNq3w/9XX3JC4iF4aFL8yLqCZ04ps62nAfnyqtb/mx6EqqPk2IX3r/i
         gdc8UTLwDUfAzWhZfoF/Yl58JUHqXUl9x7ivY=
In-Reply-To: <49FC9762.6010109-+82itfer+wXR7s880joybQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

2009/5/2 Eric Sandeen <sandeen-+82itfer+wXR7s880joybQ@public.gmane.org>:
> Alexander Beregalov wrote:
>> 2009/5/2 Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>:
>>> On 01.05.2009, Alexander Beregalov wrote:
>>>
>>>> # xfs_db -r /dev/sdc1
>>>> xfs_db> frag
>>>> actual 23805, ideal 22890, fragmentation factor 3.84%
>>>> # xfs_fsr -v /dev/sdc1
>>>> /mnt/c start inode=3D0
>>>> ino=3D158
>>>> extents before:3 after:1 DONE ino=3D158
>>>>
>>>> =C2=A0then it hangs
>>> I can't confirm this here on my systems:
>>>
>>> liesel:~ # uname -a
>>> Linux liesel 2.6.30-rc4 #1 SMP PREEMPT Sat May 2 11:49:13 CEST 2009=
 x86_64 x86_64 x86_64 GNU/Linux
>>
>> I have this problem on two x86_32 hosts.
>> It runs for about a minute and then hangs.
>
> echo w > /proc/sysrq-trigger
> dmesg
>
> would show all the sleeping processes...
It is the same as I posted already:

SysRq : Show Blocked State
  task                PC stack   pid father
xfs_fsr       D 00000000  5304  3393      1
 ef479dec 00000046 00000001 00000000 ef479de8 f2a58000 f2a58280 f312383=
0
 f2a58000 00000001 f3123830 f312382c ffffffff f312382c f2a58000 ef479df=
4
 c0447892 ef479e20 c04498ad ef479e28 f3123830 f3123854 ef479e44 0000024=
6
Call Trace:
 [<c0447892>] schedule+0x12/0x30
 [<c04498ad>] rwsem_down_failed_common+0x6d/0x180
 [<c04499dd>] rwsem_down_write_failed+0x1d/0x30
 [<c0449a2a>] call_rwsem_down_write_failed+0x6/0x8
 [<c026bfce>] ? xfs_ilock+0xee/0x100
 [<c013fcd6>] ? down_write_nested+0x76/0x90
 [<c026bfce>] ? xfs_ilock+0xee/0x100
 [<c026bfce>] xfs_ilock+0xee/0x100
 [<c0290fb4>] xfs_inactive+0x334/0x540
 [<c01b382b>] ? inotify_inode_is_dead+0x1b/0x80
 [<c029d4ef>] xfs_fs_clear_inode+0x1f/0x30
 [<c019b7bb>] clear_inode+0x8b/0x110
 [<c019bf06>] generic_delete_inode+0xe6/0x120
 [<c0449d86>] ? _spin_lock+0x66/0x70
 [<c019c09f>] generic_drop_inode+0x15f/0x230
 [<c02c0958>] ? _atomic_dec_and_lock+0x18/0x40
 [<c019b477>] iput+0x47/0x50
 [<c0198a4f>] dentry_iput+0x6f/0xc0
 [<c0198b74>] d_kill+0x24/0x50
 [<c019a03b>] dput+0x5b/0x120
 [<c018a892>] __fput+0x162/0x240
 [<c018a98f>] fput+0x1f/0x30
 [<c01873f7>] filp_close+0x47/0x70
 [<c018748c>] sys_close+0x6c/0xd0
 [<c0102e48>] sysenter_do_call+0x12/0x36
