From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 19:17:36 -0700
Message-ID: <86802c440808301917n67d2fb34k96137829a49d36ac@mail.gmail.com>
References: <349034.72587.qm@web82104.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=iQLsSX2B2ZjE54UXiy2lt86rSstt9Lt2YN6jsIQyHII=;
        b=r8qYj7wv1dGa0e+W9XeFPw2k9tQ4av18T+EyBylvPem/wznaKaDdeiBu9RfVXJUP7k
         cI1XjINICGtYmxEZVrbWOmzBlfOpXPMPJgf5sswLXQJBgp12Bn9hFqZyH7ZuUrC2q3N/
         bu1/8TBkG7AxEMmJ0/K3NQOXErvO9RI5vR1J4=
In-Reply-To: <349034.72587.qm-Yi6apYOI+buvuULXzWHTWIglqE1Y4D90QQ4Iyu8u01E@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Sat, Aug 30, 2008 at 6:25 PM, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org> wrote:
>
>
>> please use split_e820_reserve_xx2.patch instead...
>
> OK, that produces the same result:  a happy kernel!
>
> I compared the full 'dmesg' output from the previous build and the
> current build using diff:  the only differences were trivial --
> return times from initcall functions, and the order in which some
> initcalls were performed was different very late in the boot process.

good, let wait for Ingo back to check the two patches too.

YH
