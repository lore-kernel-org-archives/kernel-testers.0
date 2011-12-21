From: Al Viro <viro-3bDd1+5oDREiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
Subject: Re: [Resend] 3.2-rc6+: Reported regressions from 3.0 and 3.1
Date: Wed, 21 Dec 2011 07:10:39 +0000
Message-ID: <20111221071039.GH23916@ZenIV.linux.org.uk>
References: <201112210054.46995.rjw@sisk.pl>
 <CA+55aFzee7ORKzjZ-_PrVy796k2ASyTe_Odz=ji7f1VzToOkKw@mail.gmail.com>
 <4EF15F42.4070104@oracle.com>
 <CA+55aFx=B9adsTR=-uYpmfJnQgdGN+1aL0KUabH5bSY6YcwO7Q@mail.gmail.com>
 <alpine.LSU.2.00.1112202213310.3987@eggly.anvils>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LSU.2.00.1112202213310.3987-fupSdm12i1nKWymIFiNcPA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hugh Dickins <hughd-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Dave Kleikamp <dave.kleikamp-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Kleikamp <shaggy-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, jfs-discussion-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Tue, Dec 20, 2011 at 10:15:00PM -0800, Hugh Dickins wrote:

> Acked-by: Hugh Dickins <hughd-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
> 
> from me (and add_to_page_cache_locked does the masking of inappropriate
> bits when passing on down, so no need to worry about that aspect).

I was grepping for possibilities of that hitting us right now...  OK,
rigth you are.

Acked-by: Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>
