From: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13371] s2disk hangs with kernel 2.6.29 and later, SATA, Gigabyte EG45M-DS2H
Date: Mon, 25 May 2009 16:30:21 +0200
Message-ID: <200905251630.21781.bzolnier@gmail.com>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <200905251448.40907.bzolnier@gmail.com> <20090525134522.GA7805@arbonne.lan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version
         :content-disposition:message-id:content-type
         :content-transfer-encoding;
        bh=gL3yDyxMDrPCiauo1ReCYUYLFvibFXeYCO6jyFVV7Cg=;
        b=loljrUwCGbLyJqpZVymX5TriZg/PjavbCkZjhWCP8HDuhjw6gx76rAaD0IwptAsNk4
         m8NUyLOeboG8g9OxQBqEQ3C0JUU8Q40GCNekrV2ISzn+z2+wdJmaWOo/pFaxu3c2dKSv
         P78iC1blxjVO3KQztaGcxuaiDp975Z0MfPBIA=
In-Reply-To: <20090525134522.GA7805-dsTKODJrvkThXIiyNabO3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 25 May 2009 15:45:22 Richard Atterer wrote:
> Hello,
> 
> this bug is still present, but so far (despite lots of useful help by 
> Bartlomiej) I have been unable to bisect the issue.
> 
> We took some of the discussion off-list - here is a summary, with some new 
> results at the end:
> 
> * I originally bisected the bug and identified this patch as the culprit:
> 295f00042aaf6b553b5f37348f89bab463d4a469: ide: don't execute the next 
> queued command from the hard-IRQ context (v2)
> 
> * The fix for 295f000 (2ea5521: ide: fix suspend regression) did not fix my 
> problem either.
> 
> * After some mails, I switched to CONFIG_IDE=n in the config I use for 
> testing (was CONFIG_IDE=m before), because the problem still occurred in 
> that case. The result of this:
> 295f000 (ide: don't execute the next queued command from the hard-IRQ
>         context (v2)): ***Works*** with CONFIG_IDE=n
> 2ea5521 (ide: fix suspend regression): Hangs with CONFIG_IDE=n
> 1406de8 (2.6.30-rc6): Hangs with CONFIG_IDE=n
> 
> I also disconnected my second (PATA) disk at that point, since it does not 
> influence the bug. So my system is SATA-only, both the (single) hard disk 
> and my DVD writer are SATA.
> 
> * I bisected 295f000..2ea5521 and ended up at this as the first bad commit:
> 9ea09af3bd3090e8349ca2899ca2011bd94cda85: stop_machine: introduce stop_machine_create/destroy.
> This turns out to be a bug that was fixed by
> a0e280e0f33f6c859a235fb69a875ed8f3420388: stop_machine/cpu hotplug: fix disable_nonboot_cpus
> 
> * a0e280e worked for me, so (with increasing grumpiness;) I bisected 
> a0e280e..2ea5521. This bisect didn't work, I ended up with a reported "bad" 
> commit which was clearly not the problem. The configs and bisect log are at
> <http://atterer.net/s2disk-config/>
> The bisect log lines with "OK" mean that I went back and booted the kernel 
> a second time, to make sure I hadn't mixed something up. But the second 
> tries all had the same result as the first.
> 
> * Bart analysed that part of the history and suggested trying out 73d5931, 
> and if that worked, bisecting 73d5931..2ea5521.
> 
> Today I re-tried both 73d5931 and 2ea5521, and it turns out that in both 
> cases, s2disk hangs. :-|

I think that we can safely skip 73d5931 (btrfs merge) then and mark
the previous commit (6ddaab20c32af03d68de00e7c97ae8d9820e4dab) as
the 'bad' one.

Lets also assume that the last 'good' one (according to your last
bisect results) is ce279e6ec91c49f2c5f59f7492e19d39edbf8bbd.

git log ce279e6..6ddaab2 yields 473 commits, mostly looking unrelated
(regulator, scsi, oprofile, parisc, mtd, ext4) but we have also ACPI
and hibernate changes.

Hmm, we added ACPI NVS memory handling there and some machines seem
to have trouble with it.  I think it would be worth to check it first.

Richard, could you try s2disk on some recent 2.6.30-rc kernel while
booting using "acpi_sleep=s4_nonvs"?

Thanks.
Bart
