From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #14657] perf subsystem breakage in 2.6.32-rc7
Date: Wed, 27 Jan 2010 14:41:39 +0200
Message-ID: <84144f021001270441t75441bebpc605ac8c0cfedbd1@mail.gmail.com>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
	 <q60Z28d_9yH.A._eB.HbMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:sender:received:in-reply-to
         :references:date:x-google-sender-auth:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=yD74wDu7fasZaxStvexGoK8QbK0ftcQCPAyJLo2n8ts=;
        b=In3NWsLmYKo3/lbx0jnEFGgNsBCGfYpo24J9pwxB2UPjQLJafBhjXgkpyI2tRre+ad
         FnrTzlnGUkl7m47VC9xkL9GO1C3RCWVCU8/oiBXNhJvTS/rSXzQnoUu4aC/ZifBKJBdQ
         YVJolS0+IbZtcYSE5OLslpu5UE5x1avzXKJAM=
In-Reply-To: <q60Z28d_9yH.A._eB.HbMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Arnaldo Carvalho de Melo <acme-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

(I am CC'ing some more perf folks.)

On Mon, Jan 25, 2010 at 12:22 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =A0Please verify if it still sh=
ould
> be listed and let me know (either way).
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14657
> Subject =A0 =A0 =A0 =A0 : perf subsystem breakage in 2.6.32-rc7
> Submitter =A0 =A0 =A0 : Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-11-19 19:50 (67 days old)
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D125866=
013419738&w=3D4

Is this bug still valid?
