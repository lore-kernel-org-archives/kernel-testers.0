From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 17:20:38 -0700
Message-ID: <86802c440808291720w67de2285yc8cf645ff3b70666@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <200808292157.24179.rjw@sisk.pl>
	 <86802c440808291413t4f31993fmba59a65aefd906ca@mail.gmail.com>
	 <200808300031.16708.rjw@sisk.pl>
	 <86802c440808291624t2bd0229w2da36dfc6c794b18@mail.gmail.com>
	 <alpine.LFD.1.10.0808291704070.3300@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=CAEB+Bvel3AF84qbWubYh6RztbCT8pQJN3inOjhhxEM=;
        b=EiiZfKCOwicxWcdwHM0rLo6OR4x3DKn2ja2RuUxTDhivGRWCyeAqjElaBcRfvfVs1M
         rX7GduuWREZ3c5xhcEyrsbYGh2YKnIuHzGkjniIW/WLvNOHBRWkfgq1Rr/a5RwnO6kOZ
         keO52h2pffXcdGYuZJr0lZpNdWa32ft+jMNW0=
In-Reply-To: <alpine.LFD.1.10.0808291704070.3300-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Aug 29, 2008 at 5:08 PM, Linus Torvalds
<torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>
>
> On Fri, 29 Aug 2008, Yinghai Lu wrote:
>> >
>> > http://www.sisk.pl/kernel/debug/mainline/2.6.27-rc5/broken.log
>>
>> pci 0000:00:00.0: BAR has MMCONFIG at e0000000-ffffffff
>
> And that seems utter crap to begin with.
>
>        PCI: Using MMCONFIG at e0000000 - efffffff
>
> Where did it get that bogus "ffffffff" end address?
>
> Anyway, that whole MMCONFIG/BAR thing was totally broken to begin with,
> and it's reverted now in my tree, so I guess it doesn't much matter.

we need to handle it. otherwise if the BAR go first, and it will stop
other BARs to be registered...

a quirk should do the work....

Rafael, can you send out lspci -tv and lspci --vvxxx too.

YH
