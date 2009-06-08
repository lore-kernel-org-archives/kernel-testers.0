From: Mathias Kretschmer <posting-ZcF2+9dVbKo@public.gmane.org>
Subject: Re: [Bug #13375] Kernel crash with 2.6.29 + nfs + xfs (radix-tree)
Date: Mon, 8 Jun 2009 09:40:14 +0200
Message-ID: <200906080940.14650.posting@blx4.net>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera> <alpine.DEB.1.10.0906071608010.3914@router.windsormachine.com> <200906080927.10479.posting@blx4.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200906080927.10479.posting-ZcF2+9dVbKo@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mike Dresser <mdresser_l-d1V2JtDI1HZNJje9z4SY99BPR1lH4CV8@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alex Samad <alex-SGFoFqf0RKf0CCvOHzKKcA@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>

oops.  I've overseen a BUG. this is on 2.6.30-rc8-git2 (with NFS still active):

Jun  7 00:04:29 [kernel] [18059.860915] reconnect_path: npd != pd
Jun  7 00:04:29 [kernel] [18059.876749] reconnect_path: npd != pd
Jun  7 00:04:29 [kernel] [18059.884702] reconnect_path: npd != pd
Jun  7 00:04:29 [kernel] [18060.605674] kernel BUG at lib/radix-tree.c:485!
Jun  7 00:04:29 [kernel] [18060.605689] CPU 1
Jun  7 00:04:29 [kernel] [18060.605693] Modules linked in: usbtouchscreen 
dvb_usb_cinergyT2 dummy bonding snd_emu10k1 snd_rawmidi snd_ac97_codec ac97_bus 
forcedeth snd_pcm hfcpci snd_page_alloc snd_util_mem snd_hwdep
Jun  7 00:04:29 [kernel] [18060.605721] Pid: 392, comm: kswapd0 Not tainted 
2.6.30-rc8-git2 #2 empty
Jun  7 00:04:29 [kernel] [18060.605726] RIP: 0010:[<ffffffff80451ad8>]  
[<ffffffff80451ad8>] radix_tree_tag_set+0x98/0xc0
Jun  7 00:04:29 [kernel] [18060.605743] RSP: 0018:ffff880226b05cd0  EFLAGS: 
00010246
Jun  7 00:04:29 [kernel] [18060.605748] RAX: 000000000000000c RBX: 
0000000000000000 RCX: 000000000000000c
Jun  7 00:04:29 [kernel] [18060.605752] RDX: 0000000000000000 RSI: 
000000000000040c RDI: ffff88022628e360
Jun  7 00:04:29 [kernel] [18060.605757] RBP: ffff880201159c00 R08: 
ffff88020119da28 R09: 0000000000000000
Jun  7 00:04:29 [kernel] [18060.605762] R10: 0000000000000000 R11: 
0000000000000001 R12: ffff880201159c00
Jun  7 00:04:29 [kernel] [18060.605766] R13: ffff88022505f400 R14: 
ffff880201159cf8 R15: ffff88022628e35c
Jun  7 00:04:29 [kernel] [18060.605772] FS:  0000000043d51950(0000) 
GS:ffff88002804e000(0000) knlGS:00000000f4ceab90
Jun  7 00:04:29 [kernel] [18060.605777] CS:  0010 DS: 0018 ES: 0018 CR0: 
000000008005003b
Jun  7 00:04:29 [kernel] [18060.605782] CR2: 000000000044b7c0 CR3: 
00000001e45fe000 CR4: 00000000000006e0
Jun  7 00:04:29 [kernel] [18060.605786] DR0: 0000000000000000 DR1: 
0000000000000000 DR2: 0000000000000000
Jun  7 00:04:29 [kernel] [18060.605791] DR3: 0000000000000000 DR6: 
00000000ffff0ff0 DR7: 0000000000000400
Jun  7 00:04:29 [kernel] [18060.605796] Process kswapd0 (pid: 392, threadinfo 
ffff880226b04000, task ffff880227981620)
Jun  7 00:04:29 [kernel] [18060.605803]  ffff88022628e320 ffffffff8040a1d6 
ffff880201159d80 0000000000000071
Jun  7 00:04:29 [kernel] [18060.606011] RIP  [<ffffffff80451ad8>] 
radix_tree_tag_set+0x98/0xc0
Jun  7 00:04:30 [kernel] [18060.606018]  RSP <ffff880226b05cd0>
Jun  7 00:04:30 [kernel] [18060.606026] ---[ end trace 0645e929a4fa40ac ]---
Jun  7 00:04:31 [kernel] [18061.930702] reconnect_path: npd != pd
Jun  7 00:04:31 [kernel] [18061.930944] reconnect_path: npd != pd
Jun  7 00:04:32 [kernel] [18063.327856] reconnect_path: npd != pd
Jun  7 00:04:32 [kernel] [18063.328465] reconnect_path: npd != pd
Jun  7 00:04:32 [kernel] [18063.328722] reconnect_path: npd != pd
Jun  7 00:04:32 [kernel] [18063.329075] reconnect_path: npd != pd
Jun  7 00:04:32 [kernel] [18063.329598] reconnect_path: npd != pd
Jun  7 00:04:32 [kernel] [18063.329734] reconnect_path: npd != pd
Jun  7 00:04:32 [kernel] [18063.330410] reconnect_path: npd != pd
Jun  7 00:04:32 [kernel] [18063.330538] reconnect_path: npd != pd


On Monday 08 June 2009 09:27:09 Mathias Kretschmer wrote:
> On Sunday 07 June 2009 22:09:23 Mike Dresser wrote:
> > > introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> > > be listed and let me know (either way).
> >
> > Still testing, but so far 2.6.30-rc8(or another RC) seems to have fixed
> > this.  I'd say to leave this open for now, there's at least one other
> > person testing 2.6.30-rc8 to see if it's fixed or not.
>
> I'm afraid my test here won't help much to answer this question.
>
> I've seen no more crashes, but starting with 2.6.29 I'm seeing so many
> 'reconnect_path: npd != pd' messages and am experiencing lots of 'stale NFS
> handles'  that I turned off NFS yesterday evening until I have more time to
> look into this.
>
> -Mathias
>
> > Mike
> >
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-kernel"
> > in the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at  http://www.tux.org/lkml/
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
