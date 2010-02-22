From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14943] nfs regression?
Date: Mon, 22 Feb 2010 10:13:18 +0800
Message-ID: <2375c9f91002211813m8f637c1g73c4314eab96f81e@mail.gmail.com>
References: <4u4d-2M3yXH.A.XW.XqagLB@chimera>
	 <wj3ZQZlk_KB.A.M6B.QsagLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=zmvwSoq5CqJTbIrsoHACRB2+5ppiYv4Xj/fkcjlZ5/Q=;
        b=sICMa8mKcFb5A6DAUDgsfRFOpJSAmCujF9rmvxcYt/9Hs6/4Eh9pslFWbJW56kldLF
         UvweJGoLkVA5sMsRProgpIFHZcZgYDsoyLFJKWgktSkhVpMpRcckyC2Ld/P95i9a94y5
         E06tZJD/rt6NB8hTAYRmIyO4yH2//d3q6Wlfo=
In-Reply-To: <wj3ZQZlk_KB.A.M6B.QsagLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Nikola Ciprich <extmaillist-Jp3n8lUXroTtwjQa/ONI9g@public.gmane.org>

On Mon, Feb 22, 2010 at 5:42 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =C2=A0Please verify if it still=
 should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D14943
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : nfs regression?
> Submitter =C2=A0 =C2=A0 =C2=A0 : Nikola Ciprich <extmaillist@linuxbox=
=2Ecz>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-12-28 12:10 (56 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D126200276223524&w=3D4
>

This seems that we missed checking XPT_DEAD too.

Nikola, does adding !test_bit(XPT_DEAD, &xprt->xpt_flags) in the same
place as commit b292cf9ce70d221c3f04f help?

Something like:

diff --git a/net/sunrpc/svc_xprt.c b/net/sunrpc/svc_xprt.c
index 7d1f9e9..7b66c7f 100644
--- a/net/sunrpc/svc_xprt.c
+++ b/net/sunrpc/svc_xprt.c
@@ -700,7 +700,8 @@ int svc_recv(struct svc_rqst *rqstp, long timeout)

        len =3D 0;
        if (test_bit(XPT_LISTENER, &xprt->xpt_flags) &&
-           !test_bit(XPT_CLOSE, &xprt->xpt_flags)) {
+           !test_bit(XPT_CLOSE, &xprt->xpt_flags) &&
+           !test_bit(XPT_DEAD, &xprt->xpt_flags)) {
                struct svc_xprt *newxpt;
                newxpt =3D xprt->xpt_ops->xpo_accept(xprt);
                if (newxpt) {
