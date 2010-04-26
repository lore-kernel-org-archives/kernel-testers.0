From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #15713] hackbench regression due to commit 9dfc6e68bfe6e
Date: Mon, 26 Apr 2010 13:09:21 +0300
Message-ID: <x2o84144f021004260309k9edf9e88t92e4c988d12de234@mail.gmail.com>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vjH.sRSzLB@tosh>
	 <alpine.DEB.2.00.1004221045270.1204@router.home>
	 <4BD086D0.9090309@cs.helsinki.fi>
	 <alpine.DEB.2.00.1004232214520.29018@melkki.cs.helsinki.fi>
	 <1272265147.2078.648.camel@ymzhang.sh.intel.com>
	 <i2m84144f021004260022nb58e3e27vd351d6646b99f265@mail.gmail.com>
	 <4BD564BE.6020700@kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:sender:received
         :in-reply-to:references:date:x-google-sender-auth:message-id:subject
         :from:to:cc:content-type:content-transfer-encoding;
        bh=MVypF8nKN/MOE94B5qczRlstc8X2g74HQjTyOQ3KPDE=;
        b=sYoih4Dw/5WWLCT4LIIWhp6FjFaI9l79U5scRFPwTtSoQOpFgvAiTcGDipVOlJjLfn
         PC8Pph6O2uR13xyxwHu8zF6SUdkF2RniPkBVBvmUq2gOObYGSGh/IqjpvVGGQ8sBGlEX
         D2w0PNPN+LI5RF77IeAYoxVs8lWceqZX0K6cA=
In-Reply-To: <4BD564BE.6020700-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Christoph Lameter <cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, tim.c.chen-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

Hi,

On Mon, Apr 26, 2010 at 9:59 AM, Zhang, Yanmin
<yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org> wrote:
>>>> I haven't been able to reproduce this either on my Core 2 machine.
>>> Mostly, the regression exists on Nehalem machines. I suspect it's r=
elated to
>>> hyper-threading machine.

On 04/26/2010 09:22 AM, Pekka Enberg wrote:
>> OK, so does anyone know why hyper-threading would change things for
>> the per-CPU allocator?

On Mon, Apr 26, 2010 at 1:02 PM, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:
> My wild speculation is that previously the cpu_slub structures of two
> neighboring threads ended up on the same cacheline by accident thanks
> to the back to back allocation. =A0W/ the percpu allocator, this no
> longer would happen as the allocator groups percpu data together
> per-cpu.

Yanmin, do we see a lot of remote frees for your hackbench run? IIRC,
it's the "deactivate_remote_frees" stat when CONFIG_SLAB_STATS is
enabled.

                        Pekka
