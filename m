From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 13:38:25 -0700
Message-ID: <86802c440808301338h59a5338rabe9e64560b55476@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <200808292157.24179.rjw@sisk.pl>
	 <alpine.LFD.1.10.0808291434110.3300@nehalem.linux-foundation.org>
	 <200808300030.32905.rjw@sisk.pl>
	 <alpine.LFD.1.10.0808301012060.3290@nehalem.linux-foundation.org>
	 <86802c440808301107n4561e815ldf53183c92a7bc93@mail.gmail.com>
	 <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org>
	 <86802c440808301210u6db1b4e7p4036bdc95db1a601@mail.gmail.com>
	 <alpine.LFD.1.10.0808301214310.3290@nehalem.linux-foundation.org>
	 <86802c440808301314t525d1b75r9afcc73857cf5c79@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=HdGPruI2xheqD81IP66loJCZQh7MU4sMYp8xmLTcBk4=;
        b=XudE6RvUciQ6RWZmKWTJm8QxDRo3JLtHTkS0IR92Xl3Arsze0rxU5frAtW4mHWZYQl
         Qz8G41YEyEDlLT7jWbLExzUaGpMZkrIlPU9p5fUtxw6vBSC+/F3mxzo2aYmIIkyd8gT2
         F1V5bFFmt4pAikw3yTmZlEkE73wLyHCHoEe1Q=
In-Reply-To: <86802c440808301314t525d1b75r9afcc73857cf5c79-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

please check

[PATCH] x86: split e820 reserved entries record to late v4
[PATCH] x86: split e820 reserved entries record to late v4 - fix v6

YH
