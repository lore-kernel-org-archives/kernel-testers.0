From: Carl-Valentin Schmitt <cv.debian-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: kernel 3.2.2 and Debian Squeeze 6.0.4 with installed nvidia-drivers
Date: Tue, 31 Jan 2012 23:00:04 +0100
Message-ID: <CALO-NboiULjAOwO=ewwG0qJy6qUGUG3jmURnwSyA-NFugAZfTw@mail.gmail.com>
References: <CALO-Nbpz7fn76-yZudVG58-4K+c2BqQ0Fdv5SirZawO9Mm7ujQ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=xKloR0MKZr37vMThGGrX9N3JoxfaQnXegeCWGO+FGOw=;
        b=VHEdmjiDozGAtOMhpLCUF+/bZYN+yPDVMeGmOpc1vqMx9cGBigVCZJw/tSAb2ObVob
         DjHPjkJvxPZC+o8GkbryZZtFSRRT11yq/d3GwArPmW4svVVU3gQGCwB+CSJwmMBLkbhM
         8voBqx1/ayCazcXQL8d1eRFcod3g3PJLVWfDY=
In-Reply-To: <CALO-Nbpz7fn76-yZudVG58-4K+c2BqQ0Fdv5SirZawO9Mm7ujQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

please reply to:
cv.debian-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

because this mailing-list is not working
here. I already subscribed and unsubscribed here 3 or 4 times.

but all mails of this mailing-list of kernel-testers are not sent to
cv.debian-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

I guess majordomo is doing something wrong.

Regards.
Val.


---------- Forwarded message ----------
=46rom: Carl-Valentin Schmitt <cv.debian-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Date: 2012/1/31
Subject: kernel 3.2.2 and Debian Squeeze 6.0.4 with installed nvidia-dr=
ivers
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org


Hello dear testers,

I don't know, if this problem is kernel-specific or Debian-specific or
nvidia-specific :

When I want to compile 3.2.2 with:

make all

after a while it breaks off with:

=A0LD =A0 =A0 =A0drivers/gpu/vga/built-in.o
=A0LD =A0 =A0 =A0drivers/gpu/built-in.o
ld: error: drivers/gpu/vga/built-in.o: incompatible target
make[2]: *** [drivers/gpu/built-in.o] error 1
make[1]: *** [drivers/gpu] error 2
make: *** [drivers] error 2

The Debian-own nvidia-drivers-package is installed and is working fine =
so far.

How can I avoid this error above ?
It should work ... with kernel 3.2.2

=46or feedback tuvm.
Regards.
Val.
cv.schmitt-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
