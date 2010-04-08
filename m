From: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15619] Regression - Linux 2.6.34-rc1 - i915 - Render error 
	detected
Date: Thu, 8 Apr 2010 09:32:53 +0200
Message-ID: <w2vb637ec0b1004080032m12d2e9b7k5f0f2f4e49b68c7c@mail.gmail.com>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera>
	 <JVS2s9dmTsP.A.ttH.0tPvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:received:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=O0qC8frs5wpof26A/X3yrSZM3qIr1hTCzpAvgk1lX+M=;
        b=lTMI0+td9O6zyPlqfYxrTetNsfzwNWGbdc8Q8puvb+QTlAqOmFQ8qupL4OjceRExCT
         0hOYGMazsrzlBePMP/KL146JeLuP4CJTddVzeADFm9rHAMoEZ9lUMuLDnsmV5QOXCmgw
         CHbcA8DOhdDINL1wMoFFQckIK5vLKf6kxfP0o=
In-Reply-To: <JVS2s9dmTsP.A.ttH.0tPvLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

disappeared between -rc2 and -rc3

On Wed, Apr 7, 2010 at 11:13 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.33. =C2=A0Please verify if it still should be listed and let=
 the tracking team
> know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15619
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Regression - Linux 2.6.34-rc1 -=
 i915 - Render error detected
> Submitter =C2=A0 =C2=A0 =C2=A0 : Fabio Comolli <fabio.comolli@gmail.c=
om>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-03-17 21:58 (22 =
days old)
> Message-ID =C2=A0 =C2=A0 =C2=A0: <b637ec0b1003171458t524d168fiab52ce2=
b3431e3c9-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D126886311908558&w=3D2
>
>
>
