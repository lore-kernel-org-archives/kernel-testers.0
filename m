From: "Andrey Batyyev" <generatorglukoff-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Problems with keyboard and touchpad on Dell Vostro laptop
Date: Sat, 12 Jul 2008 19:39:19 +0300
Message-ID: <6b3463d20807120939x75cb1c82t1e4ec40ea3634740@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=WDv+ikoNFKt1/wBkVVpH9rMpjXwEt1QESVZREND9How=;
        b=arcgyUgKsnF9OsDfPO5Z//Xwd7bB8Z8Ptf2mCqzmiT8NQK5fKYIkoPjU6JG9ix+3V8
         DM7G/R+BrX57eaHcYmrskJuTmF+44/Z6iKv53goqyqz+cxQUX7x4yJ3dkbHZD302E5cM
         18r2U0r6BGepQPw1IM17ahdw5kB5pTcTiuPzA=
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hello everyone

I have strange problem - sometimes after reboot keyboard and touchpad
haven`t detected by kernel.

In dmesg with problem:

Jul 12 18:57:35 localhost kernel: [    1.117319] PNP: PS/2 Controller
[PNP0303:PS2K,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
Jul 12 18:57:35 localhost kernel: [    1.120832] serio: i8042 KBD port
at 0x60,0x64 irq 1
Jul 12 18:57:35 localhost kernel: [    1.121853] mice: PS/2 mouse
device common for all mice
Jul 12 18:57:35 localhost kernel: [    1.154825] input: PC Speaker as
/class/input/input4

In dmesg without problem:

Jul 12 19:09:00 localhost kernel: [    1.253884] PNP: PS/2 Controller
[PNP0303:PS2K,PNP0f13:PS2M] at 0x60,0x64 irq 1,12
Jul 12 19:09:00 localhost kernel: [    1.267810] serio: i8042 KBD port
at 0x60,0x64 irq 1
Jul 12 19:09:00 localhost kernel: [    1.268811] serio: i8042 AUX port
at 0x60,0x64 irq 12
Jul 12 19:09:00 localhost kernel: [    1.268973] mice: PS/2 mouse
device common for all mice
Jul 12 19:09:00 localhost kernel: [    1.294804] input: AT Translated
Set 2 keyboard as /class/input/input4
Jul 12 19:09:00 localhost kernel: [    1.314805] input: PC Speaker as
/class/input/input5
Jul 12 19:09:00 localhost kernel: [    1.444781] input: PS/2 Mouse as
/class/input/input6
Jul 12 19:09:00 localhost kernel: [    1.470777] input: AlpsPS/2 ALPS
GlidePoint as /class/input/input7
