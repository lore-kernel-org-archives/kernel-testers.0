From: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13667] drm: display arifacts when X.Org is stopped
Date: Thu, 30 Jul 2009 20:40:29 +1000
Message-ID: <21d7e9970907300340t79e063e1n18cdba11538c2fdc@mail.gmail.com>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
	 <21d7e9970907081642l3ef6df5blde31df656cd74432@mail.gmail.com>
	 <200907090328.53643.elendil@planet.nl>
	 <200907251833.42598.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=kHtXyVXa4kpUeMF0giLrB/H7liS+jDDkXmLjr2E2sIs=;
        b=DcV8Ng/noaDt6IHKPXFhtc+Cwe9p148bnF5cvb//2sBtfqbRERtNC1nrXMk6UoAmYf
         QYanrYwIbNvhcUJwiRzuSUhSMQSozazOpms5luDKsJY1cM/55crzEbdkLfL+Ba6bsJ48
         xhG/sOH78o1qWeB0bH2L+BZk4PEqbi+fwdEp8=
In-Reply-To: <200907251833.42598.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Siddha, Suresh B" <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sun, Jul 26, 2009 at 2:33 AM, Frans Pop<elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org> wrote:
> On Thursday 09 July 2009, Frans Pop wrote:
>> > However we shall endeavour to fix this issues as it may be systemic
>> > of something else going wrong in the new PAT/AGP code.
>>
>> Great. Thanks in advance, I do appreciate it.
>
> Any news on this?\

http://git.infradead.org/users/dwmw2/iommu-agp.git

don't suppose you could pull that tree in and see if it helps?

Dave.

>
>> BTW, today I noticed another regression, but I have not yet looked into
>> it deeply. When I suspend I normally see at least some console messages
>> from the suspend procedure on the framebuffer console, but with .31-rc2
>> I only see a cursor. It does not really affect the suspend/resume.
>> Could possibly be related. Will investigate further.
>
> This turned out to be unrelated, and is actually an improvement. It's a
> logical result of a printk patch I submitted (for .32):
> http://lkml.org/lkml/2009/7http://lkml.org/lkml/2009/7/6/108/6/108
>
> Cheers,
> FJP
>
