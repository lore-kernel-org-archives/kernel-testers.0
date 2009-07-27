From: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13475] suspend/hibernate lockdep warning
Date: Mon, 27 Jul 2009 09:59:22 +0800
Message-ID: <a8e1da0907261859t3ca96850oc05b2c2b96169321@mail.gmail.com>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera>
	 <H5-1lZIIeYK.A.0KH.4XObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=7Z4QkHhAJ/kLvh6pjKAIyZyj1x6yOEF/CIuTrIGe0Lc=;
        b=YZbGV/7O5DD67M3dp83zl0l8Dw73+1x5tzet3Wcgi/d8SUr/MfAK0oToyJzU2JSQpR
         4BJXcVfPlN1XDVD5MchCd6a8lMCSgG1bo502dBpctdUY4HamB2gTRP8/18z3sevn16K9
         sfjPSHqZzfNGUmdFGQbwYtlnX3jPtASYMFMkc=
In-Reply-To: <H5-1lZIIeYK.A.0KH.4XObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>

On Mon, Jul 27, 2009 at 4:45 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30. =C2=A0Please verify if it still=
 should
> be listed and let me know (either way).

It has been fixed, at least I did not see it in recent rc4 kernel.

>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D13475
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : suspend/hibernate lockdep warni=
ng
> Submitter =C2=A0 =C2=A0 =C2=A0 : Dave Young <hidave.darkstar-Re5JQEeQqe8@public.gmane.org=
m>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-06-02 10:00 (55 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D124393723321241&w=3D4
> Handled-By =C2=A0 =C2=A0 =C2=A0: Mathieu Desnoyers <mathieu.desnoyers=
@polymtl.ca>
> Patch =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : http://patchwork.kernel.or=
g/patch/28660/
>
>
>



--=20
Regards
dave
