From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 12:29:31 -0700
Message-ID: <86802c440808301229u45df4cc3m298a479f5ec4ad1@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808301150150.3290@nehalem.linux-foundation.org>
	 <200808302129.24584.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=LP8O5AOybbOiPT/0qGTRgoy+w5abre4+3+Q96TKrbs8=;
        b=bfIup3Seqsfc+LKeuHSya7bwvRByqpzw19+83gSLFcJWjDhiZPKdgMRgltrB3mJN4B
         8IVp3v1ApKotVS4vEB3ftYcXDQG2ULMg57NsKWWTDSDHho9S+xIyNDrIVHhfNotFDXhg
         XI1ZLjIxiU6Sfpikm8FxRHJOgQvFY1prO72MI=
In-Reply-To: <200808302129.24584.rjw-KKrjLPT3xs0@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Aug 30, 2008 at 12:29 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

>
> There are some at:
> http://www.amd.com/us-en/Processors/TechnicalResources/0,,30_182_739_15137,00.html
>
> Well, that's 690/SB600 only and I'm not sure how useful this is.
>
that is for HW guys.

YH
