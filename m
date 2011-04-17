From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #29852] 2.6.38-rc5: nfsd: page allocation failure. spinlock
 trylock failure on UP
Date: Sun, 17 Apr 2011 23:46:57 +0400
Message-ID: <BANLkTimGFqP7q845+zYnyjcO0PvoBGX_qg@mail.gmail.com>
References: <sam8u5dLkaB.A.afE.53uqNB@chimera>
	<IqJL5EkbqD.A.lyF.a5uqNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Qrx/fQF77G39NKxPxH6nLzq+pEtmCfxqwhawCl00X7o=;
        b=MTSh5xwxiabETNjzCgFM59FVfTtoV3RcwaqJq86H8d7vzW9FD3UKtp6loGWBvGm/XO
         iDcQmzCApPxRtcDwMnBIXGgO1SL6iwGOhbEYg/xJUMgl6+RKryoshizsWe8GC56WRmCH
         xPfhcMIC7v7f76rNV2XHYSQDiUUekKr+gYh/U=
In-Reply-To: <IqJL5EkbqD.A.lyF.a5uqNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On 17 April 2011 17:52, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.37 and 2.6.38.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.37 and 2.6.38. =C2=A0Please verify if it still=
 should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D29852
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : 2.6.38-rc5: nfsd: page allocati=
on failure. spinlock trylock failure on UP
> Submitter =C2=A0 =C2=A0 =C2=A0 : Alexander Beregalov <a.beregalov@gma=
il.com>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2011-02-21 20:33 (56 =
days old)
> Message-ID =C2=A0 =C2=A0 =C2=A0: <AANLkTi=3D14N_c_B7mLY0H8Dt8pte6C0mj=
=46nVuC37e44Hs-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-netdev&m=
=3D129832042402668&w=3D2
>

Hi, Rafael.
I do not see the problem since that time.
Is it enough reason for closing it?
