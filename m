From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: 2.6.30-rc5: reiserfs is broken on parisc (bisected)
Date: Tue, 12 May 2009 20:40:20 +0400
Message-ID: <a4423d670905120940r5de3eab7v7e8e92d89107b962@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type:content-transfer-encoding;
        bh=UNV5OhG8idiTn44oDyt0RDs7h+9rpEzDVyvQQYZM7vw=;
        b=R+pe9HvmypCByq2F/MtyPFWuYhygqdFUixiNl46x2itbsTgItIYTC5hOa49+lY3q/G
         2Lds/QWC2LNjRGBN/dXw5hs5NhSYVm8Q7zoFIRPmm++YUp3KMYkkOWJgGqFrSbTc24CN
         IrWzB23OQlrFxvjIsNz+I9WoOgblH0l73NYus=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-parisc-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>, Al Viro <v>

Hi

ab17c4f02156c4f75d7fa43a5aa2a7f942d47201 is the first bad commit
(reiserfs: fixup xattr_root caching)

Kernel panics when init tries to remount rootfs (reiserfs) with
read-write access.
Read-only access works fine.

No more messages on the screen before panic.

Is it endianess related?
