From: Carl-Valentin Schmitt <cv.debian-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: /dev/cdrom is supported - but not /dev/usb - at booting ?
Date: Mon, 30 Apr 2012 22:50:53 +0200
Message-ID: <CALO-NbpwoNhWv76_6yrVyDBfbGtMarHuE+AcOeA-O2900vgmQA@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=vu8IsGAxQdKbJta/rQX5kha315HWFGCKy4bJoBp8NV8=;
        b=Sh7KJq8Od3wJInD4Wcj1GGtnpUGU+BT7hlN4tlavCshAji78OO3cyT+sUD5WGTvdPL
         65CYPkLhsk1P8ezkREkfmRidrXqvTZSXnWTh50FoIh5yRfwgtADXYit3M2/DaZxQ5gGW
         99lli+qLnyYLjmh4ipwiLl/1esvrRdnDm5IqzS1I5CeldNES5Mj7P3J7V+XoRLmYS9pV
         Z4UGMbPkOPJdEWr+P3w2BlgIUp4gzS0I2mITaUWeAKEKCMPlambIeBuOG3ebm6RmVTGz
         tgZUpBf4mpOuPoIHAe7qwC9jthZtYkXRwdTExpBdSd7P5N/GgcoqzeX8Y7JV383SOHYI
         Y9UA==
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hello world !

It is not only concerning Installation-CD / DVD of Debian 6.0.4 (for AMD-64) ...
it is concerning many Installation-CD / DVD - distributions of Linux.

I have an 2-year-old USB-DVD-Drive of LG with device-name in BIOS:
HL-DT-STDVDRAM GP08LU11.

It is recognized by BIOS as USB-Drive, but not by installation-CD/DVD ...
somehow installation-CD/DVD is fixed on
/dev/cdrom
but not "understanding"
/dev/usb
or
/media/usb

I know - this is trivial ...
not knowing if this is a matter of kernel ?

Happy Coding.

Regards.
Val.
