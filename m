From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: cant compile kernel on sparc
Date: Fri, 30 May 2008 17:03:45 -0700 (PDT)
Message-ID: <20080530.170345.193722195.davem@davemloft.net>
References: <a4423d670805300709p2abfd475s85d7068238a56adc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670805300709p2abfd475s85d7068238a56adc-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernelnewbies-qDhp9YYfzQpg9hUCZPvPmw@public.gmane.org

From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Fri, 30 May 2008 18:09:16 +0400

> I am trying to configuring and compiling the kernel for sparc.
> I have got the following error

The way cross compilers are used on gentoo for kernel
building doesn't work any more.  Using:

make CROSS_COMPILE=sparc64-linux-

is a workaround.  In the long term gentoo should build
32-bit gccs that can generate both 32-bit and 64-bit
code.  I've added infrastructure to gcc mainline such
that any sparc dist maintainer merely need to add
"--enable-targets=all" to do that.  Most distributions
have patches to enable this kind of facility that
they've been using for years.
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
