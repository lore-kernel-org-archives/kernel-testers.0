From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [regression][x86_64] 2.6.26-02962-g4515889, kernel panic on boot.
Date: Thu, 17 Jul 2008 11:19:00 -0700
Message-ID: <86802c440807171119g6da184c6p4df5a1896d70c815@mail.gmail.com>
References: <1216291089.6158.13.camel@zwerg> <1216317806.6341.15.camel@zwerg>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=1Cx6UyT84ZPVCM3OJBxsRVA2vk9Y1R1pyvcdlGTuGw0=;
        b=qSPxTCkZmncIJclQNZsXF853zOLa4h9rbWGhnx6Kp2GXgCzRme4c6J04giZHEzyNBV
         jZy9etaPzdhsCBbuWY1XYqZDaEOl6EVy88ksBMRlVQ3xebpRh0LYA1JeIyLR6GviQN/h
         SCsQilZRyE+ZtbepYfroZWjCnpKDlYwmEw/qw=
In-Reply-To: <1216317806.6341.15.camel@zwerg>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexey Fisher <bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org>
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jeremy-TSDbQ3PG+2Y@public.gmane.org, gcosta <gcosta-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Thu, Jul 17, 2008 at 11:03 AM, Alexey Fisher
<bug-track-M18mAb7Tlt0yCq4wW13eYl6hYfS7NtTn@public.gmane.org> wrote:
> last working kernel 1ecd27657b735128a728ebf0c31fce5e1456718a
> x86: unify crashkernel reservation for 32 and 64 bit
>
> kernel i can compile but not working
> 55f262391a2365d657a00ed68edd1a51bca66af5
> x86: rename setup_32.c to setup.c
>
> it will freeze with message:
> Kernel alive
> Kernel really alive
> PANIC: early exception 0e rip 10:ffffffff803178b2 error 2 cr2
> ffffffffff300000

can you connect serial console and boot with
debug apic=verbose console=uart8250,io,0x03f8,115200n8?

YH
