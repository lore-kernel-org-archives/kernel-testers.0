From: Xiaotian Feng <xtfeng-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15196] kmem_cache_create: duplicate cache ccid2_h
Date: Mon, 1 Feb 2010 11:30:02 +0800
Message-ID: <7b6bb4a51001311930i7d72f60dj3b15ca3e1a715607@mail.gmail.com>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
	 <d3IDKWHT5gE.A.8sB.Q7hZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=R/wRwMDbRxN8YADcX5IdX8FhK2Lj5IkbcD4wsBQzoVE=;
        b=Pzlr7aXi/FCy2DPpC/yoA8Qk4WH06GEOTxVL43t9UifUjYfY9jaaWhVTeJOQy/ZqCx
         rZqvDhzDOeXY0MUKpSUPPdB1iH9raSWIPcQjaunm4zBt2feTJXf7vtTaegZahkbAvHXr
         3JEwPTdoOR4Jiuq89yL/oY6468mbjMJYk6HEU=
In-Reply-To: <d3IDKWHT5gE.A.8sB.Q7hZLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, nhorman-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org

On Mon, Feb 1, 2010 at 8:22 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15196
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : kmem_cache_create: duplicate ca=
che ccid2_h
> Submitter =C2=A0 =C2=A0 =C2=A0 : Heinz Diehl <htd-HjJ2MNWy62to6+H+lsi3Gti2O/JbrIOy@public.gmane.org>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-30 18:33 (2 d=
ays old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D126487640324942&w=3D4

Cced Neil,

I think this one is introduced by commit
de4ef86cfce60d2250111f34f8a084e769f23b16,
passing char *slab_name_fmt as function parameter, but vsnprintf is
using sizeof(slab_name_fmt),
which is 8 (or 4 in 32bit kernel) instead of 32 as old version.

Does following patch resolve this bug, Heinz?

diff --git a/net/dccp/ccid.c b/net/dccp/ccid.c
index 57dfb9c..6e52879 100644
--- a/net/dccp/ccid.c
+++ b/net/dccp/ccid.c
@@ -77,13 +77,14 @@ int ccid_getsockopt_builtin_ccids(struct sock *sk, =
int len,
        return err;
 }

-static struct kmem_cache *ccid_kmem_cache_create(int obj_size, char
*slab_name_fmt, const char *fmt,...)
+static struct kmem_cache *ccid_kmem_cache_create(int obj_size, char
*slab_name_fmt,
+                                                int length,const char =
*fmt,...)
 {
        struct kmem_cache *slab;
        va_list args;

        va_start(args, fmt);
-       vsnprintf(slab_name_fmt, sizeof(slab_name_fmt), fmt, args);
+       vsnprintf(slab_name_fmt, length, fmt, args);
        va_end(args);

        slab =3D kmem_cache_create(slab_name_fmt, sizeof(struct ccid) +
obj_size, 0,
@@ -104,6 +105,7 @@ static int ccid_activate(struct ccid_operations *cc=
id_ops)
        ccid_ops->ccid_hc_rx_slab =3D
                        ccid_kmem_cache_create(ccid_ops->ccid_hc_rx_obj=
_size,
                                               ccid_ops->ccid_hc_rx_sla=
b_name,
+
sizeof(ccid_ops->ccid_hc_rx_slab_name),
                                               "ccid%u_hc_rx_sock",
                                               ccid_ops->ccid_id);
        if (ccid_ops->ccid_hc_rx_slab =3D=3D NULL)
@@ -112,6 +114,7 @@ static int ccid_activate(struct ccid_operations *cc=
id_ops)
        ccid_ops->ccid_hc_tx_slab =3D
                        ccid_kmem_cache_create(ccid_ops->ccid_hc_tx_obj=
_size,
                                               ccid_ops->ccid_hc_tx_sla=
b_name,
+
sizeof(ccid_ops->ccid_hc_tx_slab_name),
                                               "ccid%u_hc_tx_sock",
                                               ccid_ops->ccid_id);
        if (ccid_ops->ccid_hc_tx_slab =3D=3D NULL)

>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =C2=A0http://vger.kernel.org/majordomo-info.ht=
ml
> Please read the FAQ at =C2=A0http://www.tux.org/lkml/
>
