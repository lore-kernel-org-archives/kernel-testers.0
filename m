From: Eric Dumazet <eric.dumazet-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #33842] NULL pointer dereference in ip_fragment
Date: Sun, 12 Jun 2011 23:59:52 +0200
Message-ID: <1307915992.2872.170.camel@edumazet-laptop>
References: <9NVbY1BZ_5D.A.2lE.jzS9NB@chimera>
	 <kTLfM29CaqB.A.K5F.f1S9NB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:subject:from:to:cc:in-reply-to:references
         :content-type:date:message-id:mime-version:x-mailer
         :content-transfer-encoding;
        bh=gHKFZtdp0p8daqP/1Tt16XTZoGvwQ1FJq5iLDQEoL4c=;
        b=pW2OtSUng74w0IJhhgSfB5Atd+PPLmwHcEyi0yR/iZwZfNM5MHYHHnu+OU9NuTQG7g
         QPRtYDbsyp3UvoA5zFJDibli9ZbfngGxlQeLyX4LgnNnq4ka3uLSnP+dMSZm5KOOLgjh
         B/tLY1IjWMMsNP+f3BmtAGPGYL8sEoKChMYCc=
In-Reply-To: <kTLfM29CaqB.A.K5F.f1S9NB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Tomas Carnecky <tom-ix/z9KG6G0Jl57MIdRCFDg@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

Le dimanche 12 juin 2011 =C3=A0 23:12 +0200, Rafael J. Wysocki a =C3=A9=
crit :
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39.  Please verify if it still shou=
ld
> be listed and let the tracking team know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D33842
> Subject		: NULL pointer dereference in ip_fragment
> Submitter	: Tomas Carnecky <tom-ix/z9KG6G0Jl57MIdRCFDg@public.gmane.org>
> Date		: 2011-04-23 07:51 (51 days old)
>=20
>=20

This is probably fixed in current linux-2.6 tree, and 2.6.39.1 as well


If not, maybe commit 64f3b9e203b (ip_expire() must revalidate route)
needs to be included in 2.6.39.X

(I believe Greg took it for 2.6.38, but cant find it in 2.6.39 ?)


