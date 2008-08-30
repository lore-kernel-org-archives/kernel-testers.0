From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 11:11:05 -0700
Message-ID: <86802c440808301111i2880a13eq61155b8c7b1ed3dd@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <200808301532.57307.rjw@sisk.pl>
	 <86802c440808300905v5056fe0apdc6e328d99dff090@mail.gmail.com>
	 <200808301915.00381.rjw@sisk.pl>
	 <86802c440808301055o1a8bc6a9iddbc066f016ef6d6@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=qYSaAGIn1r4sQRjMQbly0Q7EvHbuQOyLDR7bZOyGOYg=;
        b=gUOIGtDOR/5hjCwv159UXCmRxNMigr8MJ/wuQtip72b6osSVU+fb2vM4VDXo4L4U1q
         1YHZ0/0uCp/1DITwe0z1H10VsIqq7SGTwgqtRwKKxta2BlXDqPvKMUaJ4gSZoBEvPEkG
         LQBj39WspW/c8yO/7ROMBlQXD89TMhWHouXPc=
In-Reply-To: <86802c440808301055o1a8bc6a9iddbc066f016ef6d6-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Aug 30, 2008 at 10:55 AM, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Sat, Aug 30, 2008 at 10:14 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>
>>
>> Could you please rebase them on top of current -git?
>
> please check attached quilt series based on linus tree.

there is some problem with fix -v4...on one test machine.

please don't use it now

YH
