From: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at
	fs/xfs/support/debug.c:108
Date: Mon, 12 Jan 2009 14:45:50 +1100
Message-ID: <20090112034550.GI8071@disturbed>
References: <a4423d670901091353s7ff12207gcb38eb093d77d401@mail.gmail.com> <a4423d670901091418j5c7fdfb2oeba2f4640f8e29d0@mail.gmail.com> <a4423d670901091511y68a53808rfaab8148526224c6@mail.gmail.com> <a4423d670901100419s2ae106bexac1a538caf654153@mail.gmail.com> <20090110143924.GA25900@infradead.org> <a4423d670901100709v1e7ce0bfs167547c5001787ac@mail.gmail.com> <20090110152803.GA7469@infradead.org> <20090110221459.GA8873@orion> <20090111104659.GB8071@disturbed> <a4423d670901111648w26e86baajcf7b6d98ff37d043@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <a4423d670901111648w26e86baajcf7b6d98ff37d043-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Mon, Jan 12, 2009 at 03:48:13AM +0300, Alexander Beregalov wrote:
> > Hmmmm - this might be getting closer to the source of the bug.
> > It's being detecting when reading in the buffer to do a left shift
> > now, not during the delete of a record.
> >
> > I'd suggest that you treat this as the same failure and continue
> > the bisect to try to find when no problems show up at all.
> 
> 687b890a184fef263ebb773926e1f4aa69240d01 is the first bad commit.

    [XFS] implement generic xfs_btree_lshift

    Make the btree left shift code generic. Based on a patch from David
    Chinner with lots of changes to follow the original btree implementations
    more closely. While this loses some of the generic helper routines for
    inserting/moving/removing records it also solves some of the one off bugs
    in the original code and makes it easier to verify.

> Does it make sense?

Yes, a bug in that patch could corrupt the btree in memory which we then trip
over later in delrec before it has been written to disk.

Thank you for isolating the problem to that commit - it greatly narrows down
the amount of code we need to search to find the bug. I'll have a look tonight
to see if I can spot the problem.

Cheers,

Dave.
-- 
Dave Chinner
david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org
