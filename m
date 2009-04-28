From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: Re: [Bug #13112] Oops in drain_array
Date: Tue, 28 Apr 2009 23:44:51 +0900
Message-ID: <20090428234512P.fujita.tomonori@lab.ntt.co.jp>
References: <alpine.DEB.2.00.0904271327140.11650@chino.kir.corp.google.com>
	<20090428171139N.fujita.tomonori@lab.ntt.co.jp>
	<Pine.LNX.4.64.0904281425040.2455@galaxy.riz.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0904281425040.2455-Bi0AbNG1eu+dHxVRc3HrWQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: mmx-G/jkD+u3s4s@public.gmane.org
Cc: fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org, rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org, penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org

On Tue, 28 Apr 2009 14:43:37 +0200 (CEST)
Bart <mmx-G/jkD+u3s4s@public.gmane.org> wrote:

> > On Mon, 27 Apr 2009 13:36:46 -0700 (PDT)
> > David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> wrote:
> >
> >> On Mon, 27 Apr 2009, Bart wrote:
> >>
> >>> After turning the suggested debuging options I've got tons of these when
> >>> trying to stress the tape device like before:
> >>>
> >>> Apr 27 16:57:30 fs kernel: [   96.446708] slab error in verify_redzone_free():
> >>> cache `size-128': memory outside object was overwritten
> >>> Apr 27 16:57:30 fs kernel: [   96.446713] Pid: 0, comm: swapper Not tainted
> >>> 2.6.29.1-64 #2
> >>> Apr 27 16:57:30 fs kernel: [   96.446715] Call Trace:
> >>> Apr 27 16:57:30 fs kernel: [   96.446717]  <IRQ>  [<ffffffff8029adc5>]
> >>> __slab_error+0x1f/0x25
> >>> Apr 27 16:57:30 fs kernel: [   96.446728]  [<ffffffff8029b24b>]
> >>> cache_free_debugcheck+0x108/0x1d6
> >>> Apr 27 16:57:30 fs kernel: [   96.446731]  [<ffffffff8029b473>]
> >>> kfree+0x81/0xc2
> >>> Apr 27 16:57:30 fs kernel: [   96.446735]  [<ffffffff802bd311>]
> >>> bio_free_map_data+0xc/0x1e
> >>
> >> This appears to be kfree(bmd->iovecs) in bio_free_map_data().  It looks
> >> like the memcpy size in bio_set_map_data() overrides the kmalloc size; in
> >> other words, for a redzone error, bio->bi_vcnt > nr_pages in
> >> bio_copy_user_iov().
> >
> > Can you try this?
> >
> > diff --git a/fs/bio.c b/fs/bio.c
> > index 7bbc98f..6a09356 100644
> > --- a/fs/bio.c
> > +++ b/fs/bio.c
> > @@ -817,6 +817,9 @@ struct bio *bio_copy_user_iov(struct request_queue *q,
> > 		len += iov[i].iov_len;
> > 	}
> >
> > +	if (offset)
> > +		nr_pages += 1;
> > +
> > 	bmd = bio_alloc_map_data(nr_pages, iov_count, gfp_mask);
> > 	if (!bmd)
> > 		return ERR_PTR(-ENOMEM);
> >
> 
> There are no more errors in the dmesg after applying this patch to 
> 2.6.29.2.
> 
> Without this patch I can reproduce this kind of errors on 
> 2.6.29.1, 2.6.29.2.
> 
> I've not tested this patch with 2.6.29.1 and 2.6.30rc3-git3.
> I will try to reproduce the error on 2.6.30rc3-git3 as soon as I compile 
> it.

Thanks for testing! And very sorry about the bug.

I'm sure that you hit the same bug with 2.6.30-rc3-git.

Jens, can you please apply this against 2.6.30-rc (and we need this
for 2.6.29.x too)?

I know that bio_copy_user_iov() is hacky. I'll try to clean up the
mapping API later.

=
From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: [PATCH] bio: fix memcpy corruption in bio_copy_user_iov()

st driver uses blk_rq_map_user() in order to just build a request out
of page frames. In this case, map_data->offset is a non zero value and
iov[0].iov_base is NULL. We need to increase nr_pages for that.

Cc: stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Signed-off-by: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
---
 fs/bio.c |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/fs/bio.c b/fs/bio.c
index 7bbc98f..9871164 100644
--- a/fs/bio.c
+++ b/fs/bio.c
@@ -817,6 +817,9 @@ struct bio *bio_copy_user_iov(struct request_queue *q,
 		len += iov[i].iov_len;
 	}
 
+	if (offset)
+		nr_pages++;
+
 	bmd = bio_alloc_map_data(nr_pages, iov_count, gfp_mask);
 	if (!bmd)
 		return ERR_PTR(-ENOMEM);
-- 
1.6.0.6
