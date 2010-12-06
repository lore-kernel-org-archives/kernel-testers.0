From: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #19392] WARNING: at drivers/net/wireless/ath/ath5k/base.c:3475
 ath5k_bss_info_changed+0x44/0x168 [ath5k]()
Date: Sun, 5 Dec 2010 22:33:26 -0800
Message-ID: <AANLkTinFKcs+SzEfviPxm893k-vuzbXAh57XN_oOm7q9@mail.gmail.com>
References: <jyQ21do2hOF.A.qwD.m_--MB@chimera>
	<z3LGq_ncuOB.A.huF.kB_-MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=eO9dWS3oycxaG1AAS94Lw0vwd9EinXHkCcMqQweVMM4=;
        b=YZZq5hOLCPdDzh4dyQ/u0lmUEvAHGFZmh14C0bhmi41XLpyLwgqBcCNC8k2Q1ruRhJ
         EFBDW5qrtQbXkap74s8TljcN03ImiRy9IXm8W1/qUQV0GbTfJSLBZHhGiaYY0F7PFcXI
         t8XUVQ4gflp8naz8UJnuyS2FMyup+DIrqMr+U=
In-Reply-To: <z3LGq_ncuOB.A.huF.kB_-MB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dominik Brodowski <linux-X3ehHDuj6sIIGcDfoQAp7OTW4wlIGRCZ@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On Sun, Dec 5, 2010 at 12:34 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.35 and 2.6.36.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.35 and 2.6.36. =A0Please verify if it still sh=
ould
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
19392
> Subject =A0 =A0 =A0 =A0 : WARNING: at drivers/net/wireless/ath/ath5k/=
base.c:3475 ath5k_bss_info_changed+0x44/0x168 [ath5k]()
> Submitter =A0 =A0 =A0 : Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-09-28 22:30 (69 days old)
> Message-ID =A0 =A0 =A0: <<AANLkTim5WCGKPvEkOkO_YnMF9pg8mvLfQoFBNUFpfa=
_k@mail.gmail.com>>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D128571=
307018635&w=3D2
>
>
>

still here with the latest Mainline..

--=20
Justin P. Mattock
