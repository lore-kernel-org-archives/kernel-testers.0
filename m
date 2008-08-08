From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: 2.6.26-rc: SPARC: Sun Ultra 10 can not boot
Date: Fri, 08 Aug 2008 03:38:11 -0700 (PDT)
Message-ID: <20080808.033811.129671951.davem@davemloft.net>
References: <a4423d670808080231nc4d5e25q6636fe8ff090b84@mail.gmail.com>
	<20080808.024024.205614839.davem@davemloft.net>
	<a4423d670808080314weed9178o9f9ef52803a68501@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <a4423d670808080314weed9178o9f9ef52803a68501-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: mikpe-1zs4UD6AkMk@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sparclinux-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Fri, 8 Aug 2008 14:14:00 +0400

> 2008/8/8 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
> > From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date: Fri, 8 Aug 2008 13:31:40 +0400
> >
> >> 2008/8/8 David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
> >> > From: "Alexander Beregalov" <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> > Date: Mon, 7 Jul 2008 19:59:04 +0400
> >> >
> >> >> I have turned off LOCKDEP and it boots properly.
> >> >> 2.6.26-rc9-00005-g1b40a89
> >> >>
> >> >> Mikael's config also does not contain LOCKDEP.
> >> >
> >> > I have finally reproduced the problem locally and figured out the
> >> > bug.
> >> >
> >> > Please try this patch:
> >> >
> >> Thanks David,  but 2.6.27-rc2-00166-gaeee90d hangs in the same way.
> >
> > That patch was for you to add on top of whatever tree you
> > have handy.  Did you apply the patch?
> >
> > That patch will fix all trees.
> >
> Yes, I applied it manually on top of 2.6.27-rc2-0166

And then the problem goes away right?
