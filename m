From: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #19062] Dirtiable inode bdi default != sb bdi btrfs
Date: Mon, 4 Oct 2010 06:12:12 -0400
Message-ID: <20101004101212.GA25617@infradead.org>
References: <MEG5YPP-fxC.A.vnD.So6nMB@chimera>
 <sQALkqF1FWE.A.15D.bo6nMB@chimera>
 <20101002165433.GL21129@thunk.org>
 <201010022358.35972.rjw@sisk.pl>
 <20101003022707.GN21129@thunk.org>
 <4CA89E63.4080907@kernel.org>
 <20101004095943.GE3589@quack.suse.cz>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20101004095943.GE3589-+0h/O2h83AeN3ZZ/Hiejyg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>
Cc: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ted Ts'o <tytso-3s7WtUTddSA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Cesar Eduardo Barros <cesarb-PWySMVKUnqmsTnJN9+BGXg@public.gmane.org>, Jens Axboe <axboe-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>, Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

On Mon, Oct 04, 2010 at 11:59:44AM +0200, Jan Kara wrote:
>   Yes, it's caused by one of my fixes. It's harmless (the warning I've
> added is just too strict). Christoph has a patch that also fixes this
> - http://lkml.org/lkml/2010/9/29/76. I hope he'll push it soon.

Jens is the writeback maintainer, so he will have to pick it up.
