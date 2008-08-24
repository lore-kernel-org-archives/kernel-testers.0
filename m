From: "Vegard Nossum" <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Sun, 24 Aug 2008 20:43:45 +0200
Message-ID: <19f34abd0808241143t6f5239d7o679135e9e974fe63@mail.gmail.com>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
	 <alpine.LFD.1.10.0808241050180.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=3+IuvKjKBPgR7m74Lex3EyXeCVSRRA4zuB15PpcKTaE=;
        b=S9pV3ctFB/zDBMacKMk947QU2HFTbMoNYYskEYLSlUOiLGxoimJfv/IXdbHx/xW/Mn
         k8VvPM7gVoB4wsBVKQbqk4y9MdcpFa+oLygVb6JgEFXuxIDaD7SxrmFsDl9l7Nc05tZW
         LSNrjOCjBnBNCAnGjYY9CWPmbbzT8s8uSEZu8=
In-Reply-To: <alpine.LFD.1.10.0808241050180.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Aug 24, 2008 at 8:03 PM, Linus Torvalds
<torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>
>
> On Sat, 23 Aug 2008, Rafael J. Wysocki wrote:
>>
>> Bug-Entry     : http://bugzilla.kernel.org/show_bug.cgi?id=11410
>> Subject               : SLUB list_lock vs obj_hash.lock...
>> Submitter     : Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Date          : 2008-08-22 21:48 (2 days old)
>> References    : http://marc.info/?l=linux-kernel&m=121944176609042&w=4
>
> This one now has a suggested patch for Daniel to try from Vegard, but no
> reply yet:
>
>        http://marc.info/?l=linux-kernel&m=121946972307110&w=4
>

Hi!

> Vegard, I think your patch is a bit odd, though. The result of your patch
> is
>
>  - first loop:
>
>        hlist_for_each_entry_safe(obj, node, tmp, &db->list, node) {
>                hlist_del(&obj->node);
>                hlist_add_head(&obj->node, &freelist);
>        }
>
>   and quite frankly, I don't see what the difference between that and a
>   something like a simple
>
>        struct hlist_node *first = bd->list.first;
>        if (first) {
>                bd->list.first = NULL;
>                first->pprev = &first;
>        }
>
>   really is?
>
> I dunno. We don't have list splicing ops for the hlist things.

Hm.

I haven't really used the hlists before, so my first instinct was to
do what is obvious. That's also why I put the XXX comment. Other than
that, I guess open-coding list ops is also not very good programming
practice? :-)

But... feel free to submit your own patch. Oh, what am I saying.


Vegard

-- 
"The animistic metaphor of the bug that maliciously sneaked in while
the programmer was not looking is intellectually dishonest as it
disguises that the error is the programmer's own creation."
	-- E. W. Dijkstra, EWD1036
