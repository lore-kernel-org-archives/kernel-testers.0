From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Fri, 6 Nov 2009 10:51:37 +0100
Message-ID: <200911061051.40443.elendil@planet.nl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <200910262206.13146.elendil@planet.nl> <200911052114.36718.elendil@planet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200911052114.36718.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Chris Mason <chris.mason-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Reinette Chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mohamed Abbas <mohamed.abbas-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Thursday 05 November 2009, Frans Pop wrote:
> On Monday 26 October 2009, Frans Pop wrote:
> > On Tuesday 20 October 2009, Mel Gorman wrote:
> > > I've attached a patch below that should allow us to cheat. When it's
> > > applied, it outputs who called congestion_wait(), how long the
> > > timeout was and how long it waited for. By comparing before and
> > > after sleep times, we should be able to see which of the callers has
> > > significantly changed and if it's something easily addressable.
> >
> > The results from this look fairly interesting (although I may be a bad
> > judge as I don't really know what I'm looking at ;-).
> >
> > I've tested with two kernels:
> > 1) 2.6.31.1: 1 test run
> > 2) 2.6.31.1 + congestion_wait() reverts: 2 test runs
>
> I've taken another look at the data from this debug patch, resulting in
> these graphs: http://people.debian.org/~fjp/tmp/kernel/congestion.pdf
>
> I think the graph may show the reason for the congestion_wait()
> regression. Horizontal axis shows time, vertical axis shows number of
> logged congestion_wait calls per type.

I'm sorry. My initial version had a skewed time axis (showed occurrences 
instead of actual time). I've now uploaded a corrected version:
http://people.debian.org/~fjp/tmp/kernel/congestion.pdf

I've also uploaded a second version that shows cumulative delay per type, 
which probably gives a better insight:
http://people.debian.org/~fjp/tmp/kernel/congestion2.pdf

For both the top chart is without the revert, the bottom one after the 
revert.
