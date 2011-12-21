From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Resend] 3.2-rc6+: Reported regressions from 3.0 and 3.1
Date: Tue, 20 Dec 2011 20:44:33 -0800
Message-ID: <CA+55aFx=B9adsTR=-uYpmfJnQgdGN+1aL0KUabH5bSY6YcwO7Q@mail.gmail.com>
References: <201112210054.46995.rjw@sisk.pl> <CA+55aFzee7ORKzjZ-_PrVy796k2ASyTe_Odz=ji7f1VzToOkKw@mail.gmail.com>
 <4EF15F42.4070104@oracle.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:from:date
         :x-google-sender-auth:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=Rnd3UPEsKIwP4kevg6LmPW0Qwu9UiQ1U2WNdj/OeLHg=;
        b=ooxupUl20f8XefIi4tc6fiEDuHK1BeFnz3asdj6RpfeVCOzxpp5dKE0vW6ieHtxrym
         k+RGSr0yAJDyTRrLbl4j7JWlLWgu1t31OOsIBsoF6hubtDta7/Gsyxd1fwaLaRXliVi/
         s025I1yoAYSM/aipBCJZsu/1dFDnG6RWu0kdQ=
In-Reply-To: <4EF15F42.4070104-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Dave Kleikamp <dave.kleikamp-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Kleikamp <shaggy-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, jfs-discussion-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, Hugh Dickins <hughd-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Al Viro <viro-RmSDqhL/yNMiFSDQTTA3OLVCufUGDwFn@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org

On Tue, Dec 20, 2011 at 8:23 PM, Dave Kleikamp <dave.kleikamp-QHcLZuEGTsthl2p70BpVqQ@public.gmane.org=
m> wrote:
>
> I don't think this is a regression. =A0It's been seen before, but the
> patch never got submitted, or was lost somewhere. I believe this
> will fix it.

Hmm. This patch looks obviously correct. But it looks *so* obviously
correct that it just makes me suspicious - this is not new or seldom
used code, it's been this way for ages and used all the time. That
line literally goes back to 2007, commit eb2be189317d0. And it looks
like even before that we had a GFP_KERNEL for the add_to_page_cache()
case and that goes back to before the git history. So this is
*ancient*.

Maybe almost nobody uses __read_cache_page() with a non-GFP_KERNEL gfp
and as a result we've not noticed.

Or maybe there is some crazy reason why it calls "add_to_page_cache()"
with GFP_KERNEL.

Adding the usual suspects for mm/filemap.c to the cc line (Andrew is
already cc'd, but Al and Hugh should comment).

Ack's, people? Is it really as obvious as it looks, and we've just had
this bug forever?

            Linus

--- snip snip ---
> vfs: __read_cache_page should use gfp argument rather than GFP_KERNEL
>
> lockdep reports a deadlock in jfs because a special inode's rw semaph=
ore
> is taken recursively. The mapping's gfp mask is GFP_NOFS, but is not =
used
> when __read_cache_page() calls add_to_page_cache_lru().
>
> Signed-off-by: Dave Kleikamp <dave.kleikamp-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
>
> diff --git a/mm/filemap.c b/mm/filemap.c
> index c106d3b..c9ea3df 100644
> --- a/mm/filemap.c
> +++ b/mm/filemap.c
> @@ -1828,7 +1828,7 @@ repeat:
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0page =3D __page_cache_alloc(gfp | __GF=
P_COLD);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if (!page)
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0return ERR_PTR(-ENOMEM=
);
> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 err =3D add_to_page_cache_lru(page, map=
ping, index, GFP_KERNEL);
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 err =3D add_to_page_cache_lru(page, map=
ping, index, gfp);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if (unlikely(err)) {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0page_cache_release(pag=
e);
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if (err =3D=3D -EEXIST=
)
