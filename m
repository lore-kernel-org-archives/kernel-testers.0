From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #14011] Kernel paging request failed in kmem_cache_alloc
Date: Wed, 26 Aug 2009 17:59:30 +0300
Message-ID: <84144f020908260759q6554971dva6cc89a0ad9821b@mail.gmail.com>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	 <_yaHeGjHEzG.A.2bH.CtGlKB@chimera>
	 <84144f020908252317j202aa459u27c40eed34debd6@mail.gmail.com>
	 <200908261601.05734.ml_kernel@mortal-soul.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=5qPgRpcu7+ttzTy7FykaeW37kQzG3fZDRR9JtTyas6Y=;
        b=AfwG0AijrSZfgqBV9gy5pAeDd0H0UGy133CY3rXPxWuIeqd1XDOVO7S6chG3Vxknav
         3fxh5p/E8lz1GzqqN3RujoXW3n4Vyqn8Jd3RSniW4boz6bPaQGTGjJ0lhoTXsTe6y8ss
         aeX0pdoEFRQy4J2svDuceK7o++yB76ftqB43M=
In-Reply-To: <200908261601.05734.ml_kernel-Rk1lLwyeSiSCvTm3UDtA3g@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Matthias Dahl <ml_kernel-Rk1lLwyeSiSCvTm3UDtA3g@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Wed, Aug 26, 2009 at 5:01 PM, Matthias Dahl<ml_kernel-Rk1lLwyeSiSCvTm3UDtA3g@public.gmane.org> wrote:
>> Can you reproduce the bug without the proprietary nvidia module that
>> seems to be loaded?
>
> I am sorry but I forgot to test that and right now I am not very keen on
> trying again since this is my primary machine and I had quite some fs
> corruption (ext4 on md raid5 -> no barriers) the last times. :-( But this also
> happened w/o Xorg ever being run during that session (though naturally the
> nvidia kernel module was still loaded).

Sure, I can understand that. The bug looks like regular slab
corruption which could have been caused the nvidia blob. So I think
the issue should be closed unless someone can reproduce it without the
blob.

That said, sys_inotify_add_watch() also appears in the trace and
there's been quite a few bug fixes in that area recently so I guess we
should CC Eric Paris just in case the oops rings a bell to him.

                        Pekka
