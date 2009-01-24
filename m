From: Christoph Hellwig <hch-jcswGhMUV9g@public.gmane.org>
Subject: Re: [xfs-masters] 2.6.29-rc: kernel BUG at fs/xfs/support/debug.c:108
Date: Sat, 24 Jan 2009 04:22:10 +0100
Message-ID: <20090124032210.GA30366@lst.de>
References: <20090110152803.GA7469@infradead.org> <20090110221459.GA8873@orion> <20090111104659.GB8071@disturbed> <a4423d670901111648w26e86baajcf7b6d98ff37d043@mail.gmail.com> <20090112034550.GI8071@disturbed> <a4423d670901120008j728af9cdrbed8bbb938117ea3@mail.gmail.com> <20090112211848.GL8071@disturbed> <a4423d670901201054t3e48ece2ned4a7e3254250fce@mail.gmail.com> <20090120203319.GA7103@infradead.org> <a4423d670901231034k6971ed91tbed3d6eab05d7285@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <a4423d670901231034k6971ed91tbed3d6eab05d7285-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, xfs-masters-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, xfs-VZNHf3L845pBDgjK7y7TUQ@public.gmane.org

On Fri, Jan 23, 2009 at 09:34:36PM +0300, Alexander Beregalov wrote:
> But I do not need LBD. Does XFS strongly require LBD?
> Should I always turn it on even if I do not have files or devices of size 2Tb+ ?

The bug is now fixed in the development tree, but until you upgrade
to a kernel with the fix enabling CONFIG_LBD will keep you from hitting
the bug.

As you unfortunately noticed the !CONFIG_LBD case doesn't really get
much test coverage, so I would personally recommend turning it on even
if you don't need it.
