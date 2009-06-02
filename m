From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc6: BUG at fs/xfs/support/debug.c:109!
Date: Tue, 2 Jun 2009 12:21:47 +0400
Message-ID: <a4423d670906020121v131c9c12t35c3ffc7df048ee9@mail.gmail.com>
References: <a4423d670906010822l6e8e112dl3d6f7de9e2179850@mail.gmail.com>
	 <B5660F1A-7940-4E4A-92E8-8C0F93C274BD@sgi.com>
	 <a4423d670906011038qd809ebay22aebca5aaf271a4@mail.gmail.com>
	 <D7FB8214-6C2B-4D13-9B50-C53CB74885C2@sgi.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=udLN/cX+yssfeYtV7FNS26uecqXv1apDdCbhV/HV59A=;
        b=wfrCz8Lp5AUOHeWo/Cu9Vf5F5AfvZw7SYVrRSRqSqkRpc4iQFHqAXKKcFdP3gzehNQ
         1rloGZgkKO34pSNaPoWbZblscP3uydEYyFwY6VhNKaK2suXvkDOqq0TScLg9/2P4PjI7
         Z6omz9crslLOYnG/2Xw969K6bHJNi9U3b+oN8=
In-Reply-To: <D7FB8214-6C2B-4D13-9B50-C53CB74885C2-sJ/iWh9BUns@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

2009/6/1 Felix Blyakher <felixb-sJ/iWh9BUns@public.gmane.org>:
>
> On Jun 1, 2009, at 12:38 PM, Alexander Beregalov wrote:
>
>> It was Gentoo's `emerge --metadata`. It reads many small files (ebuilds).
>> I am sure it cannot be easily reproduced.
>
> Right. Otherwise many more people would've reported it.
>
>> It runs fine everyday. I do not have a testcase.
>> I can try to run it forever in loop if you need.
>
> Yes, that will be good.
> The problem is that the traces are confusing. From one
> side readdir stack makes sense based on your description
> of the load, but OTOH the panic is from xfs_bmapi(), which
> doesn't fit in that backtrace at all. It seems like
> backtrace is from the concurrently running different thread.
> Don't have good idea for this bug atm.

The host is still running, SysRq-W shows two precesses with the same
stacktraces.

SysRq : Show Blocked State
  task                        PC stack   pid father
emerge        D 0000000000000000  3856  8399   8387
 ffff880078da7b48 0000000000000046 ffff8800074b4b40 ffff880078da7af4
 0000000000000001 000000000000d948 00000000001d2000 0000000000000001
 ffff8800074b4b40 ffff88007f4725a0 ffff8800074b4eb8 0000000100000246
Call Trace:
 [<ffffffff802e7328>] ? do_lookup+0xd8/0x270
 [<ffffffff806d707d>] __mutex_lock_common+0x16d/0x4f0
 [<ffffffff802e7328>] ? do_lookup+0xd8/0x270
 [<ffffffff80280eb0>] ? trace_hardirqs_on+0x20/0x40
 [<ffffffff802e7328>] ? do_lookup+0xd8/0x270
 [<ffffffff806d7528>] mutex_lock_nested+0x48/0x70
 [<ffffffff802e7328>] do_lookup+0xd8/0x270
 [<ffffffff802e7776>] __link_path_walk+0x2b6/0xf00
 [<ffffffff802e884c>] ? do_path_lookup+0xec/0x200
 [<ffffffff802e884c>] ? do_path_lookup+0xec/0x200
 [<ffffffff802e863e>] path_walk+0x7e/0x100
 [<ffffffff802e8816>] do_path_lookup+0xb6/0x200
 [<ffffffff802e9bd8>] do_filp_open+0xf8/0x9e0
 [<ffffffff802f6199>] ? alloc_fd+0x49/0x170
 [<ffffffff806d987f>] ? _spin_unlock+0x3f/0x80
 [<ffffffff802f6289>] ? alloc_fd+0x139/0x170
 [<ffffffff802d7f6b>] do_sys_open+0x9b/0x130
 [<ffffffff802d806e>] sys_open+0x2e/0x50
 [<ffffffff8020ba6b>] system_call_fastpath+0x16/0x1b
emerge        D 0000000000000000  3280  1643   1901
 ffff88000f43bb48 0000000000000046 ffff88002dc33870 ffff88000f43baf4
 0000000000000001 000000000000d948 00000000001d2000 0000000000000003
 ffff88002dc33870 ffff88007ea30000 ffff88002dc33be8 0000000300000246
Call Trace:
 [<ffffffff802e7328>] ? do_lookup+0xd8/0x270
 [<ffffffff802e7328>] ? do_lookup+0xd8/0x270
 [<ffffffff806d707d>] __mutex_lock_common+0x16d/0x4f0
 [<ffffffff802e7328>] ? do_lookup+0xd8/0x270
 [<ffffffff80280eb0>] ? trace_hardirqs_on+0x20/0x40
 [<ffffffff802e7328>] ? do_lookup+0xd8/0x270
 [<ffffffff806d7528>] mutex_lock_nested+0x48/0x70
 [<ffffffff802e7328>] do_lookup+0xd8/0x270
 [<ffffffff802e7776>] __link_path_walk+0x2b6/0xf00
 [<ffffffff802e884c>] ? do_path_lookup+0xec/0x200
 [<ffffffff802e884c>] ? do_path_lookup+0xec/0x200
 [<ffffffff802e863e>] path_walk+0x7e/0x100
 [<ffffffff802e8816>] do_path_lookup+0xb6/0x200
 [<ffffffff802e9bd8>] do_filp_open+0xf8/0x9e0
 [<ffffffff802f6199>] ? alloc_fd+0x49/0x170
 [<ffffffff806d987f>] ? _spin_unlock+0x3f/0x80
 [<ffffffff802f6289>] ? alloc_fd+0x139/0x170
 [<ffffffff802d7f6b>] do_sys_open+0x9b/0x130
 [<ffffffff802d806e>] sys_open+0x2e/0x50
 [<ffffffff8020ba6b>] system_call_fastpath+0x16/0x1b


I will try to reproduce it.
