From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #14011] Kernel paging request failed in kmem_cache_alloc
Date: Wed, 26 Aug 2009 09:17:09 +0300
Message-ID: <84144f020908252317j202aa459u27c40eed34debd6@mail.gmail.com>
References: <riPp5fx5ECC.A.2IG.qsGlKB@chimera>
	 <_yaHeGjHEzG.A.2bH.CtGlKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=sE6X6C52fgXH80CHhlM/tWLwS7dlgTswI6s5rmRpd3U=;
        b=MZddIdVFT5lJtY8E6CFsuXkj2djoKRKQXXtejY4OZsdWVsu6whHI8SZNJpj2xmrCxZ
         5UoxG69nDoidVsX7WmQQdEmN0K0i8m0d7J3LYesZsGEOlmg8hQp4Jwubs4iaJmSyLLSw
         N9jrVbOG8Ael9lWG4kDvK1miv2wWAv1H4e4Ok=
In-Reply-To: <_yaHeGjHEzG.A.2bH.CtGlKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Matthias Dahl <ml_kernel-Rk1lLwyeSiSCvTm3UDtA3g@public.gmane.org>

Hi Matthias,

On Tue, Aug 25, 2009 at 11:34 PM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14011
> Subject =A0 =A0 =A0 =A0 : Kernel paging request failed in kmem_cache_=
alloc
> Submitter =A0 =A0 =A0 : Matthias Dahl <ml_kernel-Rk1lLwyeSiSCvTm3UDtA3g@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-08-10 22:26 (16 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124993=
603825082&w=3D4

Can you reproduce the bug without the proprietary nvidia module that
seems to be loaded?

                                        Pekka
