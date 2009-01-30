From: Peter Zijlstra <peterz@infradead.org>
Subject: Re: 2.6.29-rc3: page allocation failure
Date: Fri, 30 Jan 2009 09:59:18 +0100
Message-ID: <1233305958.4495.157.camel@laptop>
References: <a4423d670901300022w1d2fe742kddc94869cce2097d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <owner-linux-mm@kvack.org>
In-Reply-To: <a4423d670901300022w1d2fe742kddc94869cce2097d@mail.gmail.com>
Sender: owner-linux-mm@kvack.org
List-Id: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexander Beregalov <a.beregalov@gmail.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, linux-mm@kvack.org

On Fri, 2009-01-30 at 11:22 +0300, Alexander Beregalov wrote:
> rtorrent: page allocation failure. order:1, mode:0x4020
> Pid: 2161, comm: rtorrent Not tainted 2.6.29-rc3 #1
> Call Trace:

Unless its a very frequent phenomenon, I'd not worry too much about
this.

GFP_ATOMIC allocations (like the one you had here) can fail at any time,
and !0 order even more so.

--
To unsubscribe, send a message with 'unsubscribe linux-mm' in
the body to majordomo@kvack.org.  For more info on Linux MM,
see: http://www.linux-mm.org/ .
Don't email: <a href=mailto:"dont@kvack.org"> email@kvack.org </a>
