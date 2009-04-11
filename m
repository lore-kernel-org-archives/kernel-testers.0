From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Regression: EEE PC hangs when booting off battery
Date: Sat, 11 Apr 2009 10:41:35 +0100
Message-ID: <49E065CF.6040408@tuffmail.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:sender:message-id:date:from
         :user-agent:mime-version:to:cc:subject:content-type
         :content-transfer-encoding;
        bh=wHowyTDqrHXSsMrBNPLu/VnryMK5GAwW7ue5qku9PmM=;
        b=a+pLGA12rYYPpvzHECiytGk4IAcWdmTPlhr0x8yNQnuGdMVYxOf5CCzji2iuIoY6ZF
         VqvUsayjVhsnbnC6rZDJ2p9krYCWRSgm+LrlqRNg3YRPPPj9WWdUo87RqLPd8UNJtN6n
         4J5uslzzmE3ZutW06k41X9CDhvjKbpYmgq+9A=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-acpi-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Regression #6 on latest git! (last known good is 2.6.29-rc8)

My EEE PC hangs on bootup if it is not connected to mains power.  The
hang happens during udev coldplug.  I've left it for >60 seconds with
nmi_watchdog=1, soft lockup and hung task detection are enabled, and I
get no trace.  Key presses are not echoed to the screen.

Magic SysRQ keys work though.  Unfortunately, SysRq-W / SysRq-T generate
too much output, so the useful bits immediately scroll off the top of
the screen.  I can't press SysRq-P (even if that would help), because
the SysRQ key on my laptop is accessed using a Fn modifier key, which
also turns the left hand side of the keyboard into a numeric pad.

Magic SysRQs on my USB keyboard generate no response.  (Sometimes the
numlock key seems to work though.  I can't tell on the laptop keyboard
because the laptop doesn't have a numlock led).

I also tried booting with vga=ask (anticipating nmi_watchdog output),
and selecting the highest mode, 80x60.  It turns out that this doesn't
really work, the screen flickers constantly until userspace changes the
console font.  However, it avoided the hang in udev coldplug.  Instead,
the hang occurred when X started, leaving me with a black screen and a
non-responsive X cursor.

Booting with acpi=off fixes this.

Regards
Alan
