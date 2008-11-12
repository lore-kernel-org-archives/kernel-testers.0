From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.28-rc4: BUG: spinlock lockup on CPU#0
Date: Wed, 12 Nov 2008 03:09:54 +0300
Message-ID: <a4423d670811111609l37dcfe6bme277692b5206b5ec@mail.gmail.com>
References: <20081111233230.GC12456@orion>
	 <20081111.154902.11426409.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=lUCCG5T0LLnw7UUd7YvPWRwmuywwisyZtVjs29pz7EQ=;
        b=ZpQHwHZv6yyXFCs+aam2SfKowmrNC0rXTgTIYQQraCGczqWiWV5H7EEM7NnaNZYddk
         oXMKhNJs2tFR0dKUnijYS9pL38T6OldAv0hS51zFtNqlNVBbZsazfM6WNBb7uwti/qD+
         BTvlkZC/LnUiMzptQ+QELR2pw2RlUQvOAPymo=
In-Reply-To: <20081111.154902.11426409.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org

2008/11/12 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
> From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date: Wed, 12 Nov 2008 02:32:30 +0300
>
>> It is on sparc64 (Ultra 10). 2.6.28-rc4-00011-g3ad4f59
>>
>> BUG: spinlock lockup on CPU#0, metalog/1322, 00000000007f1430
>> Kernel panic - not syncing: Aiee, killing interrupt handler!
>>
>> It seems Sysrq does not work.
>>
>> David, how can I provide more info before I reboot it ?
>>
>> Full dmesg:
>
> Hmm, this BUG message should have given you a register dump and a
> backtrace.
>
> Can you give it a "Alt-SysRQ-p" and show the output?
No, sysrq does not work, even Stop-A does not work now.
How could it be.

>
> Actually, if you got this over a serial console or
> similar, you're not getting the register dump because
> the console loglevel is filtering them out.
Yes, I use netconsole.

>
> If that's what's happening, reboot with "ignore_loglevel"
> (I always boot with this option, by adding it to the
> default kernel command line options in /etc/silo.conf)
>
> Also, in situations where the system is already booted and
> you want to see things like the Alt-SysRQ-p register dumps
> on the console, you'll need to type something like
> "Alt-SysRQ-8" to bump the console log level.

Yes, I know, thanks.

Ok, I have rebooted it, let's hope this will happen again...

Hm, fsck says Superblock write time is in future.
But rtc-m48t59 works correctly now
