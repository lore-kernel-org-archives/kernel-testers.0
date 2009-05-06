From: Einar Hov <einhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Compiling kernel for IBM N2200
Date: Wed, 6 May 2009 23:53:25 +0200
Message-ID: <7cba2b760905061453v66175e24mbc6b92d0c4db8ace@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type:content-transfer-encoding;
        bh=+PKFTow8mtB0ezZIE/RS5HJ1zoviXSTFg696eMmeHGU=;
        b=bxzu+m+nAugcwjipP1JxC/HX1AdDJPJ3nZeR7w0vNxMeT9d9q2waB3VUPzxxQYsySN
         ncFXLTI6TwcxLxBYKEzVI9KelRn9UOeUUeUkPIfO0LUa3C5W+dn1Qxy0m8IfaX7D1CIY
         9n4SyVQtf6HcgKAHyZn4XsuN7+8GKquht6LEk=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi, I hope this mail is submitted to the correct mailing list for the purpose.
I am trying to compile the 2.6.20.3 kernel, as I've got a working
binary for that from http://sourceforge.net/projects/linux2200-26/,
using the .config accompanying said binary. The linux2200-26 README
file states:

"This package includes a compiled and patched kernel
which is ready to run, the .config file for the kernel,
a resoltuion-patch(to 1024x768x16@60Hz) for the geode-fb driver
and the compiled driver-modules.

To get your own compiled kernel working on the N2200 you have
to take the vmlinux-file form arch/i386/boot/compressed and
patch the elf program-header-count to 1 (offset 0x2C)."

However, using the beforementioned .config, running 'make vmlinux'
does not compile a vmlinux ELF binary to the
./arch/i386/boot/compressed directory, nor will the ./vmlinux ELF
binary boot on the N2200 even after patching the program-header-count
(The N2200 loads the kernel into RAM and shuts itself off on
completion). Is there supposed to be compiled a vmlinux ELF to the
[...]/compressed directory, or could I be supposed to be doing
something with the vmlinux plaintext files in that folder? I'd ask the
linux2200-26 project guys, but the help section seems like it haven't
had any activity since 2007 so I think the project's dead now...

Thanks in Advance,
Grachev.
