From: Carl-Valentin Schmitt <cv.debian-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: kernel 3.2.2 and Debian Squeeze 6.0.4 with installed nvidia-drivers
Date: Tue, 31 Jan 2012 22:56:26 +0100
Message-ID: <CALO-Nbpz7fn76-yZudVG58-4K+c2BqQ0Fdv5SirZawO9Mm7ujQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=Xq95QqF6VAYl4+QusBqZoxUxapIpGJmeDeQ6L+l2Zyg=;
        b=WM3UC0b99PvNm6tQTNv4FXXUq/eoNautXeMNxGZxQDi1Cd4YUir9heDugou38JU/hH
         lzZdnRBYnO3C0wu1yMPYFd7fX0UGUAvEk7pR/qHdRwK4Eg0J1Qt7PR/fIhTo0AaO1hTh
         F83S8XSFZjU6LsQFmWOKLTWo/Cu1ZnrhFjaoU=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hello dear testers,

I don't know, if this problem is kernel-specific or Debian-specific or
nvidia-specific :

When I want to compile 3.2.2 with:

make all

after a while it breaks off with:

  LD      drivers/gpu/vga/built-in.o
  LD      drivers/gpu/built-in.o
ld: error: drivers/gpu/vga/built-in.o: incompatible target
make[2]: *** [drivers/gpu/built-in.o] error 1
make[1]: *** [drivers/gpu] error 2
make: *** [drivers] error 2

The Debian-own nvidia-drivers-package is installed and is working fine so far.

How can I avoid this error above ?
It should work ... with kernel 3.2.2

For feedback tuvm.
Regards.
Val.
cv.schmitt-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
