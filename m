From: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Subject: Re: [PATCH][RFC] fix kernel BUG at mm/migrate.c:719! in 2.6.26-rc5-mm3
Date: Wed, 18 Jun 2008 15:19:46 +1000
Message-ID: <200806181519.46661.nickpiggin@yahoo.com.au>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org> <Pine.LNX.4.64.0806171925200.21436@blonde.site> <1213730922.8707.57.camel@lts-notebook>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1213730922.8707.57.camel@lts-notebook>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>
Cc: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Kosaki Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wednesday 18 June 2008 05:28, Lee Schermerhorn wrote:
> On Tue, 2008-06-17 at 19:33 +0100, Hugh Dickins wrote:
> > On Tue, 17 Jun 2008, Lee Schermerhorn wrote:
> > > Now I wonder if the assertion that newpage count == 1 could be
> > > violated? I don't see how.  We've just allocated and filled it and
> > > haven't unlocked it yet, so we should hold the only reference.  Do you
> > > agree?
> >
> > Disagree: IIRC, excellent example of the kind of assumption
> > that becomes invalid with Nick's speculative page references.
> >
> > Someone interested in the previous use of the page may have
> > incremented the refcount, and in due course will find that
> > it's got reused for something else, and will then back off.
>
> Yeah.  Kosaki-san mentioned that we'd need some rework for the
> speculative page cache work.  Looks like we'll need to drop the
> VM_BUG_ON().
>
> I need to go read up on the new invariants we can trust with the
> speculative page cache.

I don't know if I've added a summary, which is something I should
do.

The best thing to do is never use page_count, but just use get
and put to refcount it. If you really must use it:

- If there are X references to a page, page_count will return >= X.
- If page_count returns Y, there are no more than Y references to the page.

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
