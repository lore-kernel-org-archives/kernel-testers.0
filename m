From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #10872] x86_64 boot hang when CONFIG_NUMA=n
Date: Mon, 7 Jul 2008 00:15:39 -0700
Message-ID: <86802c440807070015qbfdbf08s62ce5c37092d0fb5@mail.gmail.com>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	 <uBi7uNfg81L.A.XLC.s0LcIB@albercik>
	 <20080706111750.a6d77e81.randy.dunlap@oracle.com>
	 <20080707064227.GA27622@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=cv7JzzboY/fsoQ1O5jHNn6ZQXgUCfMsNk4Be9dttIPg=;
        b=CJIo/aNJwvXjiWAq66QnJqbJdYR31UitT9oar7VQ3tZcj5gUG3tkqwcHOQXMZvAaNk
         77RMk92Iyc4zeBeH06/3cADcH/4yk4Bw54o1H1A2q3qp44/q08Dpr7w8hCaejfJWlmtW
         MX0Pu26IOxV8oWo4q9w/pdaHO8ihOWzAPkeno=
In-Reply-To: <20080707064227.GA27622-X9Un+BFzKDI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Jul 6, 2008 at 11:42 PM, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org> wrote:
>
> * Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org> wrote:
>
>> This still happens with 2.6.26-rc9.  Using CONFIG_NUMA=y boots OK.
>
> one thing i dont see you having followed up on is whether tip/master
> works fine:
>
>  http://lkml.org/lkml/2008/6/11/355

in the response to me, he said tip/master has the same problem

YH
