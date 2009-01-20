From: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at
	fs/xfs/support/debug.c:108
Date: Tue, 20 Jan 2009 15:33:19 -0500
Message-ID: <20090120203319.GA7103@infradead.org>
References: <20090110143924.GA25900@infradead.org> <a4423d670901100709v1e7ce0bfs167547c5001787ac@mail.gmail.com> <20090110152803.GA7469@infradead.org> <20090110221459.GA8873@orion> <20090111104659.GB8071@disturbed> <a4423d670901111648w26e86baajcf7b6d98ff37d043@mail.gmail.com> <20090112034550.GI8071@disturbed> <a4423d670901120008j728af9cdrbed8bbb938117ea3@mail.gmail.com> <20090112211848.GL8071@disturbed> <a4423d670901201054t3e48ece2ned4a7e3254250fce@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <a4423d670901201054t3e48ece2ned4a7e3254250fce-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>, Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, Jan 20, 2009 at 09:54:44PM +0300, Alexander Beregalov wrote:
> Hi
> 
> Is it a new bug?
> It is pre-2.6.29-rc1 kernel, which was supossed to be free of the bug
> "fs_is_ok, file: fs/xfs/xfs_btree.c, line: 3327"

From the trace it's a post-btree consolidation kernel, so all the bugs
in -rc1 are there, too.  It looks like this is the readahead type
cockup that Geert noticed, so this particular one should be fixed in
-rc2.

I would strongly recommend to just turn on CNFIG_LBD for post-2.6.28
kernels for now as all the problems showing up are without CONFIG_LBD.
