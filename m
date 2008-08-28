From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: SLUB/debugobjects locking (Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26)
Date: Thu, 28 Aug 2008 15:42:26 +0200
Message-ID: <19f34abd0808280642j529eab2ct17722644d1550ad9@mail.gmail.com>
References: <19f34abd0808251244v439e78b1hbb24f77c637559c3@mail.gmail.com>
	 <6278d2220808261514p2661251aw914215652c547125@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=7JdfBoOlAblbeZipSz3B19gQO+zoFl1fUZq6pTr6v4E=;
        b=BHBdBRixHdZwScrdyUCBeBFLdW5hNiu0TQAx1HSDhUZ5AmEK3ilXd+JW2eva0OYbOy
         z76EzekNwvEF29tzC6GirjBVbrXPsZd3Gr2F2HafGwpx/6sEeA7A44RikcpdDfZmCL4t
         785GNVvfNZElmpqmFCZFGbwDWDKVIDJJnTopM=
In-Reply-To: <6278d2220808261514p2661251aw914215652c547125-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Christoph Lameter <clameter-sJ/iWh9BUns@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, Aug 27, 2008 at 12:14 AM, Daniel J Blueman
<daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Mon, Aug 25, 2008 at 8:44 PM, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> I tried your suggestion of promoting the lock to irq-safe, and it
>> fixed the warning for me (didn't get or look for deadlocks yet, but it
>> seems likely that it is caused by the same thing?), the patch is
>> attached for reference.
>>
>> I also don't know if this is the best fix, but I also don't have any
>> other (better) suggestions.
>>
>> Others are welcome to pick it up from here...
>
> The solution looks like is needs to get the lock ordering correct
> w.r.t. SLUB, as we get this, alas:
>
> =======================================================
> [ INFO: possible circular locking dependency detected ]
> 2.6.27-rc4-229c-debug #1

Hm. Is this with my first patch + the one in the e-mail you replied
to? It was intended to be a delta patch on top of my first one.

That would be the one in

    http://marc.info/?l=linux-kernel&m=121946972307110&w=4

plus the one in

    http://marc.info/?l=linux-kernel&m=121969394110327&w=1

Thanks for testing and sorry for the confusion. (Maybe I just confused
myself. Please let me know either way.)


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
