From: Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16054] UML broken for CONFIG_SLAB
Date: Wed, 23 Jun 2010 18:28:18 -0400
Message-ID: <AANLkTintzv8areadp7DJO5qdq_V6ZdTmZb5MNnCWzzDs__39784.4041152441$1277332125$gmane$org@mail.gmail.com>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
	<rHrHQMIU4rI.A.h6.rapHMB@chimera>
	<AANLkTiks4DUvSLQLHb1Tr6cO_Mma-9UcDRqJ5uafdt1R@mail.gmail.com>
	<20100621063552.GA16491@liondog.tnic>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:content-type;
        bh=7EfIV6zrXp7suKlPOMjHTb3d82Bt1A4tEaxpgIzQ5po=;
        b=ubyiBMtgOa049EVQav0i5FtgMoLSOloy40aJYzEzBjfEzhF2PcnafkYSYSh8mR8Oqt
         D4Rz2BVS5PO78VeFYLCs9oK37gsEe+psjBJMCZwoaatluiHI/F2Zse160CCvV2VRA9sQ
         qGl+44qStVRwMNHkh+JQBB4a3pmtphzho7Zto=
In-Reply-To: <20100621063552.GA16491-f9CnO7I+Q6zU6FkGJEIX5A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Borislav Petkov <bp-Gina5bIWoIWzQB+pC5nmwQ@public.gmane.org>, Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux->

On Mon, Jun 21, 2010 at 2:35 AM, Borislav Petkov <bp-Gina5bIWoIWzQB+pC5nmwQ@public.gmane.org> wrote:
> From: Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date: Sun, Jun 20, 2010 at 06:48:55PM -0400

> make mrproper
>
> and just to make sure no arch_hweight stuff is left, do
>
> grep -EriIn 'x86.*hweight\.h' arch/um/
>
> You shouldn't be getting any matches. If you do, than try to find out
> why you do because all those intermediary *.o.cmd files shouldn't
> contain any hweight-include files from arch/x86/.
>

Ok. That solves the cfq related crash due to hweight stuff. However
the second issue - UM is broken for CONFIG_SLAB still exists.
So I think we can keep the bug open.

Thanks

Parag
