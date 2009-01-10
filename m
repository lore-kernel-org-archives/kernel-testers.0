From: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at
	fs/xfs/support/debug.c:108
Date: Sat, 10 Jan 2009 10:28:03 -0500
Message-ID: <20090110152803.GA7469@infradead.org>
References: <20090109044121.GA31280@orion> <20090109053858.GP9448@disturbed> <a4423d670901091353s7ff12207gcb38eb093d77d401@mail.gmail.com> <a4423d670901091418j5c7fdfb2oeba2f4640f8e29d0@mail.gmail.com> <a4423d670901091511y68a53808rfaab8148526224c6@mail.gmail.com> <a4423d670901100419s2ae106bexac1a538caf654153@mail.gmail.com> <20090110143924.GA25900@infradead.org> <a4423d670901100709v1e7ce0bfs167547c5001787ac@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <a4423d670901100709v1e7ce0bfs167547c5001787ac-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sat, Jan 10, 2009 at 06:09:05PM +0300, Alexander Beregalov wrote:
> > That would be odd as 7f7c39ccb6045cf1fd5e7684a484c445291b44d4 only
> > changes the tracing code which currently isn't enabled.  Or we
> > get some sort of miscompilation due slightly different noop
> > macros.
> I meant the first bad commit is between these two commits. All of them
> fail to compile as is,
> I added xfs_btree_trace.h manually to compile it, I got different bugs
> on these commits,
> but I am not sure if they are really different. Like this:

Ah crap.  When lachlan checked in the btree tracing he forgot to
add that header and it only got in after that.  Can you bisect
further between those commit by just using xfs_btree_trce.h from
a newer version?  It hasn't had a single change yet since it was
commited.

This is quite important as all changes between these two revisions
are quite large and deal with consolidating the btree code.
