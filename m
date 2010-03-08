From: Nikola Ciprich <extmaillist-Jp3n8lUXroTtwjQa/ONI9g@public.gmane.org>
Subject: Re: [Bug #14943] nfs regression?
Date: Mon, 8 Mar 2010 21:21:10 +0100
Message-ID: <20100308202110.GA4731@nik-comp.linuxbox.cz>
References: <4u4d-2M3yXH.A.XW.XqagLB@chimera>
 <wj3ZQZlk_KB.A.M6B.QsagLB@chimera>
 <2375c9f91002211813m8f637c1g73c4314eab96f81e@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <2375c9f91002211813m8f637c1g73c4314eab96f81e-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: =?iso-8859-1?Q?Am=E9rico?= Wang <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, nikola.ciprich-Jp3n8lUXroTtwjQa/ONI9g@public.gmane.org

YES!
seems like 2.6.32.8 with your patch included finally doesn't
spit any backtraces and peername failed errors!
will You push this upstream + to stable?
thanks a lot for Your help!
have a nice day
with best regards
nik

> This seems that we missed checking XPT_DEAD too.
> 
> Nikola, does adding !test_bit(XPT_DEAD, &xprt->xpt_flags) in the same
> place as commit b292cf9ce70d221c3f04f help?
> 
> Something like:
> 
> diff --git a/net/sunrpc/svc_xprt.c b/net/sunrpc/svc_xprt.c
> index 7d1f9e9..7b66c7f 100644
> --- a/net/sunrpc/svc_xprt.c
> +++ b/net/sunrpc/svc_xprt.c
> @@ -700,7 +700,8 @@ int svc_recv(struct svc_rqst *rqstp, long timeout)
> 
>         len = 0;
>         if (test_bit(XPT_LISTENER, &xprt->xpt_flags) &&
> -           !test_bit(XPT_CLOSE, &xprt->xpt_flags)) {
> +           !test_bit(XPT_CLOSE, &xprt->xpt_flags) &&
> +           !test_bit(XPT_DEAD, &xprt->xpt_flags)) {
>                 struct svc_xprt *newxpt;
>                 newxpt = xprt->xpt_ops->xpo_accept(xprt);
>                 if (newxpt) {
> 

-- 
-------------------------------------
Nikola CIPRICH
LinuxBox.cz, s.r.o.
28. rijna 168, 709 01 Ostrava

tel.:   +420 596 603 142
fax:    +420 596 621 273
mobil:  +420 777 093 799

www.linuxbox.cz

mobil servis: +420 737 238 656
email servis: servis-Jp3n8lUXroTtwjQa/ONI9g@public.gmane.org
-------------------------------------
