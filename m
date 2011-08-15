From: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #38612] Boot time warnings in APIC
Date: Mon, 15 Aug 2011 09:12:12 +0300
Message-ID: <CAOJsxLEF6sSibtTGa+un_4eDLHMniFyAkSOUtHYpmFtPTbEKiA@mail.gmail.com>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
	<bkwpSnItbJM.A.iJB.HOCSOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:sender:in-reply-to:references:date
         :x-google-sender-auth:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=6XuF8F18lA/g1NHcqP6GUdDoNdu8oJdDynxEuTyZJlc=;
        b=PeBc0Ew8Aj3M3u5Ptcvwpz+1hE8WlEsWzkPAXIS2AnSEyjLvb9Id/12uWGaHMNmQEE
         vpMmpCqWCSEMSpKHyhsqh46LuwCEH6ugMBVxAayGS/59rA62fPpvDmhQd2Ir0kjwCr6j
         vv1qMDoOvATex6wPNV2/53LFFHtZKX8V+P41k=
In-Reply-To: <bkwpSnItbJM.A.iJB.HOCSOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Bill Huey <bill.huey-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Sun, Aug 14, 2011 at 10:07 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.39 and 3.0.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.39 and 3.0. =A0Please verify if it still shoul=
d
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
38612
> Subject =A0 =A0 =A0 =A0 : Boot time warnings in APIC
> Submitter =A0 =A0 =A0 : Bill Huey <bill.huey-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-07-01 06:44 (45 days old)

Even if you suspect hardware problems, it's best to CC maintainers.
It's unfortunate that you didn't include full dmesg because there
might have been more clues on what's going on.
