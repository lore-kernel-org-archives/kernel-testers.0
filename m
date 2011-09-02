From: "Carlos R. Mafra" <crmafra-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #41512] 3.1-rc2 failed s2ram: Freezing of tasks failed
 after 20.00 seconds
Date: Fri, 2 Sep 2011 13:23:24 +0200
Message-ID: <20110902112324.GA6576@Pilar.site>
References: <lx6sezwGldO.A.IhF.UBpWOB@chimera>
 <sfuyzWlorBN.A.PrF.cBpWOB@chimera>
 <20110829063050.GA15560@Pilar.site>
 <201108292238.01713.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=faVFEdmACnha1sjTbTKFZ+0U7NQsWhmyXlFn54C0sh8=;
        b=jzyjSfeKON2YK5v/a2i+uXcY0yWmv3b+aNP11sVYTyH9fqymxHwdFycD7742/nKRIQ
         uJ+cEspTQwJbXniNxGZwIn4aYJVvu8YUUh2+3U2pwgn9kQBfi6DjgwurUMXfw7x6S7Ct
         wXZZj5TYP3B1s/I/wgu8xDpJm3nsFjlMtnH+Q=
Content-Disposition: inline
In-Reply-To: <201108292238.01713.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Mon, 29 Aug 2011 at 22:38:01 +0200, Rafael J. Wysocki wrote:
> On Monday, August 29, 2011, Carlos R. Mafra wrote:
> > On Sun, 28 Aug 2011 at 20:30:51 +0200, Rafael J. Wysocki wrote:
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 3.0.  Please verify if it still should be listed and let the tracking team
> > > know (either way).
> > 
> > It didn't happen again since then (with post -rc2 kernels).
> 
> Thanks, closing.

Unfortunately it happened again with the kernel 3.1-rc4, after an uptime
of 3 days and 15 hours with ~10 suspend to RAM in between (so I can't bisect).

The symptom is that when I close the lid to suspend, I notice that the power
led indicator does not switch from green to 'blinking red', and stays green all
the time. The fan seems to be on.

In fact, the first time I reported this issue I hadn't noticed that the suspend
failed and put the laptop inside my backpack and went to work. When I arrived 
the laptop was almost frying and it had been turned off automatically somehow.

From 'dmesg' I see some messages from the USB surfstick ~120 secs before the
traces. I did not disconnect from the surfstick internet before closing the lid
as I usually do (will check later if that's a way to reproduce).

[69489.551533] PM: resume of devices complete after 1365.354 msecs
[69489.551625] PM: Finishing wakeup.
[69489.551626] Restarting tasks ... done.
[69489.554183] video LNXVIDEO:01: Restoring backlight state
[69489.555548] usb 2-1.6: USB disconnect, device number 34
[69489.556046] option1 ttyUSB0: GSM modem (1-port) converter now disconnected from ttyUSB0
[69489.556055] option 2-1.6:1.0: device disconnected
[69489.556183] option1 ttyUSB1: GSM modem (1-port) converter now disconnected from ttyUSB1
[69489.556191] option 2-1.6:1.1: device disconnected
[69614.122681] INFO: task udisks-daemon:2945 blocked for more than 120 seconds.
[69614.122686] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
[69614.122691] udisks-daemon   D ffff8800d908e510     0  2945   2944 0x00000000
[69614.122699]  ffff8800a9d27928 0000000000000082 ffff8800a9d27928 00000000000105c0
[69614.122705]  ffff8800d908e140 00000000000105c0 ffff8800a9d27fd8 00000000000105c0
[69614.122711]  00000000000105c0 ffff8800a9d26000 ffff8800a9d27fd8 00000000000105c0
[69614.122717] Call Trace:
[69614.122731]  [<ffffffff814ca825>] schedule_timeout+0x1c5/0x230
[69614.122739]  [<ffffffff81030364>] ? check_preempt_curr+0x84/0xa0
[69614.122744]  [<ffffffff81030392>] ? ttwu_do_wakeup+0x12/0x90
[69614.122750]  [<ffffffff814c98b0>] wait_for_common+0xc0/0x160
[69614.122757]  [<ffffffff8103ec60>] ? try_to_wake_up+0x290/0x290
[69614.122762]  [<ffffffff81059a5d>] ? insert_work+0x6d/0x80
[69614.122768]  [<ffffffff814c99f8>] wait_for_completion+0x18/0x20
[69614.122772]  [<ffffffff81059c0b>] flush_work+0x2b/0x40
[69614.122779]  [<ffffffff810590e0>] ? do_work_for_cpu+0x30/0x30
[69614.122784]  [<ffffffff8105a186>] flush_delayed_work+0x46/0x50
[69614.122792]  [<ffffffff812190d6>] disk_clear_events+0x76/0x110
[69614.122798]  [<ffffffff811061c2>] check_disk_change+0x32/0x80
[69614.122804]  [<ffffffff812e9919>] sd_open+0xb9/0x190
[69614.122809]  [<ffffffff811070f1>] __blkdev_get+0x91/0x3d0
[69614.122814]  [<ffffffff81107770>] ? blkdev_get+0x340/0x340
[69614.122818]  [<ffffffff8110747e>] blkdev_get+0x4e/0x340
[69614.122825]  [<ffffffff810e1c87>] ? do_lookup+0xb7/0x380
[69614.122829]  [<ffffffff81107770>] ? blkdev_get+0x340/0x340
[69614.122834]  [<ffffffff811077cd>] blkdev_open+0x5d/0x80
[69614.122839]  [<ffffffff810d3ef0>] __dentry_open+0x130/0x320
[69614.122844]  [<ffffffff810d5191>] nameidata_to_filp+0x71/0x80
[69614.122849]  [<ffffffff810e2c21>] do_last+0xb1/0x800
[69614.122854]  [<ffffffff810e4773>] path_openat+0xd3/0x3f0
[69614.122860]  [<ffffffff81223b27>] ? kobject_put+0x27/0x60
[69614.122868]  [<ffffffff812ca032>] ? put_device+0x12/0x20
[69614.122873]  [<ffffffff810e4af4>] do_filp_open+0x44/0xa0
[69614.122880]  [<ffffffff810f0bb4>] ? alloc_fd+0xf4/0x150
[69614.122884]  [<ffffffff810d529c>] do_sys_open+0xfc/0x1e0
[69614.122889]  [<ffffffff810d3bf6>] ? filp_close+0x56/0x80
[69614.122893]  [<ffffffff810d539b>] sys_open+0x1b/0x20
[69614.122899]  [<ffffffff814cd0fb>] system_call_fastpath+0x16/0x1b
[69734.141207] INFO: task udisks-daemon:2945 blocked for more than 120 seconds.


Is there something else I could do to help finding out what's going on?
I will stop using the surfstick next month, so after that I won't be able
to check if it happens again.
