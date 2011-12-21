From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH v2] vfs: __read_cache_page should use gfp argument
 rather than GFP_KERNEL
Date: Wed, 21 Dec 2011 12:28:43 -0800
Message-ID: <20111221122843.18f673c7.akpm@linux-foundation.org>
References: <201112210054.46995.rjw@sisk.pl>
	<CA+55aFzee7ORKzjZ-_PrVy796k2ASyTe_Odz=ji7f1VzToOkKw@mail.gmail.com>
	<4EF15F42.4070104@oracle.com>
	<CA+55aFx=B9adsTR=-uYpmfJnQgdGN+1aL0KUabH5bSY6YcwO7Q@mail.gmail.com>
	<alpine.LSU.2.00.1112202213310.3987@eggly.anvils>
	<4EF211EC.7090002@oracle.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4EF211EC.7090002-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Kleikamp <dave.kleikamp-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Hugh Dickins <hughd-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, jfs-discussion-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Wed, 21 Dec 2011 11:05:48 -0600
Dave Kleikamp <dave.kleikamp-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org> wrote:

> [ updated to remove now-obsolete comment in read_cache_page_gfp()]
> 
> lockdep reports a deadlock in jfs because a special inode's rw semaphore
> is taken recursively. The mapping's gfp mask is GFP_NOFS, but is not used
> when __read_cache_page() calls add_to_page_cache_lru().

Well hang on, it's not just a lockdep splat.  The kernel actually will
deadlock if we reenter JFS via this GFP_KERNEL allocation attempt, yes?

Was that GFP_NOFS allocation recently added to JFS?  If not then we
should backport this deadlock fix into -stable, no?

