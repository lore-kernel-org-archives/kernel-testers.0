From: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13943] WARNING: at net/mac80211/mlme.c:2292 with ath5k
Date: Fri, 2 Oct 2009 09:12:48 +0200
Message-ID: <b637ec0b0910020012n57e110cbl180aa5bda318e5d5@mail.gmail.com>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera>
	 <COE24pZSBH.A.A5C.VOTxKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=DkOV1PrKHAV6ylvL2mEZdvwkYeGMu+M3HZKxJGleglg=;
        b=htI6sakuOLtVS4Xq4S4KGfM47ctMrTHxP83rS1VxepFR2M+nCgZN25KbxLuqnoRvdy
         1N3MRI+HAwyRAEsQHVZ0Ax3L0UNZZFPD2yyoraR/sn7LmQz2x3NXkop6GjcXZzw2Ioal
         2V/wKb2jM+ZS1/dSx69oS1FkPpSvrYzAwfN0E=
In-Reply-To: <COE24pZSBH.A.A5C.VOTxKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Luis R. Rodriguez" <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Hi.
I suppose this is still valid. I had to work around it by rfkill-ing
the device during the suspend process and reenabling at resume time.

I can try to reproduce it with 2.6.31.1 if you want it.

On Thu, Oct 1, 2009 at 9:55 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.30 and 2.6.31.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.30 and 2.6.31. =C2=A0Please verify if it still=
 should
> be listed and let me know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D13943
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : WARNING: at net/mac80211/mlme.c=
:2292 with ath5k
> Submitter =C2=A0 =C2=A0 =C2=A0 : Fabio Comolli <fabio.comolli@gmail.c=
om>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-08-06 20:15 (57 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D124958978600600&w=3D4
>
>
>
