From: Dirk Gouders <gouders-UkMx63StcVObyvKg4uJg4nF3/sHOsa9/WV23jfQ1LcY@public.gmane.org>
Subject: Re: [Bug #37472] Lenovo U160 (i915 black screen)
Date: Mon, 27 Jun 2011 09:14:17 +0200
Message-ID: <giy60nn3ue.fsf@mx10.gouders.net>
References: <fvHbBUhG0PD.A.IGE.HM7BOB@chimera>
	<Rm1pgFxEGUF.A.YXE.hM7BOB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=et.bocholt.fh-gelsenkirchen.de; s=et; t=1309158859;
	bh=Gb3pTTkKaSlI45Qy0PYhGJH4rLM/wVe0lY3cydMCsRw=;
	h=From:Subject:In-Reply-To:References:Date:Message-ID:MIME-Version:
	 Content-Type;
	b=nMJulutmnc8sHcLiu1k4J0TdrgIopPkUTa7XYUwRnvUyPrGyiLEN99m2HHRoyelLD
	 ydUNzaxaLhhTFSFDugECbGqXlSdHkoy4BwHTGcP1l7XbF9QfT0CBv47GUOQmSmjL6W
	 O0tsbe1xXpkiA//n6IQtSIQgjxHJlFkCaNHgh6PI=
In-Reply-To: <Rm1pgFxEGUF.A.YXE.hM7BOB@chimera> (Rafael J. Wysocki's message
	of "Mon, 27 Jun 2011 00:35:14 +0200 (CEST)")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Robse <rob-se-Dz115AEZgoU@public.gmane.org>


> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39.  Please verify if it still should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=37472
> Subject		: Lenovo U160 (i915 black screen)
> Submitter	: Robse <rob-se-Dz115AEZgoU@public.gmane.org>
> Date		: 2011-06-14 15:17 (13 days old)

This sounds like a problem, I was discussing with Jesse Barnes, some
days ago[1].  For me, the usage of the kernel parameter
'i915.lvds_use_ssc=0' serves as a useful workaround.

Perhaps, Robse will try that option and document it in the Bug-Entry if
it also works for him.

Dirk

[1] https://lkml.org/lkml/2011/5/31/387
