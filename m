From: Cyrill Gorcunov <gorcunov@gmail.com>
Subject: Re: wrong final bzImage build (regading #14270)
Date: Fri, 9 Oct 2009 18:58:25 +0400
Message-ID: <20091009145825.GE5311@lenovo>
References: <4ACF460E.7000901@msgid.tls.msk.ru>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1761009AbZJIO7J@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=oP78k69UCcEFxxG9e/QoJLZ21jTtSaygG6ltb+Kzuwg=;
        b=OUzeZDCREnl85EhakSt0g1CM00HLtWO4eKVop3JoCfPlK6X8weBlAMOicWMG2Rtz8T
         3OzvjXs4D9o1EAWqA2PAW/RmU9qQtMglDIO5zLzSYhXbsuabME97KQEz7BgsR6xzwnkO
         OzH7DnOkrLIG4u+mx9k16IcOFiGu0m56JX6+s=
Content-Disposition: inline
In-Reply-To: <4ACF460E.7000901@msgid.tls.msk.ru>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Michael Tokarev <mjt@tls.msk.ru>
Cc: Kernel Mailing List <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Kernel Testers List <kernel-testers@vger.kernel.org>, Sam Ravnborg <sam@ravnborg.org>, "H. Peter Anvin" <hpa@zytor.com>

Peter and Sam CC'ed

[Michael Tokarev - Fri, Oct 09, 2009 at 06:17:50PM +0400]
> Ok, finally the mystery solved.  After a week of
> digging.
>
> The original problem was titled "Cannot boot on
> a PIII Celeron", and Rafael filed a bug #14270
> for this.
>
> In short, what I observed was that a new kernel
> (2.6.31) fails to boot on a PIII Celeron machine.
> But changing just the CPU to plain PIII and voila,
> it now works.  I don't know why it behaved this
> way, but I found where was the problem, finally.
>
> And the problem is in the last stage of build, when
> building the bzImage.
>
> make -f scripts/Makefile.build obj=arch/x86/boot/compressed arch/x86/boot/compressed/vmlinux
> ...
>   (cat arch/x86/boot/compressed/vmlinux.bin | lzma -9 && echo -ne \\x38\\xd6\\x37\\x00) > arch/x86/boot/compressed/vmlinux.bin.lzma
> ...
>
> Note the echo command.
>
> Now, Debian switched to dash as /bin/sh.  And dash
> does not understand the -e option:
>
> $ dash -c 'echo -ne \\x38\\xd6\\x37\\x00' | od -x
> 0000000 6e2d 2065 785c 3833 785c 3664 785c 3733
> 0000020 785c 3030 000a
>
> $ bash -c 'echo -ne \\x38\\xd6\\x37\\x00' | od -x
> 0000000 d638 0037
>
> So the final size (it's the size of uncompressed file)
> becomes incorrect.  Here's what mkpiggy outputs for
> this (in arch/x86/boot/compressed/piggy.S):
>
>  z_output_len = 170930296
>
> while it should be
>
>  z_output_len = 3659320
>
> And with the former (wrong, larger) size, the whole
> thing just reboots on a PIII Celeron.  I've no idea
> why, but the original problem is here.
>
> The same thing happens with bzip2 algorithm which is
> not new, not only with lzma.
>
> The whole thing looks quite hackish to me, -- mkpiggy
> can know the size from the original image just fine,
> instead of getting it from the end of already compressed
> file.
>
> For now, quick fix is to change echo to printf in there.
> Correct fix is to re-write mkpiggy to look at the
> original file for size (IMHO anyway).
>
> And this is a very good candidate for -stable as well.
> The bug is very difficult to find.  And now when more
> and more people who use Debian are switching to dash,
> it will be more common.
>
> Thanks!
>
> /mjt
>

	-- Cyrill
