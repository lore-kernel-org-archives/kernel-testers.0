From: "Jaswinder Singh" <jaswinderlinux@gmail.com>
Subject: Re: [Bug #11272] BUG: parport_serial in 2.6.27-rc1 for NetMos Technology PCI 9835
Date: Sun, 10 Aug 2008 12:24:14 +0530
Message-ID: <3f9a31f40808092354s3d057effm6ed1d2f506fb4637@mail.gmail.com>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
	 <cX_-nNkxKaF.A.F6.BDjnIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-serial-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=FugZG47wlIcvoYMtW8/PVBh1zxB9gQvqap3TgliJgHE=;
        b=UqJ+taa1+gE3BmRf76Q/24TeyRkrqKEESct2sA+k/ufiWWm+pwCqRUlhN15FxGCUjd
         UVDjr1aSDpc8m/YgMLEsvVj+u3EOUmpFsb15hY3RpqScgtQ0YyzxIsHJdo0gIp0s0kWf
         nnONxzPay8VM0R6wZPVSr/Zs7ma6Ub8g+KrPE=
In-Reply-To: <cX_-nNkxKaF.A.F6.BDjnIB@albercik>
Content-Disposition: inline
Sender: linux-serial-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, David Woodhouse <dwmw2@infradead.org>, linux-serial@vger.kernel.org

Hello all,

On Sun, Aug 10, 2008 at 4:13 AM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11272
> Subject         : BUG: parport_serial in 2.6.27-rc1 for NetMos Technology PCI 9835
> Submitter       : Jaswinder Singh <jaswinderlinux@gmail.com>
> Date            : 2008-08-05 15:12 (5 days old)
> References      : http://marc.info/?l=linux-kernel&m=121794900319776&w=4
>
>

This problem still exists on 2.6.27-rc2

When I connect  development boads to /dev/ttyS1 and /dev/ttyS2:
bootloader still prints Junk (Garbage Characters) but when Linux
starts then it becomes readable and normal.

So I thought problem is in bootloader so I connected different kind of
develepment boards and all shows junk characters during boot-loading.

But when I connect  development boads to /dev/ttyS0 : bootloader
messages are readable and normal with same settings.

If you need more info and need help in debugging, please let me know.

Thank you,

Jaswinder Singh.
