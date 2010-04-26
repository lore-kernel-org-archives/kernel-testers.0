From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #15713] hackbench regression due to commit 9dfc6e68bfe6e
Date: Mon, 26 Apr 2010 10:22:05 +0300
Message-ID: <i2m84144f021004260022nb58e3e27vd351d6646b99f265@mail.gmail.com>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vjH.sRSzLB@tosh>
	 <alpine.DEB.2.00.1004221045270.1204@router.home>
	 <4BD086D0.9090309@cs.helsinki.fi>
	 <alpine.DEB.2.00.1004232214520.29018@melkki.cs.helsinki.fi>
	 <1272265147.2078.648.camel@ymzhang.sh.intel.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:sender:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type;
        bh=3UzwGlAa+k1+7saQGxebXYnhxFpTpjtBt3DKL/GJd24=;
        b=OilNfoFop68s/pLBVbDMLJPHNVaE8xO7S//Aogh8FuPAu9vXFzvRtbsq0EbAi0nkcs
         vrbneaknI+n2TDD0jyc3j+02xpPDxndIpVC1uF1uJP8er+ijxTTWG+qGDGMQQi9P3eFS
         I0qafVJn2hZi5Ep4cljRcLbPZhuJ0k1FURhRc=
In-Reply-To: <1272265147.2078.648.camel-sz7BYL/Y5Hu/P+R7jlPCFVaTQe2KTcn/@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Cc: Christoph Lameter <cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, tim.c.chen-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

Hi Yanmin,

On Mon, Apr 26, 2010 at 9:59 AM, Zhang, Yanmin
<yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org> wrote:
>> I haven't been able to reproduce this either on my Core 2 machine.
> Mostly, the regression exists on Nehalem machines. I suspect it's related to
> hyper-threading machine.

OK, so does anyone know why hyper-threading would change things for
the per-CPU allocator?

>> Yanmin, does something like this help on your machines?
> A quick testing doesn't show any help.

So it's unlikely to be false sharing, I suppose.

> I did a new testing. After the machine boots, I hot remove 8 hyper-threading cpu
> which means last 8 are just cores. The regression between 2.6.33 and 2.6.34-rc becomes
> small.
>
> My opinion is we needn't revert the patch, but still keep an eye on it when testing other
> new RC kernel releases. One reason is volanoMark and netperf have no such regression.
> Is it ok?

We need to get this fixed. In my experience, it's pretty common that
slab regressions pop up only in one or few benchmarks. The problem is
likely to pop up in some real-world workload where it's even more
difficult to track down because basic CPU profiles don't pin-point the
problem.

Do we have some Intel CPU expert hanging around here that could
enlighten me of the effects of hyper-threading on CPU caching? I also
wonder why it's showing up with the new per-CPU allocator and not with
the homebrewn one we had in SLUB previously.

                        Pekka
