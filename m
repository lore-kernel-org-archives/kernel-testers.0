From: Justin Mattock <justinmattock@gmail.com>
Subject: Re: [Bug #19392] WARNING: at drivers/net/wireless/ath/ath5k/base.c:3475
 ath5k_bss_info_changed+0x44/0x168 [ath5k]()
Date: Sun, 19 Dec 2010 23:25:06 -0800
Message-ID: <AANLkTi=ApxE76PPOPjGPQCrO+YCwSQdCtpqAjUzYpiRa@mail.gmail.com>
References: <ZRNlsjykcOD.A.b-F.20fDNB@chimera>
	<xqq2Z3iR9HJ.A.9lH.p2fDNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=0dpSwZk/XMpSJTQYF5gLavRSOjw2k//3atiyYYKzgJ4=;
        b=c0NDSnADXJpzEIiQLxtv6gjMwzRjNOETmTb7f18eCOynq8Iit1WDQsq+QbFo4Vrtnb
         8KfXPH4jqv1qbq8cpnruO4tL4tgPRxkGIwF7ndwM+r8HCG8LbEQmIPZXyLfVyLlauEky
         IHPF59CTsxdjssUU3sypEFf+iQbrdDWfcTtT4=
In-Reply-To: <xqq2Z3iR9HJ.A.9lH.p2fDNB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Dominik Brodowski <linux@dominikbrodowski.net>, Johannes Berg <johannes@sipsolutions.net>

On Sun, Dec 19, 2010 at 4:50 AM, Rafael J. Wysocki <rjw@sisk.pl> wrote:
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
> Submitter =A0 =A0 =A0 : Justin Mattock <justinmattock@gmail.com>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-09-28 22:30 (83 days old)
> Message-ID =A0 =A0 =A0: <<AANLkTim5WCGKPvEkOkO_YnMF9pg8mvLfQoFBNUFpfa=
_k@mail.gmail.com>>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D128571=
307018635&w=3D2
>
>
>

yep.. still here with the latest Mainline

--=20
Justin P. Mattock
