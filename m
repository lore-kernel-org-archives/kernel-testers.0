From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: s2disk hang update
Date: Thu, 25 Feb 2010 21:04:51 +0100
Message-ID: <201002252104.51187.rjw@sisk.pl>
References: <9b2b86521001020703v23152d0cy3ba2c08df88c0a79@mail.gmail.com> <201002242152.55408.rjw@sisk.pl> <9b2b86521002250510m75c8b314o37388a04b53a2b67@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <9b2b86521002250510m75c8b314o37388a04b53a2b67-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Cc: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Linux MM <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>

On Thursday 25 February 2010, Alan Jenkins wrote:
> On 2/24/10, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > On Wednesday 24 February 2010, Alan Jenkins wrote:
...
> 
> > -	while (to_free_normal > 0 && to_free_highmem > 0) {
> > +	while (to_free_normal > 0 || to_free_highmem > 0) {
> 
> Yes, that seems to do it.  No more hangs so far (and I can still
> reproduce the hang with too many applications if I un-apply the
> patch).

OK, great.  Is this with or without the NOIO-enforcing patch?

> I did see a non-fatal allocation failure though, so I'm still not sure
> that the current implementation is strictly correct.
> 
> This is without the patch to increase "to_free_normal".  If I get the
> allocation failure again, should I try testing the "free 20% extra"
> patch?

Either that or try to increase SPARE_PAGES.  That should actually work with
the last patch applied. :-)

Rafael
