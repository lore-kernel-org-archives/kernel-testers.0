From: "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12574] possible circular locking dependency detected
Date: Wed, 4 Mar 2009 00:19:30 +0200
Message-ID: <8f53421d0903031419m493b88bbifa911323279f4f0b@mail.gmail.com>
References: <KiHv0irKPzE.A.l3.hUarJB@chimera>
	 <SLCXkuHtxAO.A.LtE.VWarJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=WtO0Mvcvu3/XUAtdrGySDzcUwm7Gj7NYyEo3zRI+VWk=;
        b=fs3cYpTirg/EQ2ot+gbZU3eBFl0+ogIM58p3cMPPl24eOTrnfp8MLsd7ZVUjvEnxWv
         ITr01lKjLrm/DlTqnZ0Rnz1kMGqJnxWy390pXfQZfjfNEgoYPAddJaJjXp7z1sdl9aFI
         bsoNoWdLbfCVucTZO7hIT58l8kYxgOdfCW8fY=
In-Reply-To: <SLCXkuHtxAO.A.LtE.VWarJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, Mar 3, 2009 at 9:25 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28. =A0Please verify if it still should be listed and let me=
 know
> (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
12574
> Subject =A0 =A0 =A0 =A0 : possible circular locking dependency detect=
ed
> Submitter =A0 =A0 =A0 : Michael S. Tsirkin <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-01-29 11:35 (34 days old)
> References =A0 =A0 =A0: http://lkml.org/lkml/2009/2/9/205
>
>
>

I don't seem to observe this warning in v2.6.29-rc6 anymore.
