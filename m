From: =?utf-8?q?Old=C5=99ich_Jedli=C4=8Dka?= <oldium.pro-9Vj9tDbzfuSlVyrhU4qvOw@public.gmane.org>
Subject: Re: [Bug #28852] [KMS] radeon artifacts when switched to graphics during boot
Date: Sun, 13 Feb 2011 09:58:22 +0100
Message-ID: <201102130958.22668.oldium.pro@seznam.cz>
References: <NMZS1i37KEE.A.1eG.6_wVNB@chimera> <8H3lez1sawF.A.4jG.FAxVNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:sender:from:to:subject:date:user-agent:cc
         :references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:message-id;
        bh=L/VEWkdP6hKRkLn9mCvtoBnihNzObJeSp6Lk1s7k60A=;
        b=qDPVthq0d5AU5MzsXJ17yjdo33McgMnp+EL7LgpmE6xVCxbVs+ttz2muhG/QlUah0l
         XCvRViLsMM93ldGCQW9+Jo2tyX2vt1WwCW1nUwfGN4dc8s+l7TqcScDi5mXVh5VO07OO
         fPstd94fbqrFH8HxdqfhhyCF39kJHyQsYSMxo=
In-Reply-To: <8H3lez1sawF.A.4jG.FAxVNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Alex Deucher <alexdeucher-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sunday 13 February 2011 00:05:22 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.37.  Please verify if it still should be listed and let the
> tracking team know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D28852
> Subject		: [KMS] radeon artifacts when switched to graphics during bo=
ot
> Submitter	: Old=C5=99ich Jedli=C4=8Dka <oldium.pro-9Vj9tDbzfuSlVyrhU4qvOw@public.gmane.org>
> Date		: 2011-02-10 21:11 (3 days old)
> Handled-By	: Alex Deucher <alexdeucher-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Status update - some patches that fix the issue exist already, Alex is=20
investigating the best fix.

Oldrich.
