From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 14:13:21 -0700
Message-ID: <86802c440808301413g7f496e8bxd21adc60b328cd24@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <86802c440808301314t525d1b75r9afcc73857cf5c79@mail.gmail.com>
	 <86802c440808301338h59a5338rabe9e64560b55476@mail.gmail.com>
	 <200808302246.48199.rjw@sisk.pl>
	 <86802c440808301412k4e0b5562ie03ce41547ddab9a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=O8p/rDHHRortUtGd6mWVqavCH/ZHOHJK9b5ct5TlwOo=;
        b=RjFYjtoJ22FWJaluVgHcbm3iC0jiZDLwPG5itH4DIMOWALNcsBIHjLa96RIntAs1o6
         pAIjZ9dOo0cZxCGzZU0pFw3pYJYyIcSezJEIQ3AUGpycJ+F4sTIlFD9k/AP7IDDMPzp5
         cnLfsHBMw8zGSW0odxd59ParVfw8vjtshp1NU=
In-Reply-To: <86802c440808301412k4e0b5562ie03ce41547ddab9a-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Aug 30, 2008 at 2:12 PM, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Sat, Aug 30, 2008 at 1:46 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> On Saturday, 30 of August 2008, Yinghai Lu wrote:
>>> please check
>>>
>>> [PATCH] x86: split e820 reserved entries record to late v4
>>> [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
>>
>> What kernel should I apply those to and in what order?
>
> linus git tree
> 1. [PATCH] x86: split e820 reserved entries record to late v4
> 2. [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
>
> tip/master
> 1. Resource handling: add 'insert_resource_expand_to_fit()' function
> 2. [PATCH] x86: split e820 reserved entries record to late v4 - fix v6

actually it is almost the same to tar ball send you for your system...

YH
